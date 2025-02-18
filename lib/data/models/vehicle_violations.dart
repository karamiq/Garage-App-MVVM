import 'package:app/utils/annotations/annotations_lib.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'vehicle_violations.freezed.dart';
part 'vehicle_violations.g.dart';

@freezedResponse
class VehicleViolations with _$VehicleViolations {
  @jsonSerializableResponse
  factory VehicleViolations({
    required int accumulatedPrice,
    required int numberOfViolation,
    required List<Violation> vehicleViolations,
  }) = _VehicleViolations;

  factory VehicleViolations.fromJson(Map<String, dynamic> json) =>
      _$VehicleViolationsFromJson(json);
}

@freezedResponse
class Violation with _$Violation {
  @jsonSerializableResponse
  factory Violation({
    required String id,
    required DateTime creationDate,
    required bool deleted,
    required int number,
    required String userId,
    required String userFullName,
    required String userGarageId,
    required String userGarageName,
    required String garageGovernorateName,
    required String vehicleId,
    required String vehicleChassisNumber,
    required String vehiclePlateCharacterName,
    required String vehiclePlateType,
    required String vehicleGovernorateName,
    required String plateNumber,
    required FeeFines feeFines,
    required bool isPaid,
    required String images,
    required int duplicateCount,
    required int amount,
    required int totalAmount,
    required double lat,
    required double lng,
    required int invoiceNumber,
    required String violationPayReceiptId,
    required int violationPayReceiptNumber,
  }) = _Violation;

  factory Violation.fromJson(Map<String, dynamic> json) => _$ViolationFromJson(json);
}

@freezed
class FeeFines with _$FeeFines {
  factory FeeFines({
    required String id,
    required DateTime creationDate,
    required bool deleted,
    required String name,
    required int amount,
    required int type,
  }) = _FeeFines;

  factory FeeFines.fromJson(Map<String, dynamic> json) => _$FeeFinesFromJson(json);
}
