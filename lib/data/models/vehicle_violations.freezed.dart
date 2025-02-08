// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vehicle_violations.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VehicleViolations _$VehicleViolationsFromJson(Map<String, dynamic> json) {
  return _VehicleViolations.fromJson(json);
}

/// @nodoc
mixin _$VehicleViolations {
  int get accumulatedPrice => throw _privateConstructorUsedError;
  int get numberOfViolation => throw _privateConstructorUsedError;
  List<Violation> get vehicleViolations => throw _privateConstructorUsedError;

  /// Serializes this VehicleViolations to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VehicleViolations
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VehicleViolationsCopyWith<VehicleViolations> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VehicleViolationsCopyWith<$Res> {
  factory $VehicleViolationsCopyWith(
          VehicleViolations value, $Res Function(VehicleViolations) then) =
      _$VehicleViolationsCopyWithImpl<$Res, VehicleViolations>;
  @useResult
  $Res call(
      {int accumulatedPrice,
      int numberOfViolation,
      List<Violation> vehicleViolations});
}

/// @nodoc
class _$VehicleViolationsCopyWithImpl<$Res, $Val extends VehicleViolations>
    implements $VehicleViolationsCopyWith<$Res> {
  _$VehicleViolationsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VehicleViolations
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accumulatedPrice = null,
    Object? numberOfViolation = null,
    Object? vehicleViolations = null,
  }) {
    return _then(_value.copyWith(
      accumulatedPrice: null == accumulatedPrice
          ? _value.accumulatedPrice
          : accumulatedPrice // ignore: cast_nullable_to_non_nullable
              as int,
      numberOfViolation: null == numberOfViolation
          ? _value.numberOfViolation
          : numberOfViolation // ignore: cast_nullable_to_non_nullable
              as int,
      vehicleViolations: null == vehicleViolations
          ? _value.vehicleViolations
          : vehicleViolations // ignore: cast_nullable_to_non_nullable
              as List<Violation>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VehicleViolationsImplCopyWith<$Res>
    implements $VehicleViolationsCopyWith<$Res> {
  factory _$$VehicleViolationsImplCopyWith(_$VehicleViolationsImpl value,
          $Res Function(_$VehicleViolationsImpl) then) =
      __$$VehicleViolationsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int accumulatedPrice,
      int numberOfViolation,
      List<Violation> vehicleViolations});
}

/// @nodoc
class __$$VehicleViolationsImplCopyWithImpl<$Res>
    extends _$VehicleViolationsCopyWithImpl<$Res, _$VehicleViolationsImpl>
    implements _$$VehicleViolationsImplCopyWith<$Res> {
  __$$VehicleViolationsImplCopyWithImpl(_$VehicleViolationsImpl _value,
      $Res Function(_$VehicleViolationsImpl) _then)
      : super(_value, _then);

  /// Create a copy of VehicleViolations
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accumulatedPrice = null,
    Object? numberOfViolation = null,
    Object? vehicleViolations = null,
  }) {
    return _then(_$VehicleViolationsImpl(
      accumulatedPrice: null == accumulatedPrice
          ? _value.accumulatedPrice
          : accumulatedPrice // ignore: cast_nullable_to_non_nullable
              as int,
      numberOfViolation: null == numberOfViolation
          ? _value.numberOfViolation
          : numberOfViolation // ignore: cast_nullable_to_non_nullable
              as int,
      vehicleViolations: null == vehicleViolations
          ? _value._vehicleViolations
          : vehicleViolations // ignore: cast_nullable_to_non_nullable
              as List<Violation>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VehicleViolationsImpl implements _VehicleViolations {
  _$VehicleViolationsImpl(
      {required this.accumulatedPrice,
      required this.numberOfViolation,
      required final List<Violation> vehicleViolations})
      : _vehicleViolations = vehicleViolations;

  factory _$VehicleViolationsImpl.fromJson(Map<String, dynamic> json) =>
      _$$VehicleViolationsImplFromJson(json);

  @override
  final int accumulatedPrice;
  @override
  final int numberOfViolation;
  final List<Violation> _vehicleViolations;
  @override
  List<Violation> get vehicleViolations {
    if (_vehicleViolations is EqualUnmodifiableListView)
      return _vehicleViolations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_vehicleViolations);
  }

  @override
  String toString() {
    return 'VehicleViolations(accumulatedPrice: $accumulatedPrice, numberOfViolation: $numberOfViolation, vehicleViolations: $vehicleViolations)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VehicleViolationsImpl &&
            (identical(other.accumulatedPrice, accumulatedPrice) ||
                other.accumulatedPrice == accumulatedPrice) &&
            (identical(other.numberOfViolation, numberOfViolation) ||
                other.numberOfViolation == numberOfViolation) &&
            const DeepCollectionEquality()
                .equals(other._vehicleViolations, _vehicleViolations));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      accumulatedPrice,
      numberOfViolation,
      const DeepCollectionEquality().hash(_vehicleViolations));

  /// Create a copy of VehicleViolations
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VehicleViolationsImplCopyWith<_$VehicleViolationsImpl> get copyWith =>
      __$$VehicleViolationsImplCopyWithImpl<_$VehicleViolationsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VehicleViolationsImplToJson(
      this,
    );
  }
}

