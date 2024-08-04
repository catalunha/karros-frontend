import 'package:json_annotation/json_annotation.dart';

part 'token_response.g.dart';

@JsonSerializable()
class TokenResponse {
  const TokenResponse({
    required this.access,
    required this.refresh,
  });

  factory TokenResponse.fromJson(Map<String, dynamic> json) =>
      _$TokenResponseFromJson(json);

  final String access;
  final String refresh;

  Map<String, dynamic> toJson() => _$TokenResponseToJson(this);
}
