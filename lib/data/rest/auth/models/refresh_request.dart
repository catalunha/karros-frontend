import 'package:json_annotation/json_annotation.dart';

part 'refresh_request.g.dart';

@JsonSerializable()
class RefreshRequest {
  const RefreshRequest({
    required this.username,
    required this.password,
  });

  factory RefreshRequest.fromJson(Map<String, dynamic> json) =>
      _$RefreshRequestFromJson(json);

  final String username;
  final String password;

  Map<String, dynamic> toJson() => _$RefreshRequestToJson(this);
}