abstract class _VehicleViolations implements VehicleViolations {
  factory _VehicleViolations(
          {required final int accumulatedPrice,
          required final int numberOfViolation,
          required final List<Violation> vehicleViolations}) =
      _$VehicleViolationsImpl;

  factory _VehicleViolations.fromJson(Map<String, dynamic> json) =
      _$VehicleViolationsImpl.fromJson;

  @override
  int get accumulatedPrice;
  @override
  int get numberOfViolation;
  @override
  List<Violation> get vehicleViolations;

  /// Create a copy of VehicleViolations
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VehicleViolationsImplCopyWith<_$VehicleViolationsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Violation _$ViolationFromJson(Map<String, dynamic> json) {
  return _Violation.fromJson(json);
}

/// @nodoc
mixin _$Violation {
  String get id => throw _privateConstructorUsedError;
  DateTime get creationDate => throw _privateConstructorUsedError;
  bool get deleted => throw _privateConstructorUsedError;
  int get number => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get userFullName => throw _privateConstructorUsedError;
  String get userGarageId => throw _privateConstructorUsedError;
  String get userGarageName => throw _privateConstructorUsedError;
  String get garageGovernorateName => throw _privateConstructorUsedError;
  String get vehicleId => throw _privateConstructorUsedError;
  String get vehicleChassisNumber => throw _privateConstructorUsedError;
  String get vehiclePlateCharacterName => throw _privateConstructorUsedError;
  String get vehiclePlateType => throw _privateConstructorUsedError;
  String get vehicleGovernorateName => throw _privateConstructorUsedError;
  String get plateNumber => throw _privateConstructorUsedError;
  FeeFines get feeFines => throw _privateConstructorUsedError;
  bool get isPaid => throw _privateConstructorUsedError;
  List<String> get images => throw _privateConstructorUsedError;
  int get duplicateCount => throw _privateConstructorUsedError;
  int get amount => throw _privateConstructorUsedError;
  int get totalAmount => throw _privateConstructorUsedError;
  String get lat => throw _privateConstructorUsedError;
  String get lng => throw _privateConstructorUsedError;
  int get invoiceNumber => throw _privateConstructorUsedError;
  String get violationPayReceiptId => throw _privateConstructorUsedError;
  int get violationPayReceiptNumber => throw _privateConstructorUsedError;

  /// Serializes this Violation to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Violation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ViolationCopyWith<Violation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ViolationCopyWith<$Res> {
  factory $ViolationCopyWith(Violation value, $Res Function(Violation) then) =
      _$ViolationCopyWithImpl<$Res, Violation>;
  @useResult
  $Res call(
      {String id,
      DateTime creationDate,
      bool deleted,
      int number,
      String userId,
      String userFullName,
      String userGarageId,
      String userGarageName,
      String garageGovernorateName,
      String vehicleId,
      String vehicleChassisNumber,
      String vehiclePlateCharacterName,
      String vehiclePlateType,
      String vehicleGovernorateName,
      String plateNumber,
      FeeFines feeFines,
      bool isPaid,
      List<String> images,
      int duplicateCount,
      int amount,
      int totalAmount,
      String lat,
      String lng,
      int invoiceNumber,
      String violationPayReceiptId,
      int violationPayReceiptNumber});

  $FeeFinesCopyWith<$Res> get feeFines;
}

/// @nodoc
class _$ViolationCopyWithImpl<$Res, $Val extends Violation>
    implements $ViolationCopyWith<$Res> {
  _$ViolationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Violation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? creationDate = null,
    Object? deleted = null,
    Object? number = null,
    Object? userId = null,
    Object? userFullName = null,
    Object? userGarageId = null,
    Object? userGarageName = null,
    Object? garageGovernorateName = null,
    Object? vehicleId = null,
    Object? vehicleChassisNumber = null,
    Object? vehiclePlateCharacterName = null,
    Object? vehiclePlateType = null,
    Object? vehicleGovernorateName = null,
    Object? plateNumber = null,
    Object? feeFines = null,
    Object? isPaid = null,
    Object? images = null,
    Object? duplicateCount = null,
    Object? amount = null,
    Object? totalAmount = null,
    Object? lat = null,
    Object? lng = null,
    Object? invoiceNumber = null,
    Object? violationPayReceiptId = null,
    Object? violationPayReceiptNumber = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      creationDate: null == creationDate
          ? _value.creationDate
          : creationDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      deleted: null == deleted
          ? _value.deleted
          : deleted // ignore: cast_nullable_to_non_nullable
              as bool,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      userFullName: null == userFullName
          ? _value.userFullName
          : userFullName // ignore: cast_nullable_to_non_nullable
              as String,
      userGarageId: null == userGarageId
          ? _value.userGarageId
          : userGarageId // ignore: cast_nullable_to_non_nullable
              as String,
      userGarageName: null == userGarageName
          ? _value.userGarageName
          : userGarageName // ignore: cast_nullable_to_non_nullable
              as String,
      garageGovernorateName: null == garageGovernorateName
          ? _value.garageGovernorateName
          : garageGovernorateName // ignore: cast_nullable_to_non_nullable
              as String,
      vehicleId: null == vehicleId
          ? _value.vehicleId
          : vehicleId // ignore: cast_nullable_to_non_nullable
              as String,
      vehicleChassisNumber: null == vehicleChassisNumber
          ? _value.vehicleChassisNumber
          : vehicleChassisNumber // ignore: cast_nullable_to_non_nullable
              as String,
      vehiclePlateCharacterName: null == vehiclePlateCharacterName
          ? _value.vehiclePlateCharacterName
          : vehiclePlateCharacterName // ignore: cast_nullable_to_non_nullable
              as String,
      vehiclePlateType: null == vehiclePlateType
          ? _value.vehiclePlateType
          : vehiclePlateType // ignore: cast_nullable_to_non_nullable
              as String,
      vehicleGovernorateName: null == vehicleGovernorateName
          ? _value.vehicleGovernorateName
          : vehicleGovernorateName // ignore: cast_nullable_to_non_nullable
              as String,
      plateNumber: null == plateNumber
          ? _value.plateNumber
          : plateNumber // ignore: cast_nullable_to_non_nullable
              as String,
      feeFines: null == feeFines
          ? _value.feeFines
          : feeFines // ignore: cast_nullable_to_non_nullable
              as FeeFines,
      isPaid: null == isPaid
          ? _value.isPaid
          : isPaid // ignore: cast_nullable_to_non_nullable
              as bool,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
      duplicateCount: null == duplicateCount
          ? _value.duplicateCount
          : duplicateCount // ignore: cast_nullable_to_non_nullable
              as int,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      totalAmount: null == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as int,
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as String,
      lng: null == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as String,
      invoiceNumber: null == invoiceNumber
          ? _value.invoiceNumber
          : invoiceNumber // ignore: cast_nullable_to_non_nullable
              as int,
      violationPayReceiptId: null == violationPayReceiptId
          ? _value.violationPayReceiptId
          : violationPayReceiptId // ignore: cast_nullable_to_non_nullable
              as String,
      violationPayReceiptNumber: null == violationPayReceiptNumber
          ? _value.violationPayReceiptNumber
          : violationPayReceiptNumber // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  /// Create a copy of Violation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FeeFinesCopyWith<$Res> get feeFines {
    return $FeeFinesCopyWith<$Res>(_value.feeFines, (value) {
      return _then(_value.copyWith(feeFines: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ViolationImplCopyWith<$Res>
    implements $ViolationCopyWith<$Res> {
  factory _$$ViolationImplCopyWith(
          _$ViolationImpl value, $Res Function(_$ViolationImpl) then) =
      __$$ViolationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      DateTime creationDate,
      bool deleted,
      int number,
      String userId,
      String userFullName,
      String userGarageId,
      String userGarageName,
      String garageGovernorateName,
      String vehicleId,
      String vehicleChassisNumber,
      String vehiclePlateCharacterName,
      String vehiclePlateType,
      String vehicleGovernorateName,
      String plateNumber,
      FeeFines feeFines,
      bool isPaid,
      List<String> images,
      int duplicateCount,
      int amount,
      int totalAmount,
      String lat,
      String lng,
      int invoiceNumber,
      String violationPayReceiptId,
      int violationPayReceiptNumber});

  @override
  $FeeFinesCopyWith<$Res> get feeFines;
}

/// @nodoc
class __$$ViolationImplCopyWithImpl<$Res>
    extends _$ViolationCopyWithImpl<$Res, _$ViolationImpl>
    implements _$$ViolationImplCopyWith<$Res> {
  __$$ViolationImplCopyWithImpl(
      _$ViolationImpl _value, $Res Function(_$ViolationImpl) _then)
      : super(_value, _then);

  /// Create a copy of Violation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? creationDate = null,
    Object? deleted = null,
    Object? number = null,
    Object? userId = null,
    Object? userFullName = null,
    Object? userGarageId = null,
    Object? userGarageName = null,
    Object? garageGovernorateName = null,
    Object? vehicleId = null,
    Object? vehicleChassisNumber = null,
    Object? vehiclePlateCharacterName = null,
    Object? vehiclePlateType = null,
    Object? vehicleGovernorateName = null,
    Object? plateNumber = null,
    Object? feeFines = null,
    Object? isPaid = null,
    Object? images = null,
    Object? duplicateCount = null,
    Object? amount = null,
    Object? totalAmount = null,
    Object? lat = null,
    Object? lng = null,
    Object? invoiceNumber = null,
    Object? violationPayReceiptId = null,
    Object? violationPayReceiptNumber = null,
  }) {
    return _then(_$ViolationImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      creationDate: null == creationDate
          ? _value.creationDate
          : creationDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      deleted: null == deleted
          ? _value.deleted
          : deleted // ignore: cast_nullable_to_non_nullable
              as bool,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      userFullName: null == userFullName
          ? _value.userFullName
          : userFullName // ignore: cast_nullable_to_non_nullable
              as String,
      userGarageId: null == userGarageId
          ? _value.userGarageId
          : userGarageId // ignore: cast_nullable_to_non_nullable
              as String,
      userGarageName: null == userGarageName
          ? _value.userGarageName
          : userGarageName // ignore: cast_nullable_to_non_nullable
              as String,
      garageGovernorateName: null == garageGovernorateName
          ? _value.garageGovernorateName
          : garageGovernorateName // ignore: cast_nullable_to_non_nullable
              as String,
      vehicleId: null == vehicleId
          ? _value.vehicleId
          : vehicleId // ignore: cast_nullable_to_non_nullable
              as String,
      vehicleChassisNumber: null == vehicleChassisNumber
          ? _value.vehicleChassisNumber
          : vehicleChassisNumber // ignore: cast_nullable_to_non_nullable
              as String,
      vehiclePlateCharacterName: null == vehiclePlateCharacterName
          ? _value.vehiclePlateCharacterName
          : vehiclePlateCharacterName // ignore: cast_nullable_to_non_nullable
              as String,
      vehiclePlateType: null == vehiclePlateType
          ? _value.vehiclePlateType
          : vehiclePlateType // ignore: cast_nullable_to_non_nullable
              as String,
      vehicleGovernorateName: null == vehicleGovernorateName
          ? _value.vehicleGovernorateName
          : vehicleGovernorateName // ignore: cast_nullable_to_non_nullable
              as String,
      plateNumber: null == plateNumber
          ? _value.plateNumber
          : plateNumber // ignore: cast_nullable_to_non_nullable
              as String,
      feeFines: null == feeFines
          ? _value.feeFines
          : feeFines // ignore: cast_nullable_to_non_nullable
              as FeeFines,
      isPaid: null == isPaid
          ? _value.isPaid
          : isPaid // ignore: cast_nullable_to_non_nullable
              as bool,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
      duplicateCount: null == duplicateCount
          ? _value.duplicateCount
          : duplicateCount // ignore: cast_nullable_to_non_nullable
              as int,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      totalAmount: null == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as int,
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as String,
      lng: null == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as String,
      invoiceNumber: null == invoiceNumber
          ? _value.invoiceNumber
          : invoiceNumber // ignore: cast_nullable_to_non_nullable
              as int,
      violationPayReceiptId: null == violationPayReceiptId
          ? _value.violationPayReceiptId
          : violationPayReceiptId // ignore: cast_nullable_to_non_nullable
              as String,
      violationPayReceiptNumber: null == violationPayReceiptNumber
          ? _value.violationPayReceiptNumber
          : violationPayReceiptNumber // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ViolationImpl implements _Violation {
  _$ViolationImpl(
      {required this.id,
      required this.creationDate,
      required this.deleted,
      required this.number,
      required this.userId,
      required this.userFullName,
      required this.userGarageId,
      required this.userGarageName,
      required this.garageGovernorateName,
      required this.vehicleId,
      required this.vehicleChassisNumber,
      required this.vehiclePlateCharacterName,
      required this.vehiclePlateType,
      required this.vehicleGovernorateName,
      required this.plateNumber,
      required this.feeFines,
      required this.isPaid,
      required final List<String> images,
      required this.duplicateCount,
      required this.amount,
      required this.totalAmount,
      required this.lat,
      required this.lng,
      required this.invoiceNumber,
      required this.violationPayReceiptId,
      required this.violationPayReceiptNumber})
      : _images = images;

  factory _$ViolationImpl.fromJson(Map<String, dynamic> json) =>
      _$$ViolationImplFromJson(json);

  @override
  final String id;
  @override
  final DateTime creationDate;
  @override
  final bool deleted;
  @override
  final int number;
  @override
  final String userId;
  @override
  final String userFullName;
  @override
  final String userGarageId;
  @override
  final String userGarageName;
  @override
  final String garageGovernorateName;
  @override
  final String vehicleId;
  @override
  final String vehicleChassisNumber;
  @override
  final String vehiclePlateCharacterName;
  @override
  final String vehiclePlateType;
  @override
  final String vehicleGovernorateName;
  @override
  final String plateNumber;
  @override
  final FeeFines feeFines;
  @override
  final bool isPaid;
  final List<String> _images;
  @override
  List<String> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  final int duplicateCount;
  @override
  final int amount;
  @override
  final int totalAmount;
  @override
  final String lat;
  @override
  final String lng;
  @override
  final int invoiceNumber;
  @override
  final String violationPayReceiptId;
  @override
  final int violationPayReceiptNumber;

  @override
  String toString() {
    return 'Violation(id: $id, creationDate: $creationDate, deleted: $deleted, number: $number, userId: $userId, userFullName: $userFullName, userGarageId: $userGarageId, userGarageName: $userGarageName, garageGovernorateName: $garageGovernorateName, vehicleId: $vehicleId, vehicleChassisNumber: $vehicleChassisNumber, vehiclePlateCharacterName: $vehiclePlateCharacterName, vehiclePlateType: $vehiclePlateType, vehicleGovernorateName: $vehicleGovernorateName, plateNumber: $plateNumber, feeFines: $feeFines, isPaid: $isPaid, images: $images, duplicateCount: $duplicateCount, amount: $amount, totalAmount: $totalAmount, lat: $lat, lng: $lng, invoiceNumber: $invoiceNumber, violationPayReceiptId: $violationPayReceiptId, violationPayReceiptNumber: $violationPayReceiptNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ViolationImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.creationDate, creationDate) ||
                other.creationDate == creationDate) &&
            (identical(other.deleted, deleted) || other.deleted == deleted) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.userFullName, userFullName) ||
                other.userFullName == userFullName) &&
            (identical(other.userGarageId, userGarageId) ||
                other.userGarageId == userGarageId) &&
            (identical(other.userGarageName, userGarageName) ||
                other.userGarageName == userGarageName) &&
            (identical(other.garageGovernorateName, garageGovernorateName) ||
                other.garageGovernorateName == garageGovernorateName) &&
            (identical(other.vehicleId, vehicleId) ||
                other.vehicleId == vehicleId) &&
            (identical(other.vehicleChassisNumber, vehicleChassisNumber) ||
                other.vehicleChassisNumber == vehicleChassisNumber) &&
            (identical(other.vehiclePlateCharacterName,
                    vehiclePlateCharacterName) ||
                other.vehiclePlateCharacterName == vehiclePlateCharacterName) &&
            (identical(other.vehiclePlateType, vehiclePlateType) ||
                other.vehiclePlateType == vehiclePlateType) &&
            (identical(other.vehicleGovernorateName, vehicleGovernorateName) ||
                other.vehicleGovernorateName == vehicleGovernorateName) &&
            (identical(other.plateNumber, plateNumber) ||
                other.plateNumber == plateNumber) &&
            (identical(other.feeFines, feeFines) ||
                other.feeFines == feeFines) &&
            (identical(other.isPaid, isPaid) || other.isPaid == isPaid) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.duplicateCount, duplicateCount) ||
                other.duplicateCount == duplicateCount) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.totalAmount, totalAmount) ||
                other.totalAmount == totalAmount) &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lng, lng) || other.lng == lng) &&
            (identical(other.invoiceNumber, invoiceNumber) ||
                other.invoiceNumber == invoiceNumber) &&
            (identical(other.violationPayReceiptId, violationPayReceiptId) ||
                other.violationPayReceiptId == violationPayReceiptId) &&
            (identical(other.violationPayReceiptNumber,
                    violationPayReceiptNumber) ||
                other.violationPayReceiptNumber == violationPayReceiptNumber));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        creationDate,
        deleted,
        number,
        userId,
        userFullName,
        userGarageId,
        userGarageName,
        garageGovernorateName,
        vehicleId,
        vehicleChassisNumber,
        vehiclePlateCharacterName,
        vehiclePlateType,
        vehicleGovernorateName,
        plateNumber,
        feeFines,
        isPaid,
        const DeepCollectionEquality().hash(_images),
        duplicateCount,
        amount,
        totalAmount,
        lat,
        lng,
        invoiceNumber,
        violationPayReceiptId,
        violationPayReceiptNumber
      ]);

  /// Create a copy of Violation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ViolationImplCopyWith<_$ViolationImpl> get copyWith =>
      __$$ViolationImplCopyWithImpl<_$ViolationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ViolationImplToJson(
      this,
    );
  }
}

