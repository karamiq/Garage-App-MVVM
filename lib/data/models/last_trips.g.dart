// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'last_trips.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LastTripsImpl _$$LastTripsImplFromJson(Map<String, dynamic> json) =>
    _$LastTripsImpl(
      weeklyTripNumber: (json['weeklyTripNumber'] as num).toInt(),
      weeklyTripPercentage: (json['weeklyTripPercentage'] as num).toInt(),
      totalTripNumber: (json['totalTripNumber'] as num).toInt(),
      tripHistory: (json['tripHistory'] as List<dynamic>)
          .map((e) => TripHistory.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$LastTripsImplToJson(_$LastTripsImpl instance) =>
    <String, dynamic>{
      'weeklyTripNumber': instance.weeklyTripNumber,
      'weeklyTripPercentage': instance.weeklyTripPercentage,
      'totalTripNumber': instance.totalTripNumber,
      'tripHistory': instance.tripHistory,
    };

_$TripHistoryImpl _$$TripHistoryImplFromJson(Map<String, dynamic> json) =>
    _$TripHistoryImpl(
      id: json['id'] as String,
      creationDate: json['creationDate'] as String,
      deleted: json['deleted'] as bool,
      gateId: json['gateId'] as String,
      gateName: json['gateName'] as String,
      garageId: json['garageId'] as String,
      garageName: json['garageName'] as String,
      toGarageId: json['toGarageId'] as String,
      toGarageName: json['toGarageName'] as String,
      vehicleId: json['vehicleId'] as String,
      plateNumber: json['plateNumber'] as String,
      plateCharacter: json['plateCharacter'] as String,
      plateGovernorate: json['plateGovernorate'] as String,
      taxes: (json['taxes'] as num).toInt(),
      action: (json['action'] as num).toInt(),
      financialLogDto: FinancialLogDto.fromJson(
          json['financialLogDto'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TripHistoryImplToJson(_$TripHistoryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'creationDate': instance.creationDate,
      'deleted': instance.deleted,
      'gateId': instance.gateId,
      'gateName': instance.gateName,
      'garageId': instance.garageId,
      'garageName': instance.garageName,
      'toGarageId': instance.toGarageId,
      'toGarageName': instance.toGarageName,
      'vehicleId': instance.vehicleId,
      'plateNumber': instance.plateNumber,
      'plateCharacter': instance.plateCharacter,
      'plateGovernorate': instance.plateGovernorate,
      'taxes': instance.taxes,
      'action': instance.action,
      'financialLogDto': instance.financialLogDto,
    };

_$FinancialLogDtoImpl _$$FinancialLogDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$FinancialLogDtoImpl(
      id: json['id'] as String,
      creationDate: json['creationDate'] as String,
      deleted: json['deleted'] as bool,
      gate: (json['gate'] as num).toInt(),
      queue: (json['queue'] as num).toInt(),
      manifest: (json['manifest'] as num).toInt(),
      parking: (json['parking'] as num).toInt(),
      vehicleMovementId: json['vehicleMovementId'] as String,
      vehicleId: json['vehicleId'] as String,
      plateNumber: json['plateNumber'] as String,
      type: (json['type'] as num).toInt(),
      number: (json['number'] as num).toInt(),
      totalPrice: (json['totalPrice'] as num).toInt(),
    );

Map<String, dynamic> _$$FinancialLogDtoImplToJson(
        _$FinancialLogDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'creationDate': instance.creationDate,
      'deleted': instance.deleted,
      'gate': instance.gate,
      'queue': instance.queue,
      'manifest': instance.manifest,
      'parking': instance.parking,
      'vehicleMovementId': instance.vehicleMovementId,
      'vehicleId': instance.vehicleId,
      'plateNumber': instance.plateNumber,
      'type': instance.type,
      'number': instance.number,
      'totalPrice': instance.totalPrice,
    };
