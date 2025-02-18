import 'package:freezed_annotation/freezed_annotation.dart';

part 'vehicle_debt_statement.freezed.dart';
part 'vehicle_debt_statement.g.dart';

@freezed
class VehicleDebtStatement with _$VehicleDebtStatement {
  factory VehicleDebtStatement({
    required int accumulatedPrice,
    required int numberOfReceipt,
    required List<DebtStatementReceipt> debtStatementReceipts,
  }) = _VehicleDebtStatement;

  factory VehicleDebtStatement.fromJson(Map<String, dynamic> json) =>
      _$VehicleDebtStatementFromJson(json);
}

@freezed
class DebtStatementReceipt with _$DebtStatementReceipt {
  factory DebtStatementReceipt({
    required String id,
    required DateTime creationDate,
    required bool deleted,
    required int number,
    required int amount,
    required String vehicleId,
    required String vehiclePlateNumber,
    required String vehicleChassisNumber,
    required String vehiclePlateCharacterId,
    required String vehiclePlateCharacterName,
    required String vehiclePlateTypeId,
    String? vehiclePlateType,
    String? vehicleGovernorateId,
    String? vehicleGovernorateName,
    required String garageId,
    String? garageName,
    required int totalTaxes,
    required int taxes,
    required int totalAmount,
    required bool isPaid,
    required DateTime expiredDate,
  }) = _DebtStatementReceipt;

  factory DebtStatementReceipt.fromJson(Map<String, dynamic> json) =>
      _$DebtStatementReceiptFromJson(json);
}
