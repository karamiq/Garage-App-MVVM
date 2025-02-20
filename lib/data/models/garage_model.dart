import 'package:nafarat/data/models/_models.dart';

part 'garage_model.freezed.dart';
part 'garage_model.g.dart';

@freezedResponse
class Garage with _$Garage {
  @jsonSerializableResponse
  const factory Garage({
    required String id,
    required String name,
    // required City city,
    // double? lat,
    // double? lng,
    // bool? isActive,
    // required String creationDate,
    // required bool deleted,
  }) = _Garage;

  factory Garage.fromJson(Map<String, dynamic> json) => _$GarageFromJson(json);
}
