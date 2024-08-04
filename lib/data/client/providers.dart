import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'dio_client.dart'
    if (dart.library.io) 'dio_client_android.dart'
    if (dart.library.js) 'dio_client_web.dart';

part 'providers.g.dart';

@Riverpod(keepAlive: true)
DioClient dioClient(DioClientRef ref) {
  return DioClient();
}
