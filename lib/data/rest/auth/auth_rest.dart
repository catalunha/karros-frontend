import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import 'models/login_request.dart';
import 'models/refresh_request.dart';
import 'models/token_response.dart';
import 'models/user_profile_response.dart';
part 'auth_rest.g.dart';

@RestApi()
abstract class AuthRest {
  factory AuthRest(Dio dio) = _AuthRest;

  @POST('/auth/token/')
  Future<HttpResponse<TokenResponse>> authToken(@Body() LoginRequest body);

  @POST('/auth/token/refresh/')
  Future<HttpResponse<TokenResponse>> authRefresh(@Body() RefreshRequest body);

  @GET('/me/')
  Future<HttpResponse<UserProfileResponse>> profile();
}
