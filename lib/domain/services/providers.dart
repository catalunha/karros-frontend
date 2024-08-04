import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'token/token_storage.dart';

part 'providers.g.dart';

// final sharedPreferencesProvider = Provider<SharedPreferences>((ref) {
//   throw UnimplementedError();
// });

@Riverpod(keepAlive: true)
SharedPreferences sharedPreferences(SharedPreferencesRef ref) {
  throw UnimplementedError();
}

@Riverpod(keepAlive: true)
TokenStorage tokenStorage(TokenStorageRef ref) {
  return TokenStorage(sharedPreferences: ref.read(sharedPreferencesProvider));
}
