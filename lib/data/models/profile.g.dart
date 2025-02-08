// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProfileImpl _$$ProfileImplFromJson(Map<String, dynamic> json) =>
    _$ProfileImpl(
      id: json['id'] as String?,
      creationDate: json['creationDate'] == null
          ? null
          : DateTime.parse(json['creationDate'] as String),
      deleted: json['deleted'] as bool?,
      fullName: json['fullName'] as String?,
      governorateId: json['governorateId'] as String?,
      governorateName: json['governorateName'] as String?,
      address: json['address'] as String?,
      identityNumber: json['identityNumber'] as String?,
      issuer: json['issuer'] as String?,
      registrationNumber: (json['registrationNumber'] as num?)?.toInt(),
      newspaperNumber: (json['newspaperNumber'] as num?)?.toInt(),
      motherName: json['motherName'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      registrationDate: json['registrationDate'] == null
          ? null
          : DateTime.parse(json['registrationDate'] as String),
      vehicle: (json['vehicle'] as List<dynamic>?)
          ?.map((e) => Vehicle.fromJson(e as Map<String, dynamic>))
          .toList(),
      image: json['image'] as String?,
      driverLicenseImages: (json['driverLicenseImages'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      isActive: json['isActive'] as bool?,
      registerState: (json['registerState'] as num?)?.toInt(),
      driverType: (json['driverType'] as num?)?.toInt(),
      driverCard: json['driverCard'] == null
          ? null
          : DriverCard.fromJson(json['driverCard'] as Map<String, dynamic>),
      driverLicense: json['driverLicense'] as String?,
    );

Map<String, dynamic> _$$ProfileImplToJson(_$ProfileImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'creationDate': instance.creationDate?.toIso8601String(),
      'deleted': instance.deleted,
      'fullName': instance.fullName,
      'governorateId': instance.governorateId,
      'governorateName': instance.governorateName,
      'address': instance.address,
      'identityNumber': instance.identityNumber,
      'issuer': instance.issuer,
      'registrationNumber': instance.registrationNumber,
      'newspaperNumber': instance.newspaperNumber,
      'motherName': instance.motherName,
      'phoneNumber': instance.phoneNumber,
      'registrationDate': instance.registrationDate?.toIso8601String(),
      'vehicle': instance.vehicle,
      'image': instance.image,
      'driverLicenseImages': instance.driverLicenseImages,
      'isActive': instance.isActive,
      'registerState': instance.registerState,
      'driverType': instance.driverType,
      'driverCard': instance.driverCard,
      'driverLicense': instance.driverLicense,
    };
