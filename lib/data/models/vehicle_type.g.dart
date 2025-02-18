// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vehicle_type.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VehicleTypeImpl _$$VehicleTypeImplFromJson(Map<String, dynamic> json) =>
    _$VehicleTypeImpl(
      name: json['name'] as String,
      numberOfSeat: (json['numberOfSeat'] as num).toInt(),
      id: json['id'] as String,
      creationDate: DateTime.parse(json['creationDate'] as String),
      deleted: json['deleted'] as bool,
    );

Map<String, dynamic> _$$VehicleTypeImplToJson(_$VehicleTypeImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'numberOfSeat': instance.numberOfSeat,
      'id': instance.id,
      'creationDate': instance.creationDate.toIso8601String(),
      'deleted': instance.deleted,
    };
