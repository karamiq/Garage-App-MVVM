// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vehicle_debt_statement.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VehicleDebtStatement _$VehicleDebtStatementFromJson(Map<String, dynamic> json) {
  return _VehicleDebtStatement.fromJson(json);
}

/// @nodoc
mixin _$VehicleDebtStatement {
  int get accumulatedPrice => throw _privateConstructorUsedError;
  int get numberOfReceipt => throw _privateConstructorUsedError;
  List<DebtStatementReceipt> get debtStatementReceipts =>
      throw _privateConstructorUsedError;

  /// Serializes this VehicleDebtStatement to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VehicleDebtStatement
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VehicleDebtStatementCopyWith<VehicleDebtStatement> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VehicleDebtStatementCopyWith<$Res> {
  factory $VehicleDebtStatementCopyWith(VehicleDebtStatement value,
          $Res Function(VehicleDebtStatement) then) =
      _$VehicleDebtStatementCopyWithImpl<$Res, VehicleDebtStatement>;
  @useResult
  $Res call(
      {int accumulatedPrice,
      int numberOfReceipt,
      List<DebtStatementReceipt> debtStatementReceipts});
}

/// @nodoc
class _$VehicleDebtStatementCopyWithImpl<$Res,
        $Val extends VehicleDebtStatement>
    implements $VehicleDebtStatementCopyWith<$Res> {
  _$VehicleDebtStatementCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VehicleDebtStatement
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accumulatedPrice = null,
    Object? numberOfReceipt = null,
    Object? debtStatementReceipts = null,
  }) {
    return _then(_value.copyWith(
      accumulatedPrice: null == accumulatedPrice
          ? _value.accumulatedPrice
          : accumulatedPrice // ignore: cast_nullable_to_non_nullable
              as int,
      numberOfReceipt: null == numberOfReceipt
          ? _value.numberOfReceipt
          : numberOfReceipt // ignore: cast_nullable_to_non_nullable
              as int,
      debtStatementReceipts: null == debtStatementReceipts
          ? _value.debtStatementReceipts
          : debtStatementReceipts // ignore: cast_nullable_to_non_nullable
              as List<DebtStatementReceipt>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VehicleDebtStatementImplCopyWith<$Res>
    implements $VehicleDebtStatementCopyWith<$Res> {
  factory _$$VehicleDebtStatementImplCopyWith(_$VehicleDebtStatementImpl value,
          $Res Function(_$VehicleDebtStatementImpl) then) =
      __$$VehicleDebtStatementImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int accumulatedPrice,
      int numberOfReceipt,
      List<DebtStatementReceipt> debtStatementReceipts});
}

/// @nodoc
class __$$VehicleDebtStatementImplCopyWithImpl<$Res>
    extends _$VehicleDebtStatementCopyWithImpl<$Res, _$VehicleDebtStatementImpl>
    implements _$$VehicleDebtStatementImplCopyWith<$Res> {
  __$$VehicleDebtStatementImplCopyWithImpl(_$VehicleDebtStatementImpl _value,
      $Res Function(_$VehicleDebtStatementImpl) _then)
      : super(_value, _then);

  /// Create a copy of VehicleDebtStatement
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accumulatedPrice = null,
    Object? numberOfReceipt = null,
    Object? debtStatementReceipts = null,
  }) {
    return _then(_$VehicleDebtStatementImpl(
      accumulatedPrice: null == accumulatedPrice
          ? _value.accumulatedPrice
          : accumulatedPrice // ignore: cast_nullable_to_non_nullable
              as int,
      numberOfReceipt: null == numberOfReceipt
          ? _value.numberOfReceipt
          : numberOfReceipt // ignore: cast_nullable_to_non_nullable
              as int,
      debtStatementReceipts: null == debtStatementReceipts
          ? _value._debtStatementReceipts
          : debtStatementReceipts // ignore: cast_nullable_to_non_nullable
              as List<DebtStatementReceipt>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VehicleDebtStatementImpl implements _VehicleDebtStatement {
  _$VehicleDebtStatementImpl(
      {required this.accumulatedPrice,
      required this.numberOfReceipt,
      required final List<DebtStatementReceipt> debtStatementReceipts})
      : _debtStatementReceipts = debtStatementReceipts;

  factory _$VehicleDebtStatementImpl.fromJson(Map<String, dynamic> json) =>
      _$$VehicleDebtStatementImplFromJson(json);

  @override
  final int accumulatedPrice;
  @override
  final int numberOfReceipt;
  final List<DebtStatementReceipt> _debtStatementReceipts;
  @override
  List<DebtStatementReceipt> get debtStatementReceipts {
    if (_debtStatementReceipts is EqualUnmodifiableListView)
      return _debtStatementReceipts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_debtStatementReceipts);
  }

  @override
  String toString() {
    return 'VehicleDebtStatement(accumulatedPrice: $accumulatedPrice, numberOfReceipt: $numberOfReceipt, debtStatementReceipts: $debtStatementReceipts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VehicleDebtStatementImpl &&
            (identical(other.accumulatedPrice, accumulatedPrice) ||
                other.accumulatedPrice == accumulatedPrice) &&
            (identical(other.numberOfReceipt, numberOfReceipt) ||
                other.numberOfReceipt == numberOfReceipt) &&
            const DeepCollectionEquality()
                .equals(other._debtStatementReceipts, _debtStatementReceipts));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      accumulatedPrice,
      numberOfReceipt,
      const DeepCollectionEquality().hash(_debtStatementReceipts));

  /// Create a copy of VehicleDebtStatement
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VehicleDebtStatementImplCopyWith<_$VehicleDebtStatementImpl>
      get copyWith =>
          __$$VehicleDebtStatementImplCopyWithImpl<_$VehicleDebtStatementImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VehicleDebtStatementImplToJson(
      this,
    );
  }
}

