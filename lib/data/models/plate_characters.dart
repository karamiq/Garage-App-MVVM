import 'package:app/data/services/clients/_clients.dart';

part 'plate_characters.freezed.dart';
part 'plate_characters.g.dart';

@freezedResponse
class PlateCharacters with _$PlateCharacters {
  @jsonSerializableResponse
  const factory PlateCharacters({
    required String name,
    required String governorateId,
    required String governorateName,
    required String id,
    required DateTime creationDate,
    required bool deleted,
  }) = _PlateCharacters;

  factory PlateCharacters.fromJson(Map<String, dynamic> json) =>
      _$PlateCharactersFromJson(json);
}
