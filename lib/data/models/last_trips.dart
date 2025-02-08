import 'package:freezed_annotation/freezed_annotation.dart';

part 'last_trips.freezed.dart';
part 'last_trips.g.dart';

@freezed
class LastTrips with _$LastTrips {
  factory LastTrips({
    required int weeklyTripNumber,
    required int weeklyTripPercentage,
    required int totalTripNumber,
    required List<TripHistory> tripHistory,
  }) = _LastTrips;

  factory LastTrips.fromJson(Map<String, dynamic> json) => _$LastTripsFromJson(json);
}

@freezed
class TripHistory with _$TripHistory {
  factory TripHistory({
    required String id,
    required String creationDate,
    required bool deleted,
    required String gateId,
    required String gateName,
    required String garageId,
    required String garageName,
    required String toGarageId,
    required String toGarageName,
    required String vehicleId,
    required String plateNumber,
    required String plateCharacter,
    required String plateGovernorate,
    required int taxes,
    required int action,
    required FinancialLogDto financialLogDto,
  }) = _TripHistory;

  factory TripHistory.fromJson(Map<String, dynamic> json) => _$TripHistoryFromJson(json);
}

@freezed
class FinancialLogDto with _$FinancialLogDto {
  factory FinancialLogDto({
    required String id,
    required String creationDate,
    required bool deleted,
    required int gate,
    required int queue,
    required int manifest,
    required int parking,
    required String vehicleMovementId,
    required String vehicleId,
    required String plateNumber,
    required int type,
    required int number,
    required int totalPrice,
  }) = _FinancialLogDto;

  factory FinancialLogDto.fromJson(Map<String, dynamic> json) =>
      _$FinancialLogDtoFromJson(json);
}