abstract class _VehicleDebtStatement implements VehicleDebtStatement {
  factory _VehicleDebtStatement(
          {required final int accumulatedPrice,
          required final int numberOfReceipt,
          required final List<DebtStatementReceipt> debtStatementReceipts}) =
      _$VehicleDebtStatementImpl;

  factory _VehicleDebtStatement.fromJson(Map<String, dynamic> json) =
      _$VehicleDebtStatementImpl.fromJson;

  @override
  int get accumulatedPrice;
  @override
  int get numberOfReceipt;
  @override
  List<DebtStatementReceipt> get debtStatementReceipts;

  /// Create a copy of VehicleDebtStatement
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VehicleDebtStatementImplCopyWith<_$VehicleDebtStatementImpl>
      get copyWith => throw _privateConstructorUsedError;
}

DebtStatementReceipt _$DebtStatementReceiptFromJson(Map<String, dynamic> json) {
  return _DebtStatementReceipt.fromJson(json);
}

/// @nodoc
mixin _$DebtStatementReceipt {
  String get id => throw _privateConstructorUsedError;
  DateTime get creationDate => throw _privateConstructorUsedError;
  bool get deleted => throw _privateConstructorUsedError;
  int get number => throw _privateConstructorUsedError;
  int get amount => throw _privateConstructorUsedError;
  String get vehicleId => throw _privateConstructorUsedError;
  String get vehiclePlateNumber => throw _privateConstructorUsedError;
  String get vehicleChassisNumber => throw _privateConstructorUsedError;
  String get vehiclePlateCharacterId => throw _privateConstructorUsedError;
  String get vehiclePlateCharacterName => throw _privateConstructorUsedError;
  String get vehiclePlateTypeId => throw _privateConstructorUsedError;
  String? get vehiclePlateType => throw _privateConstructorUsedError;
  String? get vehicleGovernorateId => throw _privateConstructorUsedError;
  String? get vehicleGovernorateName => throw _privateConstructorUsedError;
  String get garageId => throw _privateConstructorUsedError;
  String? get garageName => throw _privateConstructorUsedError;
  int get totalTaxes => throw _privateConstructorUsedError;
  int get taxes => throw _privateConstructorUsedError;
  int get totalAmount => throw _privateConstructorUsedError;
  bool get isPaid => throw _privateConstructorUsedError;
  DateTime get expiredDate => throw _privateConstructorUsedError;

  /// Serializes this DebtStatementReceipt to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DebtStatementReceipt
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DebtStatementReceiptCopyWith<DebtStatementReceipt> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DebtStatementReceiptCopyWith<$Res> {
  factory $DebtStatementReceiptCopyWith(DebtStatementReceipt value,
          $Res Function(DebtStatementReceipt) then) =
      _$DebtStatementReceiptCopyWithImpl<$Res, DebtStatementReceipt>;
  @useResult
  $Res call(
      {String id,
      DateTime creationDate,
      bool deleted,
      int number,
      int amount,
      String vehicleId,
      String vehiclePlateNumber,
      String vehicleChassisNumber,
      String vehiclePlateCharacterId,
      String vehiclePlateCharacterName,
      String vehiclePlateTypeId,
      String? vehiclePlateType,
      String? vehicleGovernorateId,
      String? vehicleGovernorateName,
      String garageId,
      String? garageName,
      int totalTaxes,
      int taxes,
      int totalAmount,
      bool isPaid,
      DateTime expiredDate});
}

/// @nodoc
class _$DebtStatementReceiptCopyWithImpl<$Res,
        $Val extends DebtStatementReceipt>
    implements $DebtStatementReceiptCopyWith<$Res> {
  _$DebtStatementReceiptCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DebtStatementReceipt
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? creationDate = null,
    Object? deleted = null,
    Object? number = null,
    Object? amount = null,
    Object? vehicleId = null,
    Object? vehiclePlateNumber = null,
    Object? vehicleChassisNumber = null,
    Object? vehiclePlateCharacterId = null,
    Object? vehiclePlateCharacterName = null,
    Object? vehiclePlateTypeId = null,
    Object? vehiclePlateType = freezed,
    Object? vehicleGovernorateId = freezed,
    Object? vehicleGovernorateName = freezed,
    Object? garageId = null,
    Object? garageName = freezed,
    Object? totalTaxes = null,
    Object? taxes = null,
    Object? totalAmount = null,
    Object? isPaid = null,
    Object? expiredDate = null,
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
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      vehicleId: null == vehicleId
          ? _value.vehicleId
          : vehicleId // ignore: cast_nullable_to_non_nullable
              as String,
      vehiclePlateNumber: null == vehiclePlateNumber
          ? _value.vehiclePlateNumber
          : vehiclePlateNumber // ignore: cast_nullable_to_non_nullable
              as String,
      vehicleChassisNumber: null == vehicleChassisNumber
          ? _value.vehicleChassisNumber
          : vehicleChassisNumber // ignore: cast_nullable_to_non_nullable
              as String,
      vehiclePlateCharacterId: null == vehiclePlateCharacterId
          ? _value.vehiclePlateCharacterId
          : vehiclePlateCharacterId // ignore: cast_nullable_to_non_nullable
              as String,
      vehiclePlateCharacterName: null == vehiclePlateCharacterName
          ? _value.vehiclePlateCharacterName
          : vehiclePlateCharacterName // ignore: cast_nullable_to_non_nullable
              as String,
      vehiclePlateTypeId: null == vehiclePlateTypeId
          ? _value.vehiclePlateTypeId
          : vehiclePlateTypeId // ignore: cast_nullable_to_non_nullable
              as String,
      vehiclePlateType: freezed == vehiclePlateType
          ? _value.vehiclePlateType
          : vehiclePlateType // ignore: cast_nullable_to_non_nullable
              as String?,
      vehicleGovernorateId: freezed == vehicleGovernorateId
          ? _value.vehicleGovernorateId
          : vehicleGovernorateId // ignore: cast_nullable_to_non_nullable
              as String?,
      vehicleGovernorateName: freezed == vehicleGovernorateName
          ? _value.vehicleGovernorateName
          : vehicleGovernorateName // ignore: cast_nullable_to_non_nullable
              as String?,
      garageId: null == garageId
          ? _value.garageId
          : garageId // ignore: cast_nullable_to_non_nullable
              as String,
      garageName: freezed == garageName
          ? _value.garageName
          : garageName // ignore: cast_nullable_to_non_nullable
              as String?,
      totalTaxes: null == totalTaxes
          ? _value.totalTaxes
          : totalTaxes // ignore: cast_nullable_to_non_nullable
              as int,
      taxes: null == taxes
          ? _value.taxes
          : taxes // ignore: cast_nullable_to_non_nullable
              as int,
      totalAmount: null == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as int,
      isPaid: null == isPaid
          ? _value.isPaid
          : isPaid // ignore: cast_nullable_to_non_nullable
              as bool,
      expiredDate: null == expiredDate
          ? _value.expiredDate
          : expiredDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DebtStatementReceiptImplCopyWith<$Res>
    implements $DebtStatementReceiptCopyWith<$Res> {
  factory _$$DebtStatementReceiptImplCopyWith(_$DebtStatementReceiptImpl value,
          $Res Function(_$DebtStatementReceiptImpl) then) =
      __$$DebtStatementReceiptImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      DateTime creationDate,
      bool deleted,
      int number,
      int amount,
      String vehicleId,
      String vehiclePlateNumber,
      String vehicleChassisNumber,
      String vehiclePlateCharacterId,
      String vehiclePlateCharacterName,
      String vehiclePlateTypeId,
      String? vehiclePlateType,
      String? vehicleGovernorateId,
      String? vehicleGovernorateName,
      String garageId,
      String? garageName,
      int totalTaxes,
      int taxes,
      int totalAmount,
      bool isPaid,
      DateTime expiredDate});
}

