import 'dart:developer';

import 'package:dio/dio.dart';

import '../../../data/rest/auth/auth_rest.dart';
import '../../../data/rest/auth/models/login_request.dart';
import '../../models/auth_tokens.dart';
import '../../models/user_profile.dart';

import 'auth_repository.dart';

class AuthRepositoryImpl extends AuthRepository {
  AuthRepositoryImpl({
    required this.rest,
  });

  final AuthRest rest;

  @override
  Future<AuthTokens> login(String email, String password) async {
    try {
      final response = await rest.authToken(
        LoginRequest(email: email, password: password),
      );

      return AuthTokens(
        access: response.data.access,
        refresh: response.data.refresh,
      );
    } on DioException catch (e) {
      log('${e.type}');
      rethrow;
    }
  }

  @override
  Future<UserProfile> profile() async {
    final response = await rest.profile();

    return UserProfile(
      id: response.data.id,
      email: response.data.email,
      firstName: response.data.firstName,
      phone: response.data.phone,
    );
  }
}
