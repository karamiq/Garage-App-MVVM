import 'package:nafarat/data/models/vehicle.dart';

import '_models.dart';
import 'driver_card.dart';

part 'authentication_model.freezed.dart';
part 'authentication_model.g.dart';

@freezed
class AuthenticationModel with _$AuthenticationModel {
  const AuthenticationModel._();

  @jsonSerializable
  const factory AuthenticationModel({
    required String token,
    required String refreshToken,
    String? id,
    DateTime? creationDate,
    bool? deleted,
    String? fullName,
    String? governorateId,
    String? governorateName,
    String? address,
    String? identityNumber,
    String? issuer,
    int? registrationNumber,
    int? newspaperNumber,
    String? motherName,
    String? phoneNumber,
    DateTime? registrationDate,
    List<Vehicle>? vehicle,
    String? image,
    List<String>? driverLicenseImages,
    bool? isActive,
    int? registerState,
    int? driverType,
    DriverCard? driverCard,
    String? driverLicense,
    // Id get isarId => fastHash(id!);
  }) = _AuthenticationModel;

  factory AuthenticationModel.fromJson(Map<String, dynamic> json) =>
      _$AuthenticationModelFromJson(json);
}
