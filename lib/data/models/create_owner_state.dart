import 'package:flutter/material.dart';
import 'dart:io';
import 'post_vehicle.dart';

class CreateOwnerState {
  bool isLoading;
  bool? isOwner;
  TextEditingController fullName;
  TextEditingController motherName;
  TextEditingController governorate;
  TextEditingController area;
  TextEditingController idNumber;
  TextEditingController issuer;
  TextEditingController issuerDate;
  TextEditingController drivingLicenseNumber;
  File? drivingLicensePicture;
  TextEditingController carPlateNumber;
  TextEditingController carPlateLetter;
  TextEditingController carState;
  TextEditingController carPlateType;
  TextEditingController carShasyNumber;
  TextEditingController carType;
  TextEditingController carModel;
  TextEditingController carColor;
  TextEditingController carNumberOfSeats;
  File? carLicensePicture;
  File? carPicture;
  TextEditingController carYear;
  File? personalPicture;
  File? qrCode;
  TextEditingController holderStateWork;
  TextEditingController holderGarageWork;
  TextEditingController plateCharacterId;
  TextEditingController userGovernorateId;
  TextEditingController carGovernorateId;
  TextEditingController plateTypeId;
  TextEditingController vehicleTypeId;
  TextEditingController vehicleModelId;
  String? vehicleImageUrl;
  String? vehicleLicenseImageUrl;
  PostVehicle? vehicle;

  CreateOwnerState({
    required this.isLoading,
    required this.isOwner,
    required this.fullName,
    required this.motherName,
    required this.governorate,
    required this.area,
    required this.idNumber,
    required this.issuer,
    required this.issuerDate,
    required this.drivingLicenseNumber,
    required this.drivingLicensePicture,
    required this.carPlateNumber,
    required this.carPlateLetter,
    required this.carState,
    required this.carPlateType,
    required this.carShasyNumber,
    required this.carType,
    required this.carModel,
    required this.carColor,
    required this.carNumberOfSeats,
    required this.carLicensePicture,
    required this.carPicture,
    required this.carYear,
    required this.personalPicture,
    required this.qrCode,
    required this.holderStateWork,
    required this.holderGarageWork,
    required this.plateCharacterId,
    required this.userGovernorateId,
    required this.carGovernorateId,
    required this.plateTypeId,
    required this.vehicleTypeId,
    required this.vehicleModelId,
    this.vehicleImageUrl,
    this.vehicleLicenseImageUrl,
    this.vehicle,
  });

  CreateOwnerState copyWith({
    bool? isLoading,
    bool? isOwner,
    TextEditingController? fullName,
    TextEditingController? motherName,
    TextEditingController? governorate,
    TextEditingController? area,
    TextEditingController? idNumber,
    TextEditingController? issuer,
    TextEditingController? issuerDate,
    TextEditingController? drivingLicenseNumber,
    File? drivingLicensePicture,
    TextEditingController? carPlateNumber,
    TextEditingController? carPlateLetter,
    TextEditingController? carState,
    TextEditingController? carPlateType,
    TextEditingController? carShasyNumber,
    TextEditingController? carType,
    TextEditingController? carModel,
    TextEditingController? carColor,
    TextEditingController? carNumberOfSeats,
    File? carLicensePicture,
    File? carPicture,
    TextEditingController? carYear,
    File? personalPicture,
    File? qrCode,
    TextEditingController? holderStateWork,
    TextEditingController? holderGarageWork,
    TextEditingController? plateCharacterId,
    TextEditingController? userGovernorateId,
    TextEditingController? carGovernorateId,
    TextEditingController? plateTypeId,
    TextEditingController? vehicleTypeId,
    TextEditingController? vehicleModelId,
    String? vehicleImageUrl,
    String? vehicleLicenseImageUrl,
    PostVehicle? vehicle,
  }) {
    return CreateOwnerState(
      isLoading: isLoading ?? this.isLoading,
      isOwner: isOwner ?? this.isOwner,
      fullName: fullName ?? this.fullName,
      motherName: motherName ?? this.motherName,
      governorate: governorate ?? this.governorate,
      area: area ?? this.area,
      idNumber: idNumber ?? this.idNumber,
      issuer: issuer ?? this.issuer,
      issuerDate: issuerDate ?? this.issuerDate,
      drivingLicenseNumber: drivingLicenseNumber ?? this.drivingLicenseNumber,
      drivingLicensePicture: drivingLicensePicture ?? this.drivingLicensePicture,
      carPlateNumber: carPlateNumber ?? this.carPlateNumber,
      carPlateLetter: carPlateLetter ?? this.carPlateLetter,
      carState: carState ?? this.carState,
      carPlateType: carPlateType ?? this.carPlateType,
      carShasyNumber: carShasyNumber ?? this.carShasyNumber,
      carType: carType ?? this.carType,
      carModel: carModel ?? this.carModel,
      carColor: carColor ?? this.carColor,
      carNumberOfSeats: carNumberOfSeats ?? this.carNumberOfSeats,
      carLicensePicture: carLicensePicture ?? this.carLicensePicture,
      carPicture: carPicture ?? this.carPicture,
      carYear: carYear ?? this.carYear,
      personalPicture: personalPicture ?? this.personalPicture,
      qrCode: qrCode ?? this.qrCode,
      holderStateWork: holderStateWork ?? this.holderStateWork,
      holderGarageWork: holderGarageWork ?? this.holderGarageWork,
      plateCharacterId: plateCharacterId ?? this.plateCharacterId,
      userGovernorateId: userGovernorateId ?? this.userGovernorateId,
      carGovernorateId: carGovernorateId ?? this.carGovernorateId,
      plateTypeId: plateTypeId ?? this.plateTypeId,
      vehicleTypeId: vehicleTypeId ?? this.vehicleTypeId,
      vehicleModelId: vehicleModelId ?? this.vehicleModelId,
      vehicleImageUrl: vehicleImageUrl ?? this.vehicleImageUrl,
      vehicleLicenseImageUrl: vehicleLicenseImageUrl ?? this.vehicleLicenseImageUrl,
      vehicle: vehicle ?? this.vehicle,
    );
  }
}
