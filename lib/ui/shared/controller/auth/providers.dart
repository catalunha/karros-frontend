import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../domain/models/auth_tokens.dart';
import '../../../../domain/models/user_profile.dart';
import '../../../../domain/repositories/providers.dart';
import '../../../../domain/services/providers.dart';
import '../../state_status.dart';

import 'states.dart';

part 'providers.g.dart';

@riverpod
class Auth extends _$Auth {
  @override
  AuthState build() {
    return AuthState(status: StateStatus.loading);
  }

  Future<void> load() async {
    state = AuthState(status: StateStatus.loading);
    try {
      final tokens = await ref.read(tokenStorageProvider).getTokens();
      final profileResponse = await ref.read(authRepositoryProvider).profile();

      state = AuthState(
        status: StateStatus.data,
        tokens: AuthTokens(
          access: tokens.access,
          refresh: tokens.refresh,
        ),
        profile: UserProfile(
          id: profileResponse.id,
          email: profileResponse.email,
          firstName: profileResponse.firstName,
          phone: profileResponse.phone,
        ),
      );
    } on DioException catch (e) {
      log('DioException...', name: runtimeType.toString());
      state = AuthState(
        tokens: null,
        profile: null,
        status: StateStatus.error,
        message: e.toString(),
      );
    } catch (e) {
      log('catch...', name: runtimeType.toString());
      state = AuthState(
        tokens: null,
        profile: null,
        status: StateStatus.error,
        message: e.toString(),
      );
    }
  }

  Future<void> login(String email, String password) async {
    log('login', name: runtimeType.toString());
    log('email: $email, password: $password', name: runtimeType.toString());
    state = AuthState(status: StateStatus.loading);
    try {
      log('login: 1', name: runtimeType.toString());
      final tokenResponse =
          await ref.read(authRepositoryProvider).login(email, password);
      log('login: 2', name: runtimeType.toString());
      ref.read(tokenStorageProvider).setTokens(tokenResponse);
      log('login: 3', name: runtimeType.toString());

      final profileResponse = await ref.read(authRepositoryProvider).profile();

      state = AuthState(
        status: StateStatus.data,
        tokens: AuthTokens(
          access: tokenResponse.access,
          refresh: tokenResponse.refresh,
        ),
        profile: UserProfile(
          id: profileResponse.id,
          email: profileResponse.email,
          firstName: profileResponse.firstName,
          phone: profileResponse.phone,
        ),
      );
    } on DioException catch (e) {
      state = AuthState(
        tokens: null,
        profile: null,
        status: StateStatus.error,
        message: '${e.response?.statusCode}: ${e.response.toString()}',
      );
    } catch (e) {
      state = AuthState(
        tokens: null,
        profile: null,
        status: StateStatus.error,
        message: e.toString(),
      );
    }
  }

  Future<void> logout() async {
    await ref.read(tokenStorageProvider).clear();
    state = AuthState();
  }

  Future<void> loadProfile() async {
    final profileResponse = await ref.read(authRepositoryProvider).profile();

    state = AuthState(
      tokens: state.tokens,
      profile: UserProfile(
        id: profileResponse.id,
        email: profileResponse.email,
        firstName: profileResponse.firstName,
        phone: profileResponse.phone,
      ),
    );
  }
}
