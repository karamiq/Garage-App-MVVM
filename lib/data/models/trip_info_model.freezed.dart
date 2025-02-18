// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trip_info_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TripInfo _$TripInfoFromJson(Map<String, dynamic> json) {
  return _TripInfo.fromJson(json);
}

/// @nodoc
mixin _$TripInfo {
//required String id,
  DateTime get date => throw _privateConstructorUsedError;
  int get tripNumber => throw _privateConstructorUsedError;
  String get fromGarage => throw _privateConstructorUsedError;
  String get toGarage => throw _privateConstructorUsedError;
  DateTime get departureTime => throw _privateConstructorUsedError;
  DateTime get arrivalTime => throw _privateConstructorUsedError;
  String get duration => throw _privateConstructorUsedError;
  List<Deduction> get deductions => throw _privateConstructorUsedError;
  int get totalPrice => throw _privateConstructorUsedError;

  /// Serializes this TripInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TripInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TripInfoCopyWith<TripInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TripInfoCopyWith<$Res> {
  factory $TripInfoCopyWith(TripInfo value, $Res Function(TripInfo) then) =
      _$TripInfoCopyWithImpl<$Res, TripInfo>;
  @useResult
  $Res call(
      {DateTime date,
      int tripNumber,
      String fromGarage,
      String toGarage,
      DateTime departureTime,
      DateTime arrivalTime,
      String duration,
      List<Deduction> deductions,
      int totalPrice});
}

