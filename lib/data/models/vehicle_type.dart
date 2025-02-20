import '_models.dart';

part 'vehicle_type.freezed.dart';
part 'vehicle_type.g.dart';

@freezedResponse
class VehicleType with _$VehicleType {
  @jsonSerializableResponse
  const factory VehicleType({
    required String name,
    required int numberOfSeat,
    required String id,
    required DateTime creationDate,
    required bool deleted,
  }) = _VehicleType;

  factory VehicleType.fromJson(Map<String, dynamic> json) => _$VehicleTypeFromJson(json);
}
