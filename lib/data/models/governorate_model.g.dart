// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'governorate_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GovernorateModelImpl _$$GovernorateModelImplFromJson(
        Map<String, dynamic> json) =>
    _$GovernorateModelImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      creationDate: DateTime.parse(json['creationDate'] as String),
      deleted: json['deleted'] as bool,
    );

Map<String, dynamic> _$$GovernorateModelImplToJson(
        _$GovernorateModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'creationDate': instance.creationDate.toIso8601String(),
      'deleted': instance.deleted,
    };
