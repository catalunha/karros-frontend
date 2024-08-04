import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_tokens.freezed.dart';

@freezed
class AuthTokens with _$AuthTokens {
  factory AuthTokens({
    required String access,
    required String refresh,
  }) = _AuthTokens;
}
