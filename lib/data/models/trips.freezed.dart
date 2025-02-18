// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trips.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LastTrips _$LastTripsFromJson(Map<String, dynamic> json) {
  return _LastTrips.fromJson(json);
}

/// @nodoc
mixin _$LastTrips {
  int get weeklyTripNumber => throw _privateConstructorUsedError;
  int get weeklyTripPercentage => throw _privateConstructorUsedError;
  int get totalTripNumber => throw _privateConstructorUsedError;
  int get totalTripPercentage => throw _privateConstructorUsedError;
  List<TripInfo> get tripHistory => throw _privateConstructorUsedError;

  /// Serializes this LastTrips to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LastTrips
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LastTripsCopyWith<LastTrips> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LastTripsCopyWith<$Res> {
  factory $LastTripsCopyWith(LastTrips value, $Res Function(LastTrips) then) =
      _$LastTripsCopyWithImpl<$Res, LastTrips>;
  @useResult
  $Res call(
      {int weeklyTripNumber,
      int weeklyTripPercentage,
      int totalTripNumber,
      int totalTripPercentage,
      List<TripInfo> tripHistory});
}

/// @nodoc
class _$LastTripsCopyWithImpl<$Res, $Val extends LastTrips>
    implements $LastTripsCopyWith<$Res> {
  _$LastTripsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LastTrips
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weeklyTripNumber = null,
    Object? weeklyTripPercentage = null,
    Object? totalTripNumber = null,
    Object? totalTripPercentage = null,
    Object? tripHistory = null,
  }) {
    return _then(_value.copyWith(
      weeklyTripNumber: null == weeklyTripNumber
          ? _value.weeklyTripNumber
          : weeklyTripNumber // ignore: cast_nullable_to_non_nullable
              as int,
      weeklyTripPercentage: null == weeklyTripPercentage
          ? _value.weeklyTripPercentage
          : weeklyTripPercentage // ignore: cast_nullable_to_non_nullable
              as int,
      totalTripNumber: null == totalTripNumber
          ? _value.totalTripNumber
          : totalTripNumber // ignore: cast_nullable_to_non_nullable
              as int,
      totalTripPercentage: null == totalTripPercentage
          ? _value.totalTripPercentage
          : totalTripPercentage // ignore: cast_nullable_to_non_nullable
              as int,
      tripHistory: null == tripHistory
          ? _value.tripHistory
          : tripHistory // ignore: cast_nullable_to_non_nullable
              as List<TripInfo>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LastTripsImplCopyWith<$Res>
    implements $LastTripsCopyWith<$Res> {
  factory _$$LastTripsImplCopyWith(
          _$LastTripsImpl value, $Res Function(_$LastTripsImpl) then) =
      __$$LastTripsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int weeklyTripNumber,
      int weeklyTripPercentage,
      int totalTripNumber,
      int totalTripPercentage,
      List<TripInfo> tripHistory});
}

/// @nodoc
class __$$LastTripsImplCopyWithImpl<$Res>
    extends _$LastTripsCopyWithImpl<$Res, _$LastTripsImpl>
    implements _$$LastTripsImplCopyWith<$Res> {
  __$$LastTripsImplCopyWithImpl(
      _$LastTripsImpl _value, $Res Function(_$LastTripsImpl) _then)
      : super(_value, _then);

  /// Create a copy of LastTrips
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weeklyTripNumber = null,
    Object? weeklyTripPercentage = null,
    Object? totalTripNumber = null,
    Object? totalTripPercentage = null,
    Object? tripHistory = null,
  }) {
    return _then(_$LastTripsImpl(
      weeklyTripNumber: null == weeklyTripNumber
          ? _value.weeklyTripNumber
          : weeklyTripNumber // ignore: cast_nullable_to_non_nullable
              as int,
      weeklyTripPercentage: null == weeklyTripPercentage
          ? _value.weeklyTripPercentage
          : weeklyTripPercentage // ignore: cast_nullable_to_non_nullable
              as int,
      totalTripNumber: null == totalTripNumber
          ? _value.totalTripNumber
          : totalTripNumber // ignore: cast_nullable_to_non_nullable
              as int,
      totalTripPercentage: null == totalTripPercentage
          ? _value.totalTripPercentage
          : totalTripPercentage // ignore: cast_nullable_to_non_nullable
              as int,
      tripHistory: null == tripHistory
          ? _value._tripHistory
          : tripHistory // ignore: cast_nullable_to_non_nullable
              as List<TripInfo>,
    ));
  }
}

/// @nodoc

@jsonSerializableResponse
class _$LastTripsImpl implements _LastTrips {
  _$LastTripsImpl(
      {required this.weeklyTripNumber,
      required this.weeklyTripPercentage,
      required this.totalTripNumber,
      required this.totalTripPercentage,
      required final List<TripInfo> tripHistory})
      : _tripHistory = tripHistory;

  factory _$LastTripsImpl.fromJson(Map<String, dynamic> json) =>
      _$$LastTripsImplFromJson(json);

  @override
  final int weeklyTripNumber;
  @override
  final int weeklyTripPercentage;
  @override
  final int totalTripNumber;
  @override
  final int totalTripPercentage;
  final List<TripInfo> _tripHistory;
  @override
  List<TripInfo> get tripHistory {
    if (_tripHistory is EqualUnmodifiableListView) return _tripHistory;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tripHistory);
  }

  @override
  String toString() {
    return 'LastTrips(weeklyTripNumber: $weeklyTripNumber, weeklyTripPercentage: $weeklyTripPercentage, totalTripNumber: $totalTripNumber, totalTripPercentage: $totalTripPercentage, tripHistory: $tripHistory)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LastTripsImpl &&
            (identical(other.weeklyTripNumber, weeklyTripNumber) ||
                other.weeklyTripNumber == weeklyTripNumber) &&
            (identical(other.weeklyTripPercentage, weeklyTripPercentage) ||
                other.weeklyTripPercentage == weeklyTripPercentage) &&
            (identical(other.totalTripNumber, totalTripNumber) ||
                other.totalTripNumber == totalTripNumber) &&
            (identical(other.totalTripPercentage, totalTripPercentage) ||
                other.totalTripPercentage == totalTripPercentage) &&
            const DeepCollectionEquality()
                .equals(other._tripHistory, _tripHistory));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      weeklyTripNumber,
      weeklyTripPercentage,
      totalTripNumber,
      totalTripPercentage,
      const DeepCollectionEquality().hash(_tripHistory));

  /// Create a copy of LastTrips
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LastTripsImplCopyWith<_$LastTripsImpl> get copyWith =>
      __$$LastTripsImplCopyWithImpl<_$LastTripsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LastTripsImplToJson(
      this,
    );
  }
}

abstract class _LastTrips implements LastTrips {
  factory _LastTrips(
      {required final int weeklyTripNumber,
      required final int weeklyTripPercentage,
      required final int totalTripNumber,
      required final int totalTripPercentage,
      required final List<TripInfo> tripHistory}) = _$LastTripsImpl;

  factory _LastTrips.fromJson(Map<String, dynamic> json) =
      _$LastTripsImpl.fromJson;

  @override
  int get weeklyTripNumber;
  @override
  int get weeklyTripPercentage;
  @override
  int get totalTripNumber;
  @override
  int get totalTripPercentage;
  @override
  List<TripInfo> get tripHistory;

  /// Create a copy of LastTrips
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LastTripsImplCopyWith<_$LastTripsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
