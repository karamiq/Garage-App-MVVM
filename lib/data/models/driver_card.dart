import 'package:freezed_annotation/freezed_annotation.dart';

part 'driver_card.freezed.dart';
part 'driver_card.g.dart';

@freezed
class DriverCard with _$DriverCard {
  factory DriverCard({
    required String id,
    required DateTime creationDate,
    required bool deleted,
    required int number,
    required int balance,
    required String driverId,
    required String driverFullName,
    required DateTime expiredDate,
    required int cardStatus,
  }) = _DriverCard;

  factory DriverCard.fromJson(Map<String, dynamic> json) => _$DriverCardFromJson(json);
}
