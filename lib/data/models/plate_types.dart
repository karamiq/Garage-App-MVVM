import 'package:nafarat/data/models/_models.dart';

part 'plate_types.freezed.dart';
part 'plate_types.g.dart';

@freezedResponse
class PlateTypes with _$PlateTypes {
  @jsonSerializableResponse
  const factory PlateTypes({
    required String name,
    required String id,
    required DateTime? creationDate, // Nullable DateTime
    required bool deleted,
  }) = _PlateTypes;

  factory PlateTypes.fromJson(Map<String, dynamic> json) => _$PlateTypesFromJson(json);
}
