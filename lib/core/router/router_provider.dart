import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../ui/home/home_page.dart';
import '../../ui/shared/controller/auth/providers.dart';
import '../../ui/shared/controller/auth/states.dart';

part 'router_provider.g.dart';

@riverpod
GoRouter routerConfig(RouterConfigRef ref) {
  final authStateNotifier = ValueNotifier<AuthState>(AuthState());
  ref
    ..onDispose(authStateNotifier.dispose)
    ..listen(authProvider, (_, next) {
      authStateNotifier.value = next;
    });

  return GoRouter(
    refreshListenable: authStateNotifier,
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const HomePage(),
      ),
      // GoRoute(
      //   path: '/login',
      //   builder: (context, state) => const LoginPage(),
      // ),
    ],
    redirect: (context, state) {
      return null;
    },
  );
}
