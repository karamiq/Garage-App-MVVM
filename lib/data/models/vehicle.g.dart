// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vehicle.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VehicleImpl _$$VehicleImplFromJson(Map<String, dynamic> json) =>
    _$VehicleImpl(
      id: json['id'] as String,
      creationDate: DateTime.parse(json['creationDate'] as String),
      deleted: json['deleted'] as bool,
      plateNumber: json['plateNumber'] as String,
      governorateId: json['governorateId'] as String?,
      governorateName: json['governorateName'] as String?,
      plateCharacterId: json['plateCharacterId'] as String,
      plateCharacterName: json['plateCharacterName'] as String,
      plateTypeId: json['plateTypeId'] as String,
      plateTypeName: json['plateTypeName'] as String,
      pathId: json['pathId'] as String,
      pathName: json['pathName'] as String,
      chassisNumber: json['chassisNumber'] as String,
      vehicleTypeId: json['vehicleTypeId'] as String,
      vehicleTypeName: json['vehicleTypeName'] as String,
      manufacturingYear: (json['manufacturingYear'] as num).toInt(),
      vehicleModelId: json['vehicleModelId'] as String,
      vehicleModelName: json['vehicleModelName'] as String,
      note: json['note'] as String?,
      vehicleLicense: json['vehicleLicense'] as String,
      color: json['color'] as String,
      ownerId: json['ownerId'] as String,
      ownerName: json['ownerName'] as String,
      ownerImage: json['ownerImage'] as String,
      status: (json['status'] as num).toInt(),
      numberOfSeats: (json['numberOfSeats'] as num).toInt(),
      smartCardNumber: json['smartCardNumber'] as String?,
      fare: (json['fare'] as num?)?.toInt(),
      isActive: json['isActive'] as bool,
      vehicleLicenseImages: (json['vehicleLicenseImages'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      vehicleImages: (json['vehicleImages'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      isOwner: json['isOwner'] as bool?,
      vehicleRegistrationState:
          (json['vehicleRegistrationState'] as num).toInt(),
      vehiclePathReceiptNumber:
          (json['vehiclePathReceiptNumber'] as num).toInt(),
      rejectReason: json['rejectReason'] as String?,
      debtStatementNumber: json['debtStatementNumber'] as String?,
      debtStatementExpiredDate: json['debtStatementExpiredDate'] == null
          ? null
          : DateTime.parse(json['debtStatementExpiredDate'] as String),
      clearanceNumber: json['clearanceNumber'] as String?,
      clearanceExpiredDate: json['clearanceExpiredDate'] == null
          ? null
          : DateTime.parse(json['clearanceExpiredDate'] as String),
      isNew: json['isNew'] as bool?,
      deportationDate: json['deportationDate'] == null
          ? null
          : DateTime.parse(json['deportationDate'] as String),
      sheddingDate: json['sheddingDate'] == null
          ? null
          : DateTime.parse(json['sheddingDate'] as String),
    );

Map<String, dynamic> _$$VehicleImplToJson(_$VehicleImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'creationDate': instance.creationDate.toIso8601String(),
      'deleted': instance.deleted,
      'plateNumber': instance.plateNumber,
      'governorateId': instance.governorateId,
      'governorateName': instance.governorateName,
      'plateCharacterId': instance.plateCharacterId,
      'plateCharacterName': instance.plateCharacterName,
      'plateTypeId': instance.plateTypeId,
      'plateTypeName': instance.plateTypeName,
      'pathId': instance.pathId,
      'pathName': instance.pathName,
      'chassisNumber': instance.chassisNumber,
      'vehicleTypeId': instance.vehicleTypeId,
      'vehicleTypeName': instance.vehicleTypeName,
      'manufacturingYear': instance.manufacturingYear,
      'vehicleModelId': instance.vehicleModelId,
      'vehicleModelName': instance.vehicleModelName,
      'note': instance.note,
      'vehicleLicense': instance.vehicleLicense,
      'color': instance.color,
      'ownerId': instance.ownerId,
      'ownerName': instance.ownerName,
      'ownerImage': instance.ownerImage,
      'status': instance.status,
      'numberOfSeats': instance.numberOfSeats,
      'smartCardNumber': instance.smartCardNumber,
      'fare': instance.fare,
      'isActive': instance.isActive,
      'vehicleLicenseImages': instance.vehicleLicenseImages,
      'vehicleImages': instance.vehicleImages,
      'isOwner': instance.isOwner,
      'vehicleRegistrationState': instance.vehicleRegistrationState,
      'vehiclePathReceiptNumber': instance.vehiclePathReceiptNumber,
      'rejectReason': instance.rejectReason,
      'debtStatementNumber': instance.debtStatementNumber,
      'debtStatementExpiredDate':
          instance.debtStatementExpiredDate?.toIso8601String(),
      'clearanceNumber': instance.clearanceNumber,
      'clearanceExpiredDate': instance.clearanceExpiredDate?.toIso8601String(),
      'isNew': instance.isNew,
      'deportationDate': instance.deportationDate?.toIso8601String(),
      'sheddingDate': instance.sheddingDate?.toIso8601String(),
    };
