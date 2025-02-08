import 'package:freezed_annotation/freezed_annotation.dart';

part 'vehicle.freezed.dart';
part 'vehicle.g.dart';

@freezed
class Vehicle with _$Vehicle {
  factory Vehicle({
    required String id,
    required DateTime creationDate,
    required bool deleted,
    required String plateNumber,
    String? governorateId,
    String? governorateName,
    required String plateCharacterId,
    required String plateCharacterName,
    required String plateTypeId,
    required String plateTypeName,
    required String pathId,
    required String pathName,
    required String chassisNumber,
    required String vehicleTypeId,
    required String vehicleTypeName,
    required int manufacturingYear,
    required String vehicleModelId,
    required String vehicleModelName,
    String? note,
    required String vehicleLicense,
    required String color,
    required String ownerId,
    required String ownerName,
    required String ownerImage,
    required int status,
    required int numberOfSeats,
    String? smartCardNumber,
    int? fare,
    required bool isActive,
    required List<String> vehicleLicenseImages,
    required List<String> vehicleImages,
    bool? isOwner,
    required int vehicleRegistrationState,
    required int vehiclePathReceiptNumber,
    String? rejectReason,
    String? debtStatementNumber,
    DateTime? debtStatementExpiredDate,
    String? clearanceNumber,
    DateTime? clearanceExpiredDate,
    bool? isNew,
    DateTime? deportationDate,
    DateTime? sheddingDate,
  }) = _Vehicle;

  factory Vehicle.fromJson(Map<String, dynamic> json) => _$VehicleFromJson(json);
}
