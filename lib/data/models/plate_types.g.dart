// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'plate_types.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PlateTypesImpl _$$PlateTypesImplFromJson(Map<String, dynamic> json) =>
    _$PlateTypesImpl(
      name: json['name'] as String,
      id: json['id'] as String,
      creationDate: json['creationDate'] == null
          ? null
          : DateTime.parse(json['creationDate'] as String),
      deleted: json['deleted'] as bool,
    );

Map<String, dynamic> _$$PlateTypesImplToJson(_$PlateTypesImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
      'creationDate': instance.creationDate?.toIso8601String(),
      'deleted': instance.deleted,
    };
