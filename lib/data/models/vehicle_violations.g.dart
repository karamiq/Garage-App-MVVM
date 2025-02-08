// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vehicle_violations.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VehicleViolationsImpl _$$VehicleViolationsImplFromJson(
        Map<String, dynamic> json) =>
    _$VehicleViolationsImpl(
      accumulatedPrice: (json['accumulatedPrice'] as num).toInt(),
      numberOfViolation: (json['numberOfViolation'] as num).toInt(),
      vehicleViolations: (json['vehicleViolations'] as List<dynamic>)
          .map((e) => Violation.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$VehicleViolationsImplToJson(
        _$VehicleViolationsImpl instance) =>
    <String, dynamic>{
      'accumulatedPrice': instance.accumulatedPrice,
      'numberOfViolation': instance.numberOfViolation,
      'vehicleViolations': instance.vehicleViolations,
    };

_$ViolationImpl _$$ViolationImplFromJson(Map<String, dynamic> json) =>
    _$ViolationImpl(
      id: json['id'] as String,
      creationDate: DateTime.parse(json['creationDate'] as String),
      deleted: json['deleted'] as bool,
      number: (json['number'] as num).toInt(),
      userId: json['userId'] as String,
      userFullName: json['userFullName'] as String,
      userGarageId: json['userGarageId'] as String,
      userGarageName: json['userGarageName'] as String,
      garageGovernorateName: json['garageGovernorateName'] as String,
      vehicleId: json['vehicleId'] as String,
      vehicleChassisNumber: json['vehicleChassisNumber'] as String,
      vehiclePlateCharacterName: json['vehiclePlateCharacterName'] as String,
      vehiclePlateType: json['vehiclePlateType'] as String,
      vehicleGovernorateName: json['vehicleGovernorateName'] as String,
      plateNumber: json['plateNumber'] as String,
      feeFines: FeeFines.fromJson(json['feeFines'] as Map<String, dynamic>),
      isPaid: json['isPaid'] as bool,
      images:
          (json['images'] as List<dynamic>).map((e) => e as String).toList(),
      duplicateCount: (json['duplicateCount'] as num).toInt(),
      amount: (json['amount'] as num).toInt(),
      totalAmount: (json['totalAmount'] as num).toInt(),
      lat: json['lat'] as String,
      lng: json['lng'] as String,
      invoiceNumber: (json['invoiceNumber'] as num).toInt(),
      violationPayReceiptId: json['violationPayReceiptId'] as String,
      violationPayReceiptNumber:
          (json['violationPayReceiptNumber'] as num).toInt(),
    );

Map<String, dynamic> _$$ViolationImplToJson(_$ViolationImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'creationDate': instance.creationDate.toIso8601String(),
      'deleted': instance.deleted,
      'number': instance.number,
      'userId': instance.userId,
      'userFullName': instance.userFullName,
      'userGarageId': instance.userGarageId,
      'userGarageName': instance.userGarageName,
      'garageGovernorateName': instance.garageGovernorateName,
      'vehicleId': instance.vehicleId,
      'vehicleChassisNumber': instance.vehicleChassisNumber,
      'vehiclePlateCharacterName': instance.vehiclePlateCharacterName,
      'vehiclePlateType': instance.vehiclePlateType,
      'vehicleGovernorateName': instance.vehicleGovernorateName,
      'plateNumber': instance.plateNumber,
      'feeFines': instance.feeFines,
      'isPaid': instance.isPaid,
      'images': instance.images,
      'duplicateCount': instance.duplicateCount,
      'amount': instance.amount,
      'totalAmount': instance.totalAmount,
      'lat': instance.lat,
      'lng': instance.lng,
      'invoiceNumber': instance.invoiceNumber,
      'violationPayReceiptId': instance.violationPayReceiptId,
      'violationPayReceiptNumber': instance.violationPayReceiptNumber,
    };

_$FeeFinesImpl _$$FeeFinesImplFromJson(Map<String, dynamic> json) =>
    _$FeeFinesImpl(
      id: json['id'] as String,
      creationDate: DateTime.parse(json['creationDate'] as String),
      deleted: json['deleted'] as bool,
      name: json['name'] as String,
      amount: (json['amount'] as num).toInt(),
      type: (json['type'] as num).toInt(),
    );

Map<String, dynamic> _$$FeeFinesImplToJson(_$FeeFinesImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'creationDate': instance.creationDate.toIso8601String(),
      'deleted': instance.deleted,
      'name': instance.name,
      'amount': instance.amount,
      'type': instance.type,
    };
