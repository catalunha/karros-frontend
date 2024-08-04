import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain/models/auth_tokens.dart';
import '../../../../domain/models/user_profile.dart';
import '../../state_status.dart';

part 'states.freezed.dart';

@freezed
class AuthState with _$AuthState {
  factory AuthState({
    @Default(StateStatus.loading) StateStatus status,
    String? message,
    AuthTokens? tokens,
    UserProfile? profile,
  }) = _AuthState;
}