abstract class _Violation implements Violation {
  factory _Violation(
      {required final String id,
      required final DateTime creationDate,
      required final bool deleted,
      required final int number,
      required final String userId,
      required final String userFullName,
      required final String userGarageId,
      required final String userGarageName,
      required final String garageGovernorateName,
      required final String vehicleId,
      required final String vehicleChassisNumber,
      required final String vehiclePlateCharacterName,
      required final String vehiclePlateType,
      required final String vehicleGovernorateName,
      required final String plateNumber,
      required final FeeFines feeFines,
      required final bool isPaid,
      required final List<String> images,
      required final int duplicateCount,
      required final int amount,
      required final int totalAmount,
      required final String lat,
      required final String lng,
      required final int invoiceNumber,
      required final String violationPayReceiptId,
      required final int violationPayReceiptNumber}) = _$ViolationImpl;

  factory _Violation.fromJson(Map<String, dynamic> json) =
      _$ViolationImpl.fromJson;

  @override
  String get id;
  @override
  DateTime get creationDate;
  @override
  bool get deleted;
  @override
  int get number;
  @override
  String get userId;
  @override
  String get userFullName;
  @override
  String get userGarageId;
  @override
  String get userGarageName;
  @override
  String get garageGovernorateName;
  @override
  String get vehicleId;
  @override
  String get vehicleChassisNumber;
  @override
  String get vehiclePlateCharacterName;
  @override
  String get vehiclePlateType;
  @override
  String get vehicleGovernorateName;
  @override
  String get plateNumber;
  @override
  FeeFines get feeFines;
  @override
  bool get isPaid;
  @override
  List<String> get images;
  @override
  int get duplicateCount;
  @override
  int get amount;
  @override
  int get totalAmount;
  @override
  String get lat;
  @override
  String get lng;
  @override
  int get invoiceNumber;
  @override
  String get violationPayReceiptId;
  @override
  int get violationPayReceiptNumber;

