import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:go_router/go_router.dart';
import 'package:bui_bloc/features/home/presentation/screens/home_screen.dart';

import '../network/dio_client.dart';

GoRouter router = GoRouter(
  navigatorKey: navigatorKey,
  initialLocation: '/',
  debugLogDiagnostics: true,
  errorBuilder: (context, state) => Scaffold(
    body: Center(
      child: Text('Error: ${state.error}'),
    ),
  ),
  redirect: (BuildContext context, GoRouterState state) async {
    // Only remove splash screen on mobile platforms (iOS/Android)
    // On web, splash screen is handled differently
    if (!kIsWeb) {
      try {
        FlutterNativeSplash.remove();
      } catch (e) {
        // Silently handle any errors removing splash screen
        debugPrint('Error removing splash screen: $e');
      }
    }

    // Handle deep links with custom scheme

    if (state.path == '/') {
      return '/';
    }

    return null;
  },
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomeScreen(),
    ),
  ],
);
