import 'dart:developer';

import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../domain/models/vehicle_list.dart';
import '../../../../domain/repositories/providers.dart';

part 'providers.g.dart';

@riverpod
FutureOr<VehicleList> vehicleList(VehicleListRef ref) async {
  final result = await ref.read(vehicleRepositoryProvider).listAll({});
  log('${result.count}');
  log('${result.results}');
  return result;
}
