import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../client/providers.dart';

import 'auth/auth_rest.dart';
part 'providers.g.dart';

@Riverpod(keepAlive: true)
AuthRest authRest(AuthRestRef ref) {
  return AuthRest(ref.read(dioClientProvider));
}

// @Riverpod(keepAlive: true)
// QuestionRest questionRest(QuestionRestRef ref) {
//   return QuestionRest(ref.read(dioClientProvider));
// }

// @Riverpod(keepAlive: true)
// VideoRest videoRest(VideoRestRef ref) {
//   return VideoRest(ref.read(dioClientProvider));
// }