  /// Create a copy of Violation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ViolationImplCopyWith<_$ViolationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FeeFines _$FeeFinesFromJson(Map<String, dynamic> json) {
  return _FeeFines.fromJson(json);
}

/// @nodoc
mixin _$FeeFines {
  String get id => throw _privateConstructorUsedError;
  DateTime get creationDate => throw _privateConstructorUsedError;
  bool get deleted => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get amount => throw _privateConstructorUsedError;
  int get type => throw _privateConstructorUsedError;

  /// Serializes this FeeFines to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FeeFines
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FeeFinesCopyWith<FeeFines> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeeFinesCopyWith<$Res> {
  factory $FeeFinesCopyWith(FeeFines value, $Res Function(FeeFines) then) =
      _$FeeFinesCopyWithImpl<$Res, FeeFines>;
  @useResult
  $Res call(
      {String id,
      DateTime creationDate,
      bool deleted,
      String name,
      int amount,
      int type});
}

/// @nodoc
class _$FeeFinesCopyWithImpl<$Res, $Val extends FeeFines>
    implements $FeeFinesCopyWith<$Res> {
  _$FeeFinesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FeeFines
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? creationDate = null,
    Object? deleted = null,
    Object? name = null,
    Object? amount = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      creationDate: null == creationDate
          ? _value.creationDate
          : creationDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      deleted: null == deleted
          ? _value.deleted
          : deleted // ignore: cast_nullable_to_non_nullable
              as bool,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FeeFinesImplCopyWith<$Res>
    implements $FeeFinesCopyWith<$Res> {
  factory _$$FeeFinesImplCopyWith(
          _$FeeFinesImpl value, $Res Function(_$FeeFinesImpl) then) =
      __$$FeeFinesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      DateTime creationDate,
      bool deleted,
      String name,
      int amount,
      int type});
}

