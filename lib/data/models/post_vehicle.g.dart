// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_vehicle.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PostVehicleImpl _$$PostVehicleImplFromJson(Map<String, dynamic> json) =>
    _$PostVehicleImpl(
      plateNumber: json['plateNumber'] as String,
      plateCharacterId: json['plateCharacterId'] as String,
      governorateId: json['governorateId'] as String,
      plateTypeId: json['plateTypeId'] as String,
      chassisNumber: json['chassisNumber'] as String,
      vehicleTypeId: json['vehicleTypeId'] as String,
      vehicleModelId: json['vehicleModelId'] as String,
      manufacturingYear: (json['manufacturingYear'] as num).toInt(),
      color: json['color'] as String,
      numberOfSeats: (json['numberOfSeats'] as num).toInt(),
      vehicleLicense: json['vehicleLicense'] as String?,
      vehicleLicenseImages: (json['vehicleLicenseImages'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      vehicleImages: (json['vehicleImages'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      note: json['note'] as String?,
    );

Map<String, dynamic> _$$PostVehicleImplToJson(_$PostVehicleImpl instance) =>
    <String, dynamic>{
      'plateNumber': instance.plateNumber,
      'plateCharacterId': instance.plateCharacterId,
      'governorateId': instance.governorateId,
      'plateTypeId': instance.plateTypeId,
      'chassisNumber': instance.chassisNumber,
      'vehicleTypeId': instance.vehicleTypeId,
      'vehicleModelId': instance.vehicleModelId,
      'manufacturingYear': instance.manufacturingYear,
      'color': instance.color,
      'numberOfSeats': instance.numberOfSeats,
      'vehicleLicense': instance.vehicleLicense,
      'vehicleLicenseImages': instance.vehicleLicenseImages,
      'vehicleImages': instance.vehicleImages,
      'note': instance.note,
    };
