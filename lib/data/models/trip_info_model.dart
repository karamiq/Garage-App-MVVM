import '_models.dart';

part 'trip_info_model.freezed.dart';
part 'trip_info_model.g.dart';

@freezedResponse
class TripInfo with _$TripInfo {
  @jsonSerializableResponse
  const factory TripInfo({
    //required String id,
    required DateTime date,
    required int tripNumber,
    required String fromGarage,
    required String toGarage,
    required DateTime departureTime,
    required DateTime arrivalTime,
    required String duration,
    required List<Deduction> deductions,
    required int totalPrice,
  }) = _TripInfo;

  factory TripInfo.fromJson(Map<String, dynamic> json) => _$TripInfoFromJson(json);
}

@freezedResponse
class Deduction with _$Deduction {
  @jsonSerializableResponse
  const factory Deduction({
    required String name,
    required int amount,
  }) = _Deduction;

  factory Deduction.fromJson(Map<String, dynamic> json) => _$DeductionFromJson(json);
}
