// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trip_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TripInfoImpl _$$TripInfoImplFromJson(Map<String, dynamic> json) =>
    _$TripInfoImpl(
      date: DateTime.parse(json['date'] as String),
      tripNumber: (json['tripNumber'] as num).toInt(),
      fromGarage: json['fromGarage'] as String,
      toGarage: json['toGarage'] as String,
      departureTime: DateTime.parse(json['departureTime'] as String),
      arrivalTime: DateTime.parse(json['arrivalTime'] as String),
      duration: json['duration'] as String,
      deductions: (json['deductions'] as List<dynamic>)
          .map((e) => Deduction.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalPrice: (json['totalPrice'] as num).toInt(),
    );

Map<String, dynamic> _$$TripInfoImplToJson(_$TripInfoImpl instance) =>
    <String, dynamic>{
      'date': instance.date.toIso8601String(),
      'tripNumber': instance.tripNumber,
      'fromGarage': instance.fromGarage,
      'toGarage': instance.toGarage,
      'departureTime': instance.departureTime.toIso8601String(),
      'arrivalTime': instance.arrivalTime.toIso8601String(),
      'duration': instance.duration,
      'deductions': instance.deductions,
      'totalPrice': instance.totalPrice,
    };

_$DeductionImpl _$$DeductionImplFromJson(Map<String, dynamic> json) =>
    _$DeductionImpl(
      name: json['name'] as String,
      amount: (json['amount'] as num).toInt(),
    );

Map<String, dynamic> _$$DeductionImplToJson(_$DeductionImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'amount': instance.amount,
    };
