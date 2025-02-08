// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'last_trips.dart';

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
  List<TripHistory> get tripHistory => throw _privateConstructorUsedError;

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
      List<TripHistory> tripHistory});
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
      tripHistory: null == tripHistory
          ? _value.tripHistory
          : tripHistory // ignore: cast_nullable_to_non_nullable
              as List<TripHistory>,
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
      List<TripHistory> tripHistory});
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
      tripHistory: null == tripHistory
          ? _value._tripHistory
          : tripHistory // ignore: cast_nullable_to_non_nullable
              as List<TripHistory>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LastTripsImpl implements _LastTrips {
  _$LastTripsImpl(
      {required this.weeklyTripNumber,
      required this.weeklyTripPercentage,
      required this.totalTripNumber,
      required final List<TripHistory> tripHistory})
      : _tripHistory = tripHistory;

  factory _$LastTripsImpl.fromJson(Map<String, dynamic> json) =>
      _$$LastTripsImplFromJson(json);

  @override
  final int weeklyTripNumber;
  @override
  final int weeklyTripPercentage;
  @override
  final int totalTripNumber;
  final List<TripHistory> _tripHistory;
  @override
  List<TripHistory> get tripHistory {
    if (_tripHistory is EqualUnmodifiableListView) return _tripHistory;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tripHistory);
  }

  @override
  String toString() {
    return 'LastTrips(weeklyTripNumber: $weeklyTripNumber, weeklyTripPercentage: $weeklyTripPercentage, totalTripNumber: $totalTripNumber, tripHistory: $tripHistory)';
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
      required final List<TripHistory> tripHistory}) = _$LastTripsImpl;

  factory _LastTrips.fromJson(Map<String, dynamic> json) =
      _$LastTripsImpl.fromJson;

  @override
  int get weeklyTripNumber;
  @override
  int get weeklyTripPercentage;
  @override
  int get totalTripNumber;
  @override
  List<TripHistory> get tripHistory;

  /// Create a copy of LastTrips
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LastTripsImplCopyWith<_$LastTripsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TripHistory _$TripHistoryFromJson(Map<String, dynamic> json) {
  return _TripHistory.fromJson(json);
}

/// @nodoc
mixin _$TripHistory {
  String get id => throw _privateConstructorUsedError;
  String get creationDate => throw _privateConstructorUsedError;
  bool get deleted => throw _privateConstructorUsedError;
  String get gateId => throw _privateConstructorUsedError;
  String get gateName => throw _privateConstructorUsedError;
  String get garageId => throw _privateConstructorUsedError;
  String get garageName => throw _privateConstructorUsedError;
  String get toGarageId => throw _privateConstructorUsedError;
  String get toGarageName => throw _privateConstructorUsedError;
  String get vehicleId => throw _privateConstructorUsedError;
  String get plateNumber => throw _privateConstructorUsedError;
  String get plateCharacter => throw _privateConstructorUsedError;
  String get plateGovernorate => throw _privateConstructorUsedError;
  int get taxes => throw _privateConstructorUsedError;
  int get action => throw _privateConstructorUsedError;
  FinancialLogDto get financialLogDto => throw _privateConstructorUsedError;

  /// Serializes this TripHistory to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TripHistory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TripHistoryCopyWith<TripHistory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TripHistoryCopyWith<$Res> {
  factory $TripHistoryCopyWith(
          TripHistory value, $Res Function(TripHistory) then) =
      _$TripHistoryCopyWithImpl<$Res, TripHistory>;
  @useResult
  $Res call(
      {String id,
      String creationDate,
      bool deleted,
      String gateId,
      String gateName,
      String garageId,
      String garageName,
      String toGarageId,
      String toGarageName,
      String vehicleId,
      String plateNumber,
      String plateCharacter,
      String plateGovernorate,
      int taxes,
      int action,
      FinancialLogDto financialLogDto});

  $FinancialLogDtoCopyWith<$Res> get financialLogDto;
}

