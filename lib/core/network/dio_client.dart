import 'dart:async';

import 'package:bui_bloc/core/config/env_config.dart';
import 'package:bui_bloc/core/network/dio_interceptors.dart';
import 'package:bui_bloc/core/storage/secure_storage.dart';
import 'package:dio/dio.dart';
import 'package:dio_cache_interceptor/dio_cache_interceptor.dart';
import 'package:flutter/material.dart';

// Global navigator key
final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

class DioClient {
  static DioClient? _instance;
  final Dio _dio;
  final SecureStorage _secureStorage = SecureStorage();
  late final DioInterceptors _interceptors;

  // Private constructor
  DioClient._internal(this._dio) {
    _interceptors = DioInterceptors(_dio, _secureStorage, navigatorKey);
    _init();
  }

  Future<void> _init() async {
    await _interceptors.init();
  }

  // Factory constructor to return the same instance
  factory DioClient() {
    _instance ??= DioClient._internal(
      Dio(
        BaseOptions(
          baseUrl: EnvConfig.baseUrl,
          connectTimeout: const Duration(seconds: 30),
          receiveTimeout: const Duration(seconds: 30),
          sendTimeout: const Duration(seconds: 30),
          validateStatus: (status) {
            return status != null &&
                (status >= 200 && status < 300 || status == 304);
          },
        ),
      ),
    );
    return _instance!;
  }

  // Methods to update tokens
  Future<void> setTokens({String? accessToken, String? refreshToken}) async {
    await _interceptors.setTokens(
      accessToken: accessToken,
      refreshToken: refreshToken,
    );
  }

  Future<void> resetTokens() async {
    await _interceptors.resetTokens();
  }

  static final options = CacheOptions(
    store: MemCacheStore(),
    policy: CachePolicy.request,
    hitCacheOnErrorCodes: [500],
    hitCacheOnNetworkFailure: true,
    maxStale: const Duration(days: 7),
    priority: CachePriority.normal,
    cipher: null,
    keyBuilder: CacheOptions.defaultCacheKeyBuilder,
    allowPostMethod: false,
  );

  // Expose Dio methods
  Future<Response<T>> get<T>(
    String path, {
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
  }) async {
    return _dio.get(
      path,
      queryParameters: queryParameters,
      options: options,
      cancelToken: cancelToken,
      onReceiveProgress: onReceiveProgress,
    );
  }

  Future<Response<T>> post<T>(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) {
    return _dio.post(
      path,
      data: data,
      queryParameters: queryParameters,
      options: options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );
  }

  Future<Response> put(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    return await _dio.put(
      path,
      data: data,
      queryParameters: queryParameters,
      options: options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );
  }

  Future<Response> delete(String path, {dynamic data}) async {
    return await _dio.delete(path, data: data);
  }

  Future<Response> patch(String path, {dynamic data}) async {
    return await _dio.patch(path, data: data);
  }
}
