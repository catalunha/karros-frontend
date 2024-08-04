import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_profile.freezed.dart';

@freezed
class UserProfile with _$UserProfile {
  factory UserProfile({
    String? id,
    String? email,
    String? firstName,
    String? phone,
  }) = _UserProfile;
}
