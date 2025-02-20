import 'package:nafarat/data/models/_models.dart';
import 'package:nafarat/data/models/governorate_model.dart';

part 'city_model.freezed.dart';
part 'city_model.g.dart';

@freezedResponse
class City with _$City {
  @jsonSerializableResponse
  const factory City({
    required String id,
    required String name,
    required GovernorateModel governorate,
    required String creationDate,
    required bool deleted,
  }) = _City;

  factory City.fromJson(Map<String, dynamic> json) => _$CityFromJson(json);
}
