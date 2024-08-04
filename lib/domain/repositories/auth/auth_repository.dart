import '../../models/auth_tokens.dart';
import '../../models/user_profile.dart';

abstract class AuthRepository {
  Future<AuthTokens> login(String email, String password);
  Future<UserProfile> profile();
}
