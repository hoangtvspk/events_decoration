import 'package:dio/dio.dart';
import 'dart:async';
import 'package:bui_bloc/core/storage/secure_storage.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';

// Class to handle retry requests
class RetryRequest {
  final RequestOptions requestOptions;
  final Completer<Response> completer;

  RetryRequest(this.requestOptions, this.completer);
}

class DioInterceptors {
  final Dio _dio;
  final SecureStorage _secureStorage;
  final GlobalKey<NavigatorState> _navigatorKey;
  String? _accessToken;
  String? _refreshToken;
  bool _isInitialized = false;
  bool _isRefreshing = false;
  final List<RetryRequest> _pendingRequests = [];

  DioInterceptors(this._dio, this._secureStorage, this._navigatorKey);

  Future<void> init() async {
    await _initializeTokens();
    _setupInterceptors();
  }

  Future<void> _initializeTokens() async {
    try {
      _accessToken = await _secureStorage.readAccessToken();
      _refreshToken = await _secureStorage.readRefreshToken();
      _isInitialized = true;
    } catch (e) {
      debugPrint('Error initializing tokens: $e');
      _isInitialized = true;
    }
  }

  Future<void> setTokens({String? accessToken, String? refreshToken}) async {
    _accessToken = accessToken;
    _refreshToken = refreshToken;

    if (accessToken != null) {
      await _secureStorage.writeAccessToken(accessToken);
    }
    if (refreshToken != null) {
      await _secureStorage.writeRefreshToken(refreshToken);
    }
  }

  Future<void> resetTokens() async {
    _accessToken = null;
    _refreshToken = null;
    await _secureStorage.deleteAccessToken();
    await _secureStorage.deleteRefreshToken();
  }

  Future<Response> _retryRequest(RequestOptions options) async {
    return await _dio.request(
      options.path,
      data: options.data,
      queryParameters: options.queryParameters,
      options: Options(
        method: options.method,
        headers: {
          'Authorization': 'Bearer $_accessToken',
          ...options.headers,
        },
      ),
    );
  }

  Future<void> _processPendingRequests() async {
    final requests = [..._pendingRequests];
    _pendingRequests.clear();

    for (final request in requests) {
      try {
        final response = await _retryRequest(request.requestOptions);
        request.completer.complete(response);
      } catch (e) {
        request.completer.completeError(e);
      }
    }
  }

  Future<Response> _handleTokenRefresh(
      DioException error, ErrorInterceptorHandler handler) async {
    final options = error.requestOptions;

    if (_isRefreshing) {
      try {
        final completer = Completer<Response>();
        _pendingRequests.add(RetryRequest(options, completer));
        return await completer.future;
      } catch (e) {
        throw error;
      }
    }

    _isRefreshing = true;

    try {
      await _refreshTokenAndUpdateStorage();
      final response = await _retryRequest(options);
      _isRefreshing = false;

      if (_pendingRequests.isNotEmpty) {
        _processPendingRequests();
      }

      return response;
    } catch (e) {
      _isRefreshing = false;
      await _handleRefreshFailure();
      throw error;
    }
  }

  Future<void> _refreshTokenAndUpdateStorage() async {
    if (_refreshToken == null) {
      throw Exception('Login session expired');
    }

    // final authRepository = AuthRepository();
    // await authRepository.refreshToken();

    _accessToken = await _secureStorage.readAccessToken();
    if (_accessToken == null) {
      throw Exception('Login session expired');
    }
  }

  Future<void> _handleRefreshFailure() async {
    await resetTokens();

    for (final request in _pendingRequests) {
      request.completer.completeError(
        DioException(
          requestOptions: request.requestOptions,
          error: 'Login session expired',
          type: DioExceptionType.unknown,
        ),
      );
    }
    _pendingRequests.clear();

    if (_navigatorKey.currentContext != null) {
      GoRouter.of(_navigatorKey.currentContext!).go('/');
    }
  }

  void _setupInterceptors() {
    _dio.interceptors.clear();
    _dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) async {
          if (!_isInitialized) {
            await Future.delayed(const Duration(milliseconds: 100));
            if (!_isInitialized) {
              return handler.reject(
                DioException(
                  requestOptions: options,
                  error: 'DioClient not initialized',
                ),
              );
            }
          }

          if (_accessToken != null) {
            // print('accessToken: $_accessToken');
            options.headers['Authorization'] = 'Bearer $_accessToken';
          }
          if (!options.headers.containsKey('Content-Type')) {
            options.headers['Content-Type'] = 'application/json';
          }
          options.headers['Accept'] = 'application/json';
          return handler.next(options);
        },
        onResponse: (response, handler) {
          return handler.next(response);
        },
        onError: (DioException error, handler) async {
          if (error.response?.statusCode == 401) {
            try {
              final response = await _handleTokenRefresh(error, handler);
              return handler.resolve(response);
            } catch (e) {
              debugPrint('Token refresh failed: $e');
              return handler.reject(error);
            }
          }

          switch (error.response?.statusCode) {
            case 403:
              debugPrint('Forbidden error: ${error.response?.data}');
              break;
            case 404:
              debugPrint('Not found error: ${error.response?.data}');
              break;
            case 500:
              debugPrint('Server error: ${error.response?.data}');
              break;
            default:
              debugPrint('Other error status: ${error.response?.statusCode}');
              debugPrint('Error data: ${error.response?.data}');
          }
          debugPrint('=== End DioInterceptor Error ===');
          return handler.next(error);
        },
      ),
    );

    // Add logging interceptor for debugging
    // _dio.interceptors.add(LogInterceptor(
    //   requestBody: true,
    //   responseBody: true,
    //   requestHeader: true,
    //   responseHeader: true,
    //   error: true,
    // ));
  }
}