/// @nodoc
class _$TripHistoryCopyWithImpl<$Res, $Val extends TripHistory>
    implements $TripHistoryCopyWith<$Res> {
  _$TripHistoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TripHistory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? creationDate = null,
    Object? deleted = null,
    Object? gateId = null,
    Object? gateName = null,
    Object? garageId = null,
    Object? garageName = null,
    Object? toGarageId = null,
    Object? toGarageName = null,
    Object? vehicleId = null,
    Object? plateNumber = null,
    Object? plateCharacter = null,
    Object? plateGovernorate = null,
    Object? taxes = null,
    Object? action = null,
    Object? financialLogDto = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      creationDate: null == creationDate
          ? _value.creationDate
          : creationDate // ignore: cast_nullable_to_non_nullable
              as String,
      deleted: null == deleted
          ? _value.deleted
          : deleted // ignore: cast_nullable_to_non_nullable
              as bool,
      gateId: null == gateId
          ? _value.gateId
          : gateId // ignore: cast_nullable_to_non_nullable
              as String,
      gateName: null == gateName
          ? _value.gateName
          : gateName // ignore: cast_nullable_to_non_nullable
              as String,
      garageId: null == garageId
          ? _value.garageId
          : garageId // ignore: cast_nullable_to_non_nullable
              as String,
      garageName: null == garageName
          ? _value.garageName
          : garageName // ignore: cast_nullable_to_non_nullable
              as String,
      toGarageId: null == toGarageId
          ? _value.toGarageId
          : toGarageId // ignore: cast_nullable_to_non_nullable
              as String,
      toGarageName: null == toGarageName
          ? _value.toGarageName
          : toGarageName // ignore: cast_nullable_to_non_nullable
              as String,
      vehicleId: null == vehicleId
          ? _value.vehicleId
          : vehicleId // ignore: cast_nullable_to_non_nullable
              as String,
      plateNumber: null == plateNumber
          ? _value.plateNumber
          : plateNumber // ignore: cast_nullable_to_non_nullable
              as String,
      plateCharacter: null == plateCharacter
          ? _value.plateCharacter
          : plateCharacter // ignore: cast_nullable_to_non_nullable
              as String,
      plateGovernorate: null == plateGovernorate
          ? _value.plateGovernorate
          : plateGovernorate // ignore: cast_nullable_to_non_nullable
              as String,
      taxes: null == taxes
          ? _value.taxes
          : taxes // ignore: cast_nullable_to_non_nullable
              as int,
      action: null == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as int,
      financialLogDto: null == financialLogDto
          ? _value.financialLogDto
          : financialLogDto // ignore: cast_nullable_to_non_nullable
              as FinancialLogDto,
    ) as $Val);
  }

  /// Create a copy of TripHistory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FinancialLogDtoCopyWith<$Res> get financialLogDto {
    return $FinancialLogDtoCopyWith<$Res>(_value.financialLogDto, (value) {
      return _then(_value.copyWith(financialLogDto: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TripHistoryImplCopyWith<$Res>
    implements $TripHistoryCopyWith<$Res> {
  factory _$$TripHistoryImplCopyWith(
          _$TripHistoryImpl value, $Res Function(_$TripHistoryImpl) then) =
      __$$TripHistoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String creationDate,
      bool deleted,
      String gateId,
      String gateName,
      String garageId,
      String garageName,
      String toGarageId,
      String toGarageName,
      String vehicleId,
      String plateNumber,
      String plateCharacter,
      String plateGovernorate,
      int taxes,
      int action,
      FinancialLogDto financialLogDto});

  @override
  $FinancialLogDtoCopyWith<$Res> get financialLogDto;
}

/// @nodoc
class __$$TripHistoryImplCopyWithImpl<$Res>
    extends _$TripHistoryCopyWithImpl<$Res, _$TripHistoryImpl>
    implements _$$TripHistoryImplCopyWith<$Res> {
  __$$TripHistoryImplCopyWithImpl(
      _$TripHistoryImpl _value, $Res Function(_$TripHistoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of TripHistory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? creationDate = null,
    Object? deleted = null,
    Object? gateId = null,
    Object? gateName = null,
    Object? garageId = null,
    Object? garageName = null,
    Object? toGarageId = null,
    Object? toGarageName = null,
    Object? vehicleId = null,
    Object? plateNumber = null,
    Object? plateCharacter = null,
    Object? plateGovernorate = null,
    Object? taxes = null,
    Object? action = null,
    Object? financialLogDto = null,
  }) {
    return _then(_$TripHistoryImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      creationDate: null == creationDate
          ? _value.creationDate
          : creationDate // ignore: cast_nullable_to_non_nullable
              as String,
      deleted: null == deleted
          ? _value.deleted
          : deleted // ignore: cast_nullable_to_non_nullable
              as bool,
      gateId: null == gateId
          ? _value.gateId
          : gateId // ignore: cast_nullable_to_non_nullable
              as String,
      gateName: null == gateName
          ? _value.gateName
          : gateName // ignore: cast_nullable_to_non_nullable
              as String,
      garageId: null == garageId
          ? _value.garageId
          : garageId // ignore: cast_nullable_to_non_nullable
              as String,
      garageName: null == garageName
          ? _value.garageName
          : garageName // ignore: cast_nullable_to_non_nullable
              as String,
      toGarageId: null == toGarageId
          ? _value.toGarageId
          : toGarageId // ignore: cast_nullable_to_non_nullable
              as String,
      toGarageName: null == toGarageName
          ? _value.toGarageName
          : toGarageName // ignore: cast_nullable_to_non_nullable
              as String,
      vehicleId: null == vehicleId
          ? _value.vehicleId
          : vehicleId // ignore: cast_nullable_to_non_nullable
              as String,
      plateNumber: null == plateNumber
          ? _value.plateNumber
          : plateNumber // ignore: cast_nullable_to_non_nullable
              as String,
      plateCharacter: null == plateCharacter
          ? _value.plateCharacter
          : plateCharacter // ignore: cast_nullable_to_non_nullable
              as String,
      plateGovernorate: null == plateGovernorate
          ? _value.plateGovernorate
          : plateGovernorate // ignore: cast_nullable_to_non_nullable
              as String,
      taxes: null == taxes
          ? _value.taxes
          : taxes // ignore: cast_nullable_to_non_nullable
              as int,
      action: null == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as int,
      financialLogDto: null == financialLogDto
          ? _value.financialLogDto
          : financialLogDto // ignore: cast_nullable_to_non_nullable
              as FinancialLogDto,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TripHistoryImpl implements _TripHistory {
  _$TripHistoryImpl(
      {required this.id,
      required this.creationDate,
      required this.deleted,
      required this.gateId,
      required this.gateName,
      required this.garageId,
      required this.garageName,
      required this.toGarageId,
      required this.toGarageName,
      required this.vehicleId,
      required this.plateNumber,
      required this.plateCharacter,
      required this.plateGovernorate,
      required this.taxes,
      required this.action,
      required this.financialLogDto});

  factory _$TripHistoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$TripHistoryImplFromJson(json);

  @override
  final String id;
  @override
  final String creationDate;
  @override
  final bool deleted;
  @override
  final String gateId;
  @override
  final String gateName;
  @override
  final String garageId;
  @override
  final String garageName;
  @override
  final String toGarageId;
  @override
  final String toGarageName;
  @override
  final String vehicleId;
  @override
  final String plateNumber;
  @override
  final String plateCharacter;
  @override
  final String plateGovernorate;
  @override
  final int taxes;
  @override
  final int action;
  @override
  final FinancialLogDto financialLogDto;

  @override
  String toString() {
    return 'TripHistory(id: $id, creationDate: $creationDate, deleted: $deleted, gateId: $gateId, gateName: $gateName, garageId: $garageId, garageName: $garageName, toGarageId: $toGarageId, toGarageName: $toGarageName, vehicleId: $vehicleId, plateNumber: $plateNumber, plateCharacter: $plateCharacter, plateGovernorate: $plateGovernorate, taxes: $taxes, action: $action, financialLogDto: $financialLogDto)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TripHistoryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.creationDate, creationDate) ||
                other.creationDate == creationDate) &&
            (identical(other.deleted, deleted) || other.deleted == deleted) &&
            (identical(other.gateId, gateId) || other.gateId == gateId) &&
            (identical(other.gateName, gateName) ||
                other.gateName == gateName) &&
            (identical(other.garageId, garageId) ||
                other.garageId == garageId) &&
            (identical(other.garageName, garageName) ||
                other.garageName == garageName) &&
            (identical(other.toGarageId, toGarageId) ||
                other.toGarageId == toGarageId) &&
            (identical(other.toGarageName, toGarageName) ||
                other.toGarageName == toGarageName) &&
            (identical(other.vehicleId, vehicleId) ||
                other.vehicleId == vehicleId) &&
            (identical(other.plateNumber, plateNumber) ||
                other.plateNumber == plateNumber) &&
            (identical(other.plateCharacter, plateCharacter) ||
                other.plateCharacter == plateCharacter) &&
            (identical(other.plateGovernorate, plateGovernorate) ||
                other.plateGovernorate == plateGovernorate) &&
            (identical(other.taxes, taxes) || other.taxes == taxes) &&
            (identical(other.action, action) || other.action == action) &&
            (identical(other.financialLogDto, financialLogDto) ||
                other.financialLogDto == financialLogDto));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      creationDate,
      deleted,
      gateId,
      gateName,
      garageId,
      garageName,
      toGarageId,
      toGarageName,
      vehicleId,
      plateNumber,
      plateCharacter,
      plateGovernorate,
      taxes,
      action,
      financialLogDto);

  /// Create a copy of TripHistory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TripHistoryImplCopyWith<_$TripHistoryImpl> get copyWith =>
      __$$TripHistoryImplCopyWithImpl<_$TripHistoryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TripHistoryImplToJson(
      this,
    );
  }
}

abstract class _TripHistory implements TripHistory {
  factory _TripHistory(
      {required final String id,
      required final String creationDate,
      required final bool deleted,
      required final String gateId,
      required final String gateName,
      required final String garageId,
      required final String garageName,
      required final String toGarageId,
      required final String toGarageName,
      required final String vehicleId,
      required final String plateNumber,
      required final String plateCharacter,
      required final String plateGovernorate,
      required final int taxes,
      required final int action,
      required final FinancialLogDto financialLogDto}) = _$TripHistoryImpl;

  factory _TripHistory.fromJson(Map<String, dynamic> json) =
      _$TripHistoryImpl.fromJson;

  @override
  String get id;
  @override
  String get creationDate;
  @override
  bool get deleted;
  @override
  String get gateId;
  @override
  String get gateName;
  @override
  String get garageId;
  @override
  String get garageName;
  @override
  String get toGarageId;
  @override
  String get toGarageName;
  @override
  String get vehicleId;
  @override
  String get plateNumber;
  @override
  String get plateCharacter;
  @override
  String get plateGovernorate;
  @override
  int get taxes;
  @override
  int get action;
  @override
  FinancialLogDto get financialLogDto;

  /// Create a copy of TripHistory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TripHistoryImplCopyWith<_$TripHistoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FinancialLogDto _$FinancialLogDtoFromJson(Map<String, dynamic> json) {
  return _FinancialLogDto.fromJson(json);
}

/// @nodoc
mixin _$FinancialLogDto {
  String get id => throw _privateConstructorUsedError;
  String get creationDate => throw _privateConstructorUsedError;
  bool get deleted => throw _privateConstructorUsedError;
  int get gate => throw _privateConstructorUsedError;
  int get queue => throw _privateConstructorUsedError;
  int get manifest => throw _privateConstructorUsedError;
  int get parking => throw _privateConstructorUsedError;
  String get vehicleMovementId => throw _privateConstructorUsedError;
  String get vehicleId => throw _privateConstructorUsedError;
  String get plateNumber => throw _privateConstructorUsedError;
  int get type => throw _privateConstructorUsedError;
  int get number => throw _privateConstructorUsedError;
  int get totalPrice => throw _privateConstructorUsedError;

  /// Serializes this FinancialLogDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FinancialLogDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FinancialLogDtoCopyWith<FinancialLogDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FinancialLogDtoCopyWith<$Res> {
  factory $FinancialLogDtoCopyWith(
          FinancialLogDto value, $Res Function(FinancialLogDto) then) =
      _$FinancialLogDtoCopyWithImpl<$Res, FinancialLogDto>;
  @useResult
  $Res call(
      {String id,
      String creationDate,
      bool deleted,
      int gate,
      int queue,
      int manifest,
      int parking,
      String vehicleMovementId,
      String vehicleId,
      String plateNumber,
      int type,
      int number,
      int totalPrice});
}

/// @nodoc
class _$FinancialLogDtoCopyWithImpl<$Res, $Val extends FinancialLogDto>
    implements $FinancialLogDtoCopyWith<$Res> {
  _$FinancialLogDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FinancialLogDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? creationDate = null,
    Object? deleted = null,
    Object? gate = null,
    Object? queue = null,
    Object? manifest = null,
    Object? parking = null,
    Object? vehicleMovementId = null,
    Object? vehicleId = null,
    Object? plateNumber = null,
    Object? type = null,
    Object? number = null,
    Object? totalPrice = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      creationDate: null == creationDate
          ? _value.creationDate
          : creationDate // ignore: cast_nullable_to_non_nullable
              as String,
      deleted: null == deleted
          ? _value.deleted
          : deleted // ignore: cast_nullable_to_non_nullable
              as bool,
      gate: null == gate
          ? _value.gate
          : gate // ignore: cast_nullable_to_non_nullable
              as int,
      queue: null == queue
          ? _value.queue
          : queue // ignore: cast_nullable_to_non_nullable
              as int,
      manifest: null == manifest
          ? _value.manifest
          : manifest // ignore: cast_nullable_to_non_nullable
              as int,
      parking: null == parking
          ? _value.parking
          : parking // ignore: cast_nullable_to_non_nullable
              as int,
      vehicleMovementId: null == vehicleMovementId
          ? _value.vehicleMovementId
          : vehicleMovementId // ignore: cast_nullable_to_non_nullable
              as String,
      vehicleId: null == vehicleId
          ? _value.vehicleId
          : vehicleId // ignore: cast_nullable_to_non_nullable
              as String,
      plateNumber: null == plateNumber
          ? _value.plateNumber
          : plateNumber // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FinancialLogDtoImplCopyWith<$Res>
    implements $FinancialLogDtoCopyWith<$Res> {
  factory _$$FinancialLogDtoImplCopyWith(_$FinancialLogDtoImpl value,
          $Res Function(_$FinancialLogDtoImpl) then) =
      __$$FinancialLogDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String creationDate,
      bool deleted,
      int gate,
      int queue,
      int manifest,
      int parking,
      String vehicleMovementId,
      String vehicleId,
      String plateNumber,
      int type,
      int number,
      int totalPrice});
}

/// @nodoc
class __$$FinancialLogDtoImplCopyWithImpl<$Res>
    extends _$FinancialLogDtoCopyWithImpl<$Res, _$FinancialLogDtoImpl>
    implements _$$FinancialLogDtoImplCopyWith<$Res> {
  __$$FinancialLogDtoImplCopyWithImpl(
      _$FinancialLogDtoImpl _value, $Res Function(_$FinancialLogDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of FinancialLogDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? creationDate = null,
    Object? deleted = null,
    Object? gate = null,
    Object? queue = null,
    Object? manifest = null,
    Object? parking = null,
    Object? vehicleMovementId = null,
    Object? vehicleId = null,
    Object? plateNumber = null,
    Object? type = null,
    Object? number = null,
    Object? totalPrice = null,
  }) {
    return _then(_$FinancialLogDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      creationDate: null == creationDate
          ? _value.creationDate
          : creationDate // ignore: cast_nullable_to_non_nullable
              as String,
      deleted: null == deleted
          ? _value.deleted
          : deleted // ignore: cast_nullable_to_non_nullable
              as bool,
      gate: null == gate
          ? _value.gate
          : gate // ignore: cast_nullable_to_non_nullable
              as int,
      queue: null == queue
          ? _value.queue
          : queue // ignore: cast_nullable_to_non_nullable
              as int,
      manifest: null == manifest
          ? _value.manifest
          : manifest // ignore: cast_nullable_to_non_nullable
              as int,
      parking: null == parking
          ? _value.parking
          : parking // ignore: cast_nullable_to_non_nullable
              as int,
      vehicleMovementId: null == vehicleMovementId
          ? _value.vehicleMovementId
          : vehicleMovementId // ignore: cast_nullable_to_non_nullable
              as String,
      vehicleId: null == vehicleId
          ? _value.vehicleId
          : vehicleId // ignore: cast_nullable_to_non_nullable
              as String,
      plateNumber: null == plateNumber
          ? _value.plateNumber
          : plateNumber // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FinancialLogDtoImpl implements _FinancialLogDto {
  _$FinancialLogDtoImpl(
      {required this.id,
      required this.creationDate,
      required this.deleted,
      required this.gate,
      required this.queue,
      required this.manifest,
      required this.parking,
      required this.vehicleMovementId,
      required this.vehicleId,
      required this.plateNumber,
      required this.type,
      required this.number,
      required this.totalPrice});

  factory _$FinancialLogDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$FinancialLogDtoImplFromJson(json);

  @override
  final String id;
  @override
  final String creationDate;
  @override
  final bool deleted;
  @override
  final int gate;
  @override
  final int queue;
  @override
  final int manifest;
  @override
  final int parking;
  @override
  final String vehicleMovementId;
  @override
  final String vehicleId;
  @override
  final String plateNumber;
  @override
  final int type;
  @override
  final int number;
  @override
  final int totalPrice;

  @override
  String toString() {
    return 'FinancialLogDto(id: $id, creationDate: $creationDate, deleted: $deleted, gate: $gate, queue: $queue, manifest: $manifest, parking: $parking, vehicleMovementId: $vehicleMovementId, vehicleId: $vehicleId, plateNumber: $plateNumber, type: $type, number: $number, totalPrice: $totalPrice)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FinancialLogDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.creationDate, creationDate) ||
                other.creationDate == creationDate) &&
            (identical(other.deleted, deleted) || other.deleted == deleted) &&
            (identical(other.gate, gate) || other.gate == gate) &&
            (identical(other.queue, queue) || other.queue == queue) &&
            (identical(other.manifest, manifest) ||
                other.manifest == manifest) &&
            (identical(other.parking, parking) || other.parking == parking) &&
            (identical(other.vehicleMovementId, vehicleMovementId) ||
                other.vehicleMovementId == vehicleMovementId) &&
            (identical(other.vehicleId, vehicleId) ||
                other.vehicleId == vehicleId) &&
            (identical(other.plateNumber, plateNumber) ||
                other.plateNumber == plateNumber) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      creationDate,
      deleted,
      gate,
      queue,
      manifest,
      parking,
      vehicleMovementId,
      vehicleId,
      plateNumber,
      type,
      number,
      totalPrice);

  /// Create a copy of FinancialLogDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FinancialLogDtoImplCopyWith<_$FinancialLogDtoImpl> get copyWith =>
      __$$FinancialLogDtoImplCopyWithImpl<_$FinancialLogDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FinancialLogDtoImplToJson(
      this,
    );
  }
}

abstract class _FinancialLogDto implements FinancialLogDto {
  factory _FinancialLogDto(
      {required final String id,
      required final String creationDate,
      required final bool deleted,
      required final int gate,
      required final int queue,
      required final int manifest,
      required final int parking,
      required final String vehicleMovementId,
      required final String vehicleId,
      required final String plateNumber,
      required final int type,
      required final int number,
      required final int totalPrice}) = _$FinancialLogDtoImpl;

  factory _FinancialLogDto.fromJson(Map<String, dynamic> json) =
      _$FinancialLogDtoImpl.fromJson;

  @override
  String get id;
  @override
  String get creationDate;
  @override
  bool get deleted;
  @override
  int get gate;
  @override
  int get queue;
  @override
  int get manifest;
  @override
  int get parking;
  @override
  String get vehicleMovementId;
  @override
  String get vehicleId;
  @override
  String get plateNumber;
  @override
  int get type;
  @override
  int get number;
  @override
  int get totalPrice;

  /// Create a copy of FinancialLogDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FinancialLogDtoImplCopyWith<_$FinancialLogDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