/// @nodoc
class __$$DebtStatementReceiptImplCopyWithImpl<$Res>
    extends _$DebtStatementReceiptCopyWithImpl<$Res, _$DebtStatementReceiptImpl>
    implements _$$DebtStatementReceiptImplCopyWith<$Res> {
  __$$DebtStatementReceiptImplCopyWithImpl(_$DebtStatementReceiptImpl _value,
      $Res Function(_$DebtStatementReceiptImpl) _then)
      : super(_value, _then);

  /// Create a copy of DebtStatementReceipt
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? creationDate = null,
    Object? deleted = null,
    Object? number = null,
    Object? amount = null,
    Object? vehicleId = null,
    Object? vehiclePlateNumber = null,
    Object? vehicleChassisNumber = null,
    Object? vehiclePlateCharacterId = null,
    Object? vehiclePlateCharacterName = null,
    Object? vehiclePlateTypeId = null,
    Object? vehiclePlateType = freezed,
    Object? vehicleGovernorateId = freezed,
    Object? vehicleGovernorateName = freezed,
    Object? garageId = null,
    Object? garageName = freezed,
    Object? totalTaxes = null,
    Object? taxes = null,
    Object? totalAmount = null,
    Object? isPaid = null,
    Object? expiredDate = null,
  }) {
    return _then(_$DebtStatementReceiptImpl(
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
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      vehicleId: null == vehicleId
          ? _value.vehicleId
          : vehicleId // ignore: cast_nullable_to_non_nullable
              as String,
      vehiclePlateNumber: null == vehiclePlateNumber
          ? _value.vehiclePlateNumber
          : vehiclePlateNumber // ignore: cast_nullable_to_non_nullable
              as String,
      vehicleChassisNumber: null == vehicleChassisNumber
          ? _value.vehicleChassisNumber
          : vehicleChassisNumber // ignore: cast_nullable_to_non_nullable
              as String,
      vehiclePlateCharacterId: null == vehiclePlateCharacterId
          ? _value.vehiclePlateCharacterId
          : vehiclePlateCharacterId // ignore: cast_nullable_to_non_nullable
              as String,
      vehiclePlateCharacterName: null == vehiclePlateCharacterName
          ? _value.vehiclePlateCharacterName
          : vehiclePlateCharacterName // ignore: cast_nullable_to_non_nullable
              as String,
      vehiclePlateTypeId: null == vehiclePlateTypeId
          ? _value.vehiclePlateTypeId
          : vehiclePlateTypeId // ignore: cast_nullable_to_non_nullable
              as String,
      vehiclePlateType: freezed == vehiclePlateType
          ? _value.vehiclePlateType
          : vehiclePlateType // ignore: cast_nullable_to_non_nullable
              as String?,
      vehicleGovernorateId: freezed == vehicleGovernorateId
          ? _value.vehicleGovernorateId
          : vehicleGovernorateId // ignore: cast_nullable_to_non_nullable
              as String?,
      vehicleGovernorateName: freezed == vehicleGovernorateName
          ? _value.vehicleGovernorateName
          : vehicleGovernorateName // ignore: cast_nullable_to_non_nullable
              as String?,
      garageId: null == garageId
          ? _value.garageId
          : garageId // ignore: cast_nullable_to_non_nullable
              as String,
      garageName: freezed == garageName
          ? _value.garageName
          : garageName // ignore: cast_nullable_to_non_nullable
              as String?,
      totalTaxes: null == totalTaxes
          ? _value.totalTaxes
          : totalTaxes // ignore: cast_nullable_to_non_nullable
              as int,
      taxes: null == taxes
          ? _value.taxes
          : taxes // ignore: cast_nullable_to_non_nullable
              as int,
      totalAmount: null == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as int,
      isPaid: null == isPaid
          ? _value.isPaid
          : isPaid // ignore: cast_nullable_to_non_nullable
              as bool,
      expiredDate: null == expiredDate
          ? _value.expiredDate
          : expiredDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DebtStatementReceiptImpl implements _DebtStatementReceipt {
  _$DebtStatementReceiptImpl(
      {required this.id,
      required this.creationDate,
      required this.deleted,
      required this.number,
      required this.amount,
      required this.vehicleId,
      required this.vehiclePlateNumber,
      required this.vehicleChassisNumber,
      required this.vehiclePlateCharacterId,
      required this.vehiclePlateCharacterName,
      required this.vehiclePlateTypeId,
      this.vehiclePlateType,
      this.vehicleGovernorateId,
      this.vehicleGovernorateName,
      required this.garageId,
      this.garageName,
      required this.totalTaxes,
      required this.taxes,
      required this.totalAmount,
      required this.isPaid,
      required this.expiredDate});

  factory _$DebtStatementReceiptImpl.fromJson(Map<String, dynamic> json) =>
      _$$DebtStatementReceiptImplFromJson(json);

  @override
  final String id;
  @override
  final DateTime creationDate;
  @override
  final bool deleted;
  @override
  final int number;
  @override
  final int amount;
  @override
  final String vehicleId;
  @override
  final String vehiclePlateNumber;
  @override
  final String vehicleChassisNumber;
  @override
  final String vehiclePlateCharacterId;
  @override
  final String vehiclePlateCharacterName;
  @override
  final String vehiclePlateTypeId;
  @override
  final String? vehiclePlateType;
  @override
  final String? vehicleGovernorateId;
  @override
  final String? vehicleGovernorateName;
  @override
  final String garageId;
  @override
  final String? garageName;
  @override
  final int totalTaxes;
  @override
  final int taxes;
  @override
  final int totalAmount;
  @override
  final bool isPaid;
  @override
  final DateTime expiredDate;

  @override
  String toString() {
    return 'DebtStatementReceipt(id: $id, creationDate: $creationDate, deleted: $deleted, number: $number, amount: $amount, vehicleId: $vehicleId, vehiclePlateNumber: $vehiclePlateNumber, vehicleChassisNumber: $vehicleChassisNumber, vehiclePlateCharacterId: $vehiclePlateCharacterId, vehiclePlateCharacterName: $vehiclePlateCharacterName, vehiclePlateTypeId: $vehiclePlateTypeId, vehiclePlateType: $vehiclePlateType, vehicleGovernorateId: $vehicleGovernorateId, vehicleGovernorateName: $vehicleGovernorateName, garageId: $garageId, garageName: $garageName, totalTaxes: $totalTaxes, taxes: $taxes, totalAmount: $totalAmount, isPaid: $isPaid, expiredDate: $expiredDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DebtStatementReceiptImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.creationDate, creationDate) ||
                other.creationDate == creationDate) &&
            (identical(other.deleted, deleted) || other.deleted == deleted) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.vehicleId, vehicleId) ||
                other.vehicleId == vehicleId) &&
            (identical(other.vehiclePlateNumber, vehiclePlateNumber) ||
                other.vehiclePlateNumber == vehiclePlateNumber) &&
            (identical(other.vehicleChassisNumber, vehicleChassisNumber) ||
                other.vehicleChassisNumber == vehicleChassisNumber) &&
            (identical(
                    other.vehiclePlateCharacterId, vehiclePlateCharacterId) ||
                other.vehiclePlateCharacterId == vehiclePlateCharacterId) &&
            (identical(other.vehiclePlateCharacterName,
                    vehiclePlateCharacterName) ||
                other.vehiclePlateCharacterName == vehiclePlateCharacterName) &&
            (identical(other.vehiclePlateTypeId, vehiclePlateTypeId) ||
                other.vehiclePlateTypeId == vehiclePlateTypeId) &&
            (identical(other.vehiclePlateType, vehiclePlateType) ||
                other.vehiclePlateType == vehiclePlateType) &&
            (identical(other.vehicleGovernorateId, vehicleGovernorateId) ||
                other.vehicleGovernorateId == vehicleGovernorateId) &&
            (identical(other.vehicleGovernorateName, vehicleGovernorateName) ||
                other.vehicleGovernorateName == vehicleGovernorateName) &&
            (identical(other.garageId, garageId) ||
                other.garageId == garageId) &&
            (identical(other.garageName, garageName) ||
                other.garageName == garageName) &&
            (identical(other.totalTaxes, totalTaxes) ||
                other.totalTaxes == totalTaxes) &&
            (identical(other.taxes, taxes) || other.taxes == taxes) &&
            (identical(other.totalAmount, totalAmount) ||
                other.totalAmount == totalAmount) &&
            (identical(other.isPaid, isPaid) || other.isPaid == isPaid) &&
            (identical(other.expiredDate, expiredDate) ||
                other.expiredDate == expiredDate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        creationDate,
        deleted,
        number,
        amount,
        vehicleId,
        vehiclePlateNumber,
        vehicleChassisNumber,
        vehiclePlateCharacterId,
        vehiclePlateCharacterName,
        vehiclePlateTypeId,
        vehiclePlateType,
        vehicleGovernorateId,
        vehicleGovernorateName,
        garageId,
        garageName,
        totalTaxes,
        taxes,
        totalAmount,
        isPaid,
        expiredDate
      ]);

  /// Create a copy of DebtStatementReceipt
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DebtStatementReceiptImplCopyWith<_$DebtStatementReceiptImpl>
      get copyWith =>
          __$$DebtStatementReceiptImplCopyWithImpl<_$DebtStatementReceiptImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DebtStatementReceiptImplToJson(
      this,
    );
  }
}

