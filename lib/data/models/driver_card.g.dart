// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'driver_card.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DriverCardImpl _$$DriverCardImplFromJson(Map<String, dynamic> json) =>
    _$DriverCardImpl(
      id: json['id'] as String,
      creationDate: DateTime.parse(json['creationDate'] as String),
      deleted: json['deleted'] as bool,
      number: (json['number'] as num).toInt(),
      balance: (json['balance'] as num).toInt(),
      driverId: json['driverId'] as String,
      driverFullName: json['driverFullName'] as String,
      expiredDate: DateTime.parse(json['expiredDate'] as String),
      cardStatus: (json['cardStatus'] as num).toInt(),
    );

Map<String, dynamic> _$$DriverCardImplToJson(_$DriverCardImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'creationDate': instance.creationDate.toIso8601String(),
      'deleted': instance.deleted,
      'number': instance.number,
      'balance': instance.balance,
      'driverId': instance.driverId,
      'driverFullName': instance.driverFullName,
      'expiredDate': instance.expiredDate.toIso8601String(),
      'cardStatus': instance.cardStatus,
    };
