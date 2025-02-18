import 'package:app/utils/annotations/annotations_lib.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'vehicle_models.freezed.dart';
part 'vehicle_models.g.dart';

@freezedResponse
class VehicleModel with _$VehicleModel {
  @jsonSerializableResponse
  const factory VehicleModel({
    required String name,
    required String id,
    required DateTime creationDate,
    required bool deleted,
  }) = _VehicleModel;

  factory VehicleModel.fromJson(Map<String, dynamic> json) =>
      _$VehicleModelFromJson(json);
}
