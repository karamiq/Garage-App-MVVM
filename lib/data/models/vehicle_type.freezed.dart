// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vehicle_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VehicleType _$VehicleTypeFromJson(Map<String, dynamic> json) {
  return _VehicleType.fromJson(json);
}

/// @nodoc
mixin _$VehicleType {
  String get name => throw _privateConstructorUsedError;
  int get numberOfSeat => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  DateTime get creationDate => throw _privateConstructorUsedError;
  bool get deleted => throw _privateConstructorUsedError;

  /// Serializes this VehicleType to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VehicleType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VehicleTypeCopyWith<VehicleType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VehicleTypeCopyWith<$Res> {
  factory $VehicleTypeCopyWith(
          VehicleType value, $Res Function(VehicleType) then) =
      _$VehicleTypeCopyWithImpl<$Res, VehicleType>;
  @useResult
  $Res call(
      {String name,
      int numberOfSeat,
      String id,
      DateTime creationDate,
      bool deleted});
}

/// @nodoc
class _$VehicleTypeCopyWithImpl<$Res, $Val extends VehicleType>
    implements $VehicleTypeCopyWith<$Res> {
  _$VehicleTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VehicleType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? numberOfSeat = null,
    Object? id = null,
    Object? creationDate = null,
    Object? deleted = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      numberOfSeat: null == numberOfSeat
          ? _value.numberOfSeat
          : numberOfSeat // ignore: cast_nullable_to_non_nullable
              as int,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VehicleTypeImplCopyWith<$Res>
    implements $VehicleTypeCopyWith<$Res> {
  factory _$$VehicleTypeImplCopyWith(
          _$VehicleTypeImpl value, $Res Function(_$VehicleTypeImpl) then) =
      __$$VehicleTypeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      int numberOfSeat,
      String id,
      DateTime creationDate,
      bool deleted});
}

/// @nodoc
class __$$VehicleTypeImplCopyWithImpl<$Res>
    extends _$VehicleTypeCopyWithImpl<$Res, _$VehicleTypeImpl>
    implements _$$VehicleTypeImplCopyWith<$Res> {
  __$$VehicleTypeImplCopyWithImpl(
      _$VehicleTypeImpl _value, $Res Function(_$VehicleTypeImpl) _then)
      : super(_value, _then);

  /// Create a copy of VehicleType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? numberOfSeat = null,
    Object? id = null,
    Object? creationDate = null,
    Object? deleted = null,
  }) {
    return _then(_$VehicleTypeImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      numberOfSeat: null == numberOfSeat
          ? _value.numberOfSeat
          : numberOfSeat // ignore: cast_nullable_to_non_nullable
              as int,
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
    ));
  }
}

/// @nodoc

@jsonSerializableResponse
class _$VehicleTypeImpl implements _VehicleType {
  const _$VehicleTypeImpl(
      {required this.name,
      required this.numberOfSeat,
      required this.id,
      required this.creationDate,
      required this.deleted});

  factory _$VehicleTypeImpl.fromJson(Map<String, dynamic> json) =>
      _$$VehicleTypeImplFromJson(json);

  @override
  final String name;
  @override
  final int numberOfSeat;
  @override
  final String id;
  @override
  final DateTime creationDate;
  @override
  final bool deleted;

  @override
  String toString() {
    return 'VehicleType(name: $name, numberOfSeat: $numberOfSeat, id: $id, creationDate: $creationDate, deleted: $deleted)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VehicleTypeImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.numberOfSeat, numberOfSeat) ||
                other.numberOfSeat == numberOfSeat) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.creationDate, creationDate) ||
                other.creationDate == creationDate) &&
            (identical(other.deleted, deleted) || other.deleted == deleted));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, numberOfSeat, id, creationDate, deleted);

  /// Create a copy of VehicleType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VehicleTypeImplCopyWith<_$VehicleTypeImpl> get copyWith =>
      __$$VehicleTypeImplCopyWithImpl<_$VehicleTypeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VehicleTypeImplToJson(
      this,
    );
  }
}

abstract class _VehicleType implements VehicleType {
  const factory _VehicleType(
      {required final String name,
      required final int numberOfSeat,
      required final String id,
      required final DateTime creationDate,
      required final bool deleted}) = _$VehicleTypeImpl;

  factory _VehicleType.fromJson(Map<String, dynamic> json) =
      _$VehicleTypeImpl.fromJson;

  @override
  String get name;
  @override
  int get numberOfSeat;
  @override
  String get id;
  @override
  DateTime get creationDate;
  @override
  bool get deleted;

  /// Create a copy of VehicleType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VehicleTypeImplCopyWith<_$VehicleTypeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
