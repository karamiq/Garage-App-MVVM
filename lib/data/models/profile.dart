import 'package:app/data/models/driver_card.dart';
import 'package:app/data/models/vehicle.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile.freezed.dart';
part 'profile.g.dart';

@freezed
class Profile with _$Profile {
  factory Profile({
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
  }) = _Profile;

  factory Profile.fromJson(Map<String, dynamic> json) => _$ProfileFromJson(json);
}
