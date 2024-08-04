import 'package:freezed_annotation/freezed_annotation.dart';

import 'vehicle.dart';

part 'vehicle_list.freezed.dart';
part 'vehicle_list.g.dart';

@freezed
class VehicleList with _$VehicleList {
  factory VehicleList({
    required int count,
    String? previous,
    String? next,
    @Default([]) List<Vehicle> results,
  }) = _VehicleList;

  factory VehicleList.fromJson(Map<String, dynamic> json) =>
      _$VehicleListFromJson(json);
}