abstract class _DebtStatementReceipt implements DebtStatementReceipt {
  factory _DebtStatementReceipt(
      {required final String id,
      required final DateTime creationDate,
      required final bool deleted,
      required final int number,
      required final int amount,
      required final String vehicleId,
      required final String vehiclePlateNumber,
      required final String vehicleChassisNumber,
      required final String vehiclePlateCharacterId,
      required final String vehiclePlateCharacterName,
      required final String vehiclePlateTypeId,
      final String? vehiclePlateType,
      final String? vehicleGovernorateId,
      final String? vehicleGovernorateName,
      required final String garageId,
      final String? garageName,
      required final int totalTaxes,
      required final int taxes,
      required final int totalAmount,
      required final bool isPaid,
      required final DateTime expiredDate}) = _$DebtStatementReceiptImpl;

  factory _DebtStatementReceipt.fromJson(Map<String, dynamic> json) =
      _$DebtStatementReceiptImpl.fromJson;

  @override
  String get id;
  @override
  DateTime get creationDate;
  @override
  bool get deleted;
  @override
  int get number;
  @override
  int get amount;
  @override
  String get vehicleId;
  @override
  String get vehiclePlateNumber;
  @override
  String get vehicleChassisNumber;
  @override
  String get vehiclePlateCharacterId;
  @override
  String get vehiclePlateCharacterName;
  @override
  String get vehiclePlateTypeId;
  @override
  String? get vehiclePlateType;
  @override
  String? get vehicleGovernorateId;
  @override
  String? get vehicleGovernorateName;
  @override
  String get garageId;
  @override
  String? get garageName;
  @override
  int get totalTaxes;
  @override
  int get taxes;
  @override
  int get totalAmount;
  @override
  bool get isPaid;
  @override
  DateTime get expiredDate;

  /// Create a copy of DebtStatementReceipt
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DebtStatementReceiptImplCopyWith<_$DebtStatementReceiptImpl>
      get copyWith => throw _privateConstructorUsedError;
}
