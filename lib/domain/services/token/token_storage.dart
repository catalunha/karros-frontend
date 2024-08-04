import 'dart:developer';

import 'package:shared_preferences/shared_preferences.dart';

import '../../models/auth_tokens.dart';

class TokenStorage {
  final SharedPreferences sharedPreferences;

  final String accessKey = 'token-access';
  final String refreshKey = 'token-refresh';

  TokenStorage({
    required this.sharedPreferences,
  });

  Future<void> clear() async {
    await sharedPreferences.clear();
  }

  Future<void> setAccess(String token) {
    return sharedPreferences.setString(accessKey, token);
  }

  Future<void> setRefresh(String token) {
    return sharedPreferences.setString(refreshKey, token);
  }

  String getAccess() {
    try {
      final token = sharedPreferences.getString(accessKey);
      if (token == null) {
        throw Exception('null access token');
      }
      return token;
    } catch (e) {
      rethrow;
    }
  }

  String getRefresh() {
    try {
      final token = sharedPreferences.getString(refreshKey);
      if (token == null) {
        throw Exception('null refresh token');
      }
      return token;
    } catch (e) {
      rethrow;
    }
  }

  void setTokens(AuthTokens authTokens) async {
    log('$authTokens', name: runtimeType.toString());
    await setAccess(authTokens.access);
    await setRefresh(authTokens.refresh);
  }

  Future<AuthTokens> getTokens() async {
    try {
      final access = getAccess();
      final refresh = getRefresh();
      return AuthTokens(
        access: access,
        refresh: refresh,
      );
    } catch (e) {
      throw Exception('unable to load credentials localy');
    }
  }
}
