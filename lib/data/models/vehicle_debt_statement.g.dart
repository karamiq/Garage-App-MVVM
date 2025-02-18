// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vehicle_debt_statement.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VehicleDebtStatementImpl _$$VehicleDebtStatementImplFromJson(
        Map<String, dynamic> json) =>
    _$VehicleDebtStatementImpl(
      accumulatedPrice: (json['accumulatedPrice'] as num).toInt(),
      numberOfReceipt: (json['numberOfReceipt'] as num).toInt(),
      debtStatementReceipts: (json['debtStatementReceipts'] as List<dynamic>)
          .map((e) => DebtStatementReceipt.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$VehicleDebtStatementImplToJson(
        _$VehicleDebtStatementImpl instance) =>
    <String, dynamic>{
      'accumulatedPrice': instance.accumulatedPrice,
      'numberOfReceipt': instance.numberOfReceipt,
      'debtStatementReceipts': instance.debtStatementReceipts,
    };

_$DebtStatementReceiptImpl _$$DebtStatementReceiptImplFromJson(
        Map<String, dynamic> json) =>
    _$DebtStatementReceiptImpl(
      id: json['id'] as String,
      creationDate: DateTime.parse(json['creationDate'] as String),
      deleted: json['deleted'] as bool,
      number: (json['number'] as num).toInt(),
      amount: (json['amount'] as num).toInt(),
      vehicleId: json['vehicleId'] as String,
      vehiclePlateNumber: json['vehiclePlateNumber'] as String,
      vehicleChassisNumber: json['vehicleChassisNumber'] as String,
      vehiclePlateCharacterId: json['vehiclePlateCharacterId'] as String,
      vehiclePlateCharacterName: json['vehiclePlateCharacterName'] as String,
      vehiclePlateTypeId: json['vehiclePlateTypeId'] as String,
      vehiclePlateType: json['vehiclePlateType'] as String?,
      vehicleGovernorateId: json['vehicleGovernorateId'] as String?,
      vehicleGovernorateName: json['vehicleGovernorateName'] as String?,
      garageId: json['garageId'] as String,
      garageName: json['garageName'] as String?,
      totalTaxes: (json['totalTaxes'] as num).toInt(),
      taxes: (json['taxes'] as num).toInt(),
      totalAmount: (json['totalAmount'] as num).toInt(),
      isPaid: json['isPaid'] as bool,
      expiredDate: DateTime.parse(json['expiredDate'] as String),
    );

Map<String, dynamic> _$$DebtStatementReceiptImplToJson(
        _$DebtStatementReceiptImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'creationDate': instance.creationDate.toIso8601String(),
      'deleted': instance.deleted,
      'number': instance.number,
      'amount': instance.amount,
      'vehicleId': instance.vehicleId,
      'vehiclePlateNumber': instance.vehiclePlateNumber,
      'vehicleChassisNumber': instance.vehicleChassisNumber,
      'vehiclePlateCharacterId': instance.vehiclePlateCharacterId,
      'vehiclePlateCharacterName': instance.vehiclePlateCharacterName,
      'vehiclePlateTypeId': instance.vehiclePlateTypeId,
      'vehiclePlateType': instance.vehiclePlateType,
      'vehicleGovernorateId': instance.vehicleGovernorateId,
      'vehicleGovernorateName': instance.vehicleGovernorateName,
      'garageId': instance.garageId,
      'garageName': instance.garageName,
      'totalTaxes': instance.totalTaxes,
      'taxes': instance.taxes,
      'totalAmount': instance.totalAmount,
      'isPaid': instance.isPaid,
      'expiredDate': instance.expiredDate.toIso8601String(),
    };
