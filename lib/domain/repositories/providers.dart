import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/rest/providers.dart';

import 'auth/auth_repository.dart';
import 'auth/auth_repository_impl.dart';
import 'vehicle/vehicle_respository.dart';

part 'providers.g.dart';

@Riverpod(keepAlive: true)
AuthRepository authRepository(AuthRepositoryRef ref) {
  return AuthRepositoryImpl(rest: ref.read(authRestProvider));
}

@Riverpod(keepAlive: true)
VehicleRepository vehicleRepository(VehicleRepositoryRef ref) {
  return VehicleRepository(vehicleRest: ref.read(vehicleRestProvider));
}
