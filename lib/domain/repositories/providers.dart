import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/rest/providers.dart';

import 'auth/auth_repository.dart';
import 'auth/auth_repository_impl.dart';

part 'providers.g.dart';

@Riverpod(keepAlive: true)
AuthRepository authRepository(AuthRepositoryRef ref) {
  return AuthRepositoryImpl(rest: ref.read(authRestProvider));
}

// @Riverpod(keepAlive: true)
// VideoRepository videoRepository(VideoRepositoryRef ref) {
//   return VideoRepositoryImpl(rest: ref.read(videoRestProvider));
// }
