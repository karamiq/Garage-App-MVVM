import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_vehicle.freezed.dart';
part 'post_vehicle.g.dart';

@freezed
class PostVehicle with _$PostVehicle {
  const factory PostVehicle({
    required String plateNumber,
    required String plateCharacterId,
    required String governorateId,
    required String plateTypeId,
    required String chassisNumber,
    required String vehicleTypeId,
    required String vehicleModelId,
    required int manufacturingYear,
    required String color,
    required int numberOfSeats,
    required String? vehicleLicense,
    required List<String> vehicleLicenseImages,
    required List<String> vehicleImages,
    String? note,
  }) = _PostVehicle;

  factory PostVehicle.fromJson(Map<String, dynamic> json) => _$PostVehicleFromJson(json);
}
