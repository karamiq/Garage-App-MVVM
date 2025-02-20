import 'package:nafarat/utils/annotations/annotations_lib.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'governorate_model.g.dart';
part 'governorate_model.freezed.dart';

@freezedResponse
class GovernorateModel with _$GovernorateModel {
  const GovernorateModel._();

  @jsonSerializableResponse
  const factory GovernorateModel({
    required String id,
    required String name,
    required DateTime creationDate,
    required bool deleted,
  }) = _GovernorateModel;

  factory GovernorateModel.fromJson(Map<String, dynamic> json) =>
      _$GovernorateModelFromJson(json);
}
