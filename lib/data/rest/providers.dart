import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../client/providers.dart';

import 'auth/auth_rest.dart';
import 'vehicle/vehicle_rest.dart';
part 'providers.g.dart';

@Riverpod(keepAlive: true)
AuthRest authRest(AuthRestRef ref) {
  return AuthRest(ref.read(dioClientProvider));
}

@Riverpod(keepAlive: true)
VehicleRest vehicleRest(VehicleRestRef ref) {
  return VehicleRest(ref.read(dioClientProvider));
}

// @Riverpod(keepAlive: true)
// VideoRest videoRest(VideoRestRef ref) {
//   return VideoRest(ref.read(dioClientProvider));
// }
