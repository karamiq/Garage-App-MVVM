import 'package:freezed_annotation/freezed_annotation.dart';

import '../../utils/annotations/annotations_lib.dart';
import 'trip_info_model.dart';

part 'trips.freezed.dart';
part 'trips.g.dart';

@freezedResponse
class LastTrips with _$LastTrips {
  @jsonSerializableResponse
  factory LastTrips({
    required int weeklyTripNumber,
    required int weeklyTripPercentage,
    required int totalTripNumber,
    required int totalTripPercentage,
    required List<TripInfo> tripHistory,
  }) = _LastTrips;

  factory LastTrips.fromJson(Map<String, dynamic> json) => _$LastTripsFromJson(json);
}
