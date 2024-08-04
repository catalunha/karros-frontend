// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vehicle_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VehicleListImpl _$$VehicleListImplFromJson(Map<String, dynamic> json) =>
    _$VehicleListImpl(
      count: (json['count'] as num).toInt(),
      previous: json['previous'] as String?,
      next: json['next'] as String?,
      results: (json['results'] as List<dynamic>?)
              ?.map((e) => Vehicle.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$VehicleListImplToJson(_$VehicleListImpl instance) =>
    <String, dynamic>{
      'count': instance.count,
      'previous': instance.previous,
      'next': instance.next,
      'results': instance.results.map((e) => e.toJson()).toList(),
    };
