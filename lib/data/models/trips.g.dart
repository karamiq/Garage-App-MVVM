// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trips.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LastTripsImpl _$$LastTripsImplFromJson(Map<String, dynamic> json) =>
    _$LastTripsImpl(
      weeklyTripNumber: (json['weeklyTripNumber'] as num).toInt(),
      weeklyTripPercentage: (json['weeklyTripPercentage'] as num).toInt(),
      totalTripNumber: (json['totalTripNumber'] as num).toInt(),
      totalTripPercentage: (json['totalTripPercentage'] as num).toInt(),
      tripHistory: (json['tripHistory'] as List<dynamic>)
          .map((e) => TripInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$LastTripsImplToJson(_$LastTripsImpl instance) =>
    <String, dynamic>{
      'weeklyTripNumber': instance.weeklyTripNumber,
      'weeklyTripPercentage': instance.weeklyTripPercentage,
      'totalTripNumber': instance.totalTripNumber,
      'totalTripPercentage': instance.totalTripPercentage,
      'tripHistory': instance.tripHistory,
    };