/// @nodoc
class __$$FeeFinesImplCopyWithImpl<$Res>
    extends _$FeeFinesCopyWithImpl<$Res, _$FeeFinesImpl>
    implements _$$FeeFinesImplCopyWith<$Res> {
  __$$FeeFinesImplCopyWithImpl(
      _$FeeFinesImpl _value, $Res Function(_$FeeFinesImpl) _then)
      : super(_value, _then);

  /// Create a copy of FeeFines
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? creationDate = null,
    Object? deleted = null,
    Object? name = null,
    Object? amount = null,
    Object? type = null,
  }) {
    return _then(_$FeeFinesImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      creationDate: null == creationDate
          ? _value.creationDate
          : creationDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      deleted: null == deleted
          ? _value.deleted
          : deleted // ignore: cast_nullable_to_non_nullable
              as bool,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FeeFinesImpl implements _FeeFines {
  _$FeeFinesImpl(
      {required this.id,
      required this.creationDate,
      required this.deleted,
      required this.name,
      required this.amount,
      required this.type});

  factory _$FeeFinesImpl.fromJson(Map<String, dynamic> json) =>
      _$$FeeFinesImplFromJson(json);

  @override
  final String id;
  @override
  final DateTime creationDate;
  @override
  final bool deleted;
  @override
  final String name;
  @override
  final int amount;
  @override
  final int type;

  @override
  String toString() {
    return 'FeeFines(id: $id, creationDate: $creationDate, deleted: $deleted, name: $name, amount: $amount, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeeFinesImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.creationDate, creationDate) ||
                other.creationDate == creationDate) &&
            (identical(other.deleted, deleted) || other.deleted == deleted) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, creationDate, deleted, name, amount, type);

  /// Create a copy of FeeFines
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FeeFinesImplCopyWith<_$FeeFinesImpl> get copyWith =>
      __$$FeeFinesImplCopyWithImpl<_$FeeFinesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FeeFinesImplToJson(
      this,
    );
  }
}

abstract class _FeeFines implements FeeFines {
  factory _FeeFines(
      {required final String id,
      required final DateTime creationDate,
      required final bool deleted,
      required final String name,
      required final int amount,
      required final int type}) = _$FeeFinesImpl;

  factory _FeeFines.fromJson(Map<String, dynamic> json) =
      _$FeeFinesImpl.fromJson;

  @override
  String get id;
  @override
  DateTime get creationDate;
  @override
  bool get deleted;
  @override
  String get name;
  @override
  int get amount;
  @override
  int get type;

  /// Create a copy of FeeFines
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FeeFinesImplCopyWith<_$FeeFinesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
