import 'dart:developer';

import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../domain/models/vehicle_list.dart';
import '../../../../domain/repositories/providers.dart';

part 'providers.g.dart';

@riverpod
FutureOr<VehicleList> vehicleList(
  VehicleListRef ref, {
  String page = '1',
}) async {
  final result = await ref
      .read(vehicleRepositoryProvider)
      .listAll({'page': int.parse(page)});
  log('${result.count}');
  log('${result.previous}');
  log('${result.next}');
  log('${result.results.length}');
  return result;
}