/// @nodoc
class _$TripInfoCopyWithImpl<$Res, $Val extends TripInfo>
    implements $TripInfoCopyWith<$Res> {
  _$TripInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TripInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? tripNumber = null,
    Object? fromGarage = null,
    Object? toGarage = null,
    Object? departureTime = null,
    Object? arrivalTime = null,
    Object? duration = null,
    Object? deductions = null,
    Object? totalPrice = null,
  }) {
    return _then(_value.copyWith(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      tripNumber: null == tripNumber
          ? _value.tripNumber
          : tripNumber // ignore: cast_nullable_to_non_nullable
              as int,
      fromGarage: null == fromGarage
          ? _value.fromGarage
          : fromGarage // ignore: cast_nullable_to_non_nullable
              as String,
      toGarage: null == toGarage
          ? _value.toGarage
          : toGarage // ignore: cast_nullable_to_non_nullable
              as String,
      departureTime: null == departureTime
          ? _value.departureTime
          : departureTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      arrivalTime: null == arrivalTime
          ? _value.arrivalTime
          : arrivalTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String,
      deductions: null == deductions
          ? _value.deductions
          : deductions // ignore: cast_nullable_to_non_nullable
              as List<Deduction>,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TripInfoImplCopyWith<$Res>
    implements $TripInfoCopyWith<$Res> {
  factory _$$TripInfoImplCopyWith(
          _$TripInfoImpl value, $Res Function(_$TripInfoImpl) then) =
      __$$TripInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime date,
      int tripNumber,
      String fromGarage,
      String toGarage,
      DateTime departureTime,
      DateTime arrivalTime,
      String duration,
      List<Deduction> deductions,
      int totalPrice});
}

/// @nodoc
class __$$TripInfoImplCopyWithImpl<$Res>
    extends _$TripInfoCopyWithImpl<$Res, _$TripInfoImpl>
    implements _$$TripInfoImplCopyWith<$Res> {
  __$$TripInfoImplCopyWithImpl(
      _$TripInfoImpl _value, $Res Function(_$TripInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of TripInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? tripNumber = null,
    Object? fromGarage = null,
    Object? toGarage = null,
    Object? departureTime = null,
    Object? arrivalTime = null,
    Object? duration = null,
    Object? deductions = null,
    Object? totalPrice = null,
  }) {
    return _then(_$TripInfoImpl(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      tripNumber: null == tripNumber
          ? _value.tripNumber
          : tripNumber // ignore: cast_nullable_to_non_nullable
              as int,
      fromGarage: null == fromGarage
          ? _value.fromGarage
          : fromGarage // ignore: cast_nullable_to_non_nullable
              as String,
      toGarage: null == toGarage
          ? _value.toGarage
          : toGarage // ignore: cast_nullable_to_non_nullable
              as String,
      departureTime: null == departureTime
          ? _value.departureTime
          : departureTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      arrivalTime: null == arrivalTime
          ? _value.arrivalTime
          : arrivalTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String,
      deductions: null == deductions
          ? _value._deductions
          : deductions // ignore: cast_nullable_to_non_nullable
              as List<Deduction>,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@jsonSerializableResponse
class _$TripInfoImpl implements _TripInfo {
  const _$TripInfoImpl(
      {required this.date,
      required this.tripNumber,
      required this.fromGarage,
      required this.toGarage,
      required this.departureTime,
      required this.arrivalTime,
      required this.duration,
      required final List<Deduction> deductions,
      required this.totalPrice})
      : _deductions = deductions;

  factory _$TripInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$TripInfoImplFromJson(json);

//required String id,
  @override
  final DateTime date;
  @override
  final int tripNumber;
  @override
  final String fromGarage;
  @override
  final String toGarage;
  @override
  final DateTime departureTime;
  @override
  final DateTime arrivalTime;
  @override
  final String duration;
  final List<Deduction> _deductions;
  @override
  List<Deduction> get deductions {
    if (_deductions is EqualUnmodifiableListView) return _deductions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_deductions);
  }

  @override
  final int totalPrice;

  @override
  String toString() {
    return 'TripInfo(date: $date, tripNumber: $tripNumber, fromGarage: $fromGarage, toGarage: $toGarage, departureTime: $departureTime, arrivalTime: $arrivalTime, duration: $duration, deductions: $deductions, totalPrice: $totalPrice)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TripInfoImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.tripNumber, tripNumber) ||
                other.tripNumber == tripNumber) &&
            (identical(other.fromGarage, fromGarage) ||
                other.fromGarage == fromGarage) &&
            (identical(other.toGarage, toGarage) ||
                other.toGarage == toGarage) &&
            (identical(other.departureTime, departureTime) ||
                other.departureTime == departureTime) &&
            (identical(other.arrivalTime, arrivalTime) ||
                other.arrivalTime == arrivalTime) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            const DeepCollectionEquality()
                .equals(other._deductions, _deductions) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      date,
      tripNumber,
      fromGarage,
      toGarage,
      departureTime,
      arrivalTime,
      duration,
      const DeepCollectionEquality().hash(_deductions),
      totalPrice);

  /// Create a copy of TripInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TripInfoImplCopyWith<_$TripInfoImpl> get copyWith =>
      __$$TripInfoImplCopyWithImpl<_$TripInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TripInfoImplToJson(
      this,
    );
  }
}

abstract class _TripInfo implements TripInfo {
  const factory _TripInfo(
      {required final DateTime date,
      required final int tripNumber,
      required final String fromGarage,
      required final String toGarage,
      required final DateTime departureTime,
      required final DateTime arrivalTime,
      required final String duration,
      required final List<Deduction> deductions,
      required final int totalPrice}) = _$TripInfoImpl;

  factory _TripInfo.fromJson(Map<String, dynamic> json) =
      _$TripInfoImpl.fromJson;

//required String id,
  @override
  DateTime get date;
  @override
  int get tripNumber;
  @override
  String get fromGarage;
  @override
  String get toGarage;
  @override
  DateTime get departureTime;
  @override
  DateTime get arrivalTime;
  @override
  String get duration;
  @override
  List<Deduction> get deductions;
  @override
  int get totalPrice;

  /// Create a copy of TripInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TripInfoImplCopyWith<_$TripInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Deduction _$DeductionFromJson(Map<String, dynamic> json) {
  return _Deduction.fromJson(json);
}

/// @nodoc
mixin _$Deduction {
  String get name => throw _privateConstructorUsedError;
  int get amount => throw _privateConstructorUsedError;

  /// Serializes this Deduction to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Deduction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeductionCopyWith<Deduction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeductionCopyWith<$Res> {
  factory $DeductionCopyWith(Deduction value, $Res Function(Deduction) then) =
      _$DeductionCopyWithImpl<$Res, Deduction>;
  @useResult
  $Res call({String name, int amount});
}

/// @nodoc
class _$DeductionCopyWithImpl<$Res, $Val extends Deduction>
    implements $DeductionCopyWith<$Res> {
  _$DeductionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Deduction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? amount = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeductionImplCopyWith<$Res>
    implements $DeductionCopyWith<$Res> {
  factory _$$DeductionImplCopyWith(
          _$DeductionImpl value, $Res Function(_$DeductionImpl) then) =
      __$$DeductionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, int amount});
}

/// @nodoc
class __$$DeductionImplCopyWithImpl<$Res>
    extends _$DeductionCopyWithImpl<$Res, _$DeductionImpl>
    implements _$$DeductionImplCopyWith<$Res> {
  __$$DeductionImplCopyWithImpl(
      _$DeductionImpl _value, $Res Function(_$DeductionImpl) _then)
      : super(_value, _then);

  /// Create a copy of Deduction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? amount = null,
  }) {
    return _then(_$DeductionImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@jsonSerializableResponse
class _$DeductionImpl implements _Deduction {
  const _$DeductionImpl({required this.name, required this.amount});

  factory _$DeductionImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeductionImplFromJson(json);

  @override
  final String name;
  @override
  final int amount;

  @override
  String toString() {
    return 'Deduction(name: $name, amount: $amount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeductionImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, amount);

  /// Create a copy of Deduction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeductionImplCopyWith<_$DeductionImpl> get copyWith =>
      __$$DeductionImplCopyWithImpl<_$DeductionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeductionImplToJson(
      this,
    );
  }
}

abstract class _Deduction implements Deduction {
  const factory _Deduction(
      {required final String name,
      required final int amount}) = _$DeductionImpl;

  factory _Deduction.fromJson(Map<String, dynamic> json) =
      _$DeductionImpl.fromJson;

  @override
  String get name;
  @override
  int get amount;

  /// Create a copy of Deduction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeductionImplCopyWith<_$DeductionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
