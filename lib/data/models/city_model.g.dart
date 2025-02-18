// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'city_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CityImpl _$$CityImplFromJson(Map<String, dynamic> json) => _$CityImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      governorate: GovernorateModel.fromJson(
          json['governorate'] as Map<String, dynamic>),
      creationDate: json['creationDate'] as String,
      deleted: json['deleted'] as bool,
    );

Map<String, dynamic> _$$CityImplToJson(_$CityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'governorate': instance.governorate,
      'creationDate': instance.creationDate,
      'deleted': instance.deleted,
    };
