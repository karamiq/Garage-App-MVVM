// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'plate_characters.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PlateCharactersImpl _$$PlateCharactersImplFromJson(
        Map<String, dynamic> json) =>
    _$PlateCharactersImpl(
      name: json['name'] as String,
      governorateId: json['governorateId'] as String,
      governorateName: json['governorateName'] as String,
      id: json['id'] as String,
      creationDate: DateTime.parse(json['creationDate'] as String),
      deleted: json['deleted'] as bool,
    );

Map<String, dynamic> _$$PlateCharactersImplToJson(
        _$PlateCharactersImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'governorateId': instance.governorateId,
      'governorateName': instance.governorateName,
      'id': instance.id,
      'creationDate': instance.creationDate.toIso8601String(),
      'deleted': instance.deleted,
    };
