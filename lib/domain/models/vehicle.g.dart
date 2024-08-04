// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vehicle.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VehicleImpl _$$VehicleImplFromJson(Map<String, dynamic> json) =>
    _$VehicleImpl(
      id: json['id'] as String?,
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      model: json['model'] == null
          ? null
          : Model.fromJson(json['model'] as Map<String, dynamic>),
      color: json['color'] == null
          ? null
          : Color.fromJson(json['color'] as Map<String, dynamic>),
      image: json['image'] as String?,
      value: json['value'] as String?,
      year: (json['year'] as num?)?.toInt(),
      description: json['description'] as String?,
      owner: json['owner'] as String?,
    );

Map<String, dynamic> _$$VehicleImplToJson(_$VehicleImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user': instance.user?.toJson(),
      'model': instance.model?.toJson(),
      'color': instance.color?.toJson(),
      'image': instance.image,
      'value': instance.value,
      'year': instance.year,
      'description': instance.description,
      'owner': instance.owner,
    };
