import 'package:flutter/material.dart';
import 'package:riverpod/riverpod.dart';
import '../models/create_owner_state.dart';

// class CreateOwnerController extends StateNotifier<CreateOwnerState> {
//   CreateOwnerController(super.state);

//   void setLoading(bool isLoading) {
//     state = state.copyWith(isLoading: isLoading);
//   }

//   void setOwnerStatus(bool? isOwner) {
//     state = state.copyWith(isOwner: isOwner);
//   }

//   void updateTextField(TextEditingController controller, String value) {
//     controller.text = value;
//   }

//   void updateFile(File? file, String field) {
//     switch (field) {
//       case 'drivingLicensePicture':
//         state = state.copyWith(drivingLicensePicture: file);
//         break;
//       case 'carLicensePicture':
//         state = state.copyWith(carLicensePicture: file);
//         break;
//       case 'carPicture':
//         state = state.copyWith(carPicture: file);
//         break;
//       case 'personalPicture':
//         state = state.copyWith(personalPicture: file);
//         break;
//       case 'qrCode':
//         state = state.copyWith(qrCode: file);
//         break;
//     }
//   }
// }

final createOwnerControllerProvider = StateProvider<CreateOwnerState>((ref) {
  return CreateOwnerState(
      isLoading: false,
      isOwner: false,
      fullName: TextEditingController(),
      motherName: TextEditingController(),
      governorate: TextEditingController(),
      area: TextEditingController(),
      idNumber: TextEditingController(),
      issuer: TextEditingController(),
      issuerDate: TextEditingController(),
      drivingLicenseNumber: TextEditingController(),
      drivingLicensePicture: null,
      carPlateNumber: TextEditingController(),
      carPlateLetter: TextEditingController(),
      carGovernorate: TextEditingController(),
      carPlateType: TextEditingController(),
      carShasyNumber: TextEditingController(),
      carType: TextEditingController(),
      carModel: TextEditingController(),
      carColor: TextEditingController(),
      carNumberOfSeats: TextEditingController(),
      carLicensePicture: null,
      carPicture: null,
      carYear: TextEditingController(),
      personalPicture: null,
      qrCode: null,
      holderStateWork: TextEditingController(),
      holderGarageWork: TextEditingController(),
      plateCharacterId: TextEditingController(),
      userGovernorateId: TextEditingController(),
      carGovernorateId: TextEditingController(),
      plateTypeId: TextEditingController(),
      vehicleTypeId: TextEditingController(),
      vehicleModelId: TextEditingController());
});
