import 'package:freezed_annotation/freezed_annotation.dart';

part 'notif.freezed.dart';
part 'notif.g.dart';

@freezed
class Notif with _$Notif {
  const factory Notif({
    required String id,
    required bool deleted,
    required DateTime creationDate,
    required String notifyId,
    required String title,
    required String description,
    required String picture,
    required int notifyFor,
    required DateTime date,
    required String userId,
    required bool isRead,
    required int notificationDestination,
  }) = _Notif;

  factory Notif.fromJson(Map<String, dynamic> json) => _$NotifFromJson(json);
}
