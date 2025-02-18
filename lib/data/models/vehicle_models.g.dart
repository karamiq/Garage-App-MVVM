// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vehicle_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VehicleModelImpl _$$VehicleModelImplFromJson(Map<String, dynamic> json) =>
    _$VehicleModelImpl(
      name: json['name'] as String,
      id: json['id'] as String,
      creationDate: DateTime.parse(json['creationDate'] as String),
      deleted: json['deleted'] as bool,
    );

Map<String, dynamic> _$$VehicleModelImplToJson(_$VehicleModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
      'creationDate': instance.creationDate.toIso8601String(),
      'deleted': instance.deleted,
    };
