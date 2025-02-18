// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'plate_types.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PlateTypes _$PlateTypesFromJson(Map<String, dynamic> json) {
  return _PlateTypes.fromJson(json);
}

/// @nodoc
mixin _$PlateTypes {
  String get name => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  DateTime? get creationDate =>
      throw _privateConstructorUsedError; // Nullable DateTime
  bool get deleted => throw _privateConstructorUsedError;

  /// Serializes this PlateTypes to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PlateTypes
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PlateTypesCopyWith<PlateTypes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlateTypesCopyWith<$Res> {
  factory $PlateTypesCopyWith(
          PlateTypes value, $Res Function(PlateTypes) then) =
      _$PlateTypesCopyWithImpl<$Res, PlateTypes>;
  @useResult
  $Res call({String name, String id, DateTime? creationDate, bool deleted});
}

/// @nodoc
class _$PlateTypesCopyWithImpl<$Res, $Val extends PlateTypes>
    implements $PlateTypesCopyWith<$Res> {
  _$PlateTypesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PlateTypes
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? id = null,
    Object? creationDate = freezed,
    Object? deleted = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      creationDate: freezed == creationDate
          ? _value.creationDate
          : creationDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deleted: null == deleted
          ? _value.deleted
          : deleted // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlateTypesImplCopyWith<$Res>
    implements $PlateTypesCopyWith<$Res> {
  factory _$$PlateTypesImplCopyWith(
          _$PlateTypesImpl value, $Res Function(_$PlateTypesImpl) then) =
      __$$PlateTypesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String id, DateTime? creationDate, bool deleted});
}

/// @nodoc
class __$$PlateTypesImplCopyWithImpl<$Res>
    extends _$PlateTypesCopyWithImpl<$Res, _$PlateTypesImpl>
    implements _$$PlateTypesImplCopyWith<$Res> {
  __$$PlateTypesImplCopyWithImpl(
      _$PlateTypesImpl _value, $Res Function(_$PlateTypesImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlateTypes
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? id = null,
    Object? creationDate = freezed,
    Object? deleted = null,
  }) {
    return _then(_$PlateTypesImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      creationDate: freezed == creationDate
          ? _value.creationDate
          : creationDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deleted: null == deleted
          ? _value.deleted
          : deleted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

@jsonSerializableResponse
class _$PlateTypesImpl implements _PlateTypes {
  const _$PlateTypesImpl(
      {required this.name,
      required this.id,
      required this.creationDate,
      required this.deleted});

  factory _$PlateTypesImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlateTypesImplFromJson(json);

  @override
  final String name;
  @override
  final String id;
  @override
  final DateTime? creationDate;
// Nullable DateTime
  @override
  final bool deleted;

  @override
  String toString() {
    return 'PlateTypes(name: $name, id: $id, creationDate: $creationDate, deleted: $deleted)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlateTypesImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.creationDate, creationDate) ||
                other.creationDate == creationDate) &&
            (identical(other.deleted, deleted) || other.deleted == deleted));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, id, creationDate, deleted);

  /// Create a copy of PlateTypes
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlateTypesImplCopyWith<_$PlateTypesImpl> get copyWith =>
      __$$PlateTypesImplCopyWithImpl<_$PlateTypesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlateTypesImplToJson(
      this,
    );
  }
}

abstract class _PlateTypes implements PlateTypes {
  const factory _PlateTypes(
      {required final String name,
      required final String id,
      required final DateTime? creationDate,
      required final bool deleted}) = _$PlateTypesImpl;

  factory _PlateTypes.fromJson(Map<String, dynamic> json) =
      _$PlateTypesImpl.fromJson;

  @override
  String get name;
  @override
  String get id;
  @override
  DateTime? get creationDate; // Nullable DateTime
  @override
  bool get deleted;

  /// Create a copy of PlateTypes
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlateTypesImplCopyWith<_$PlateTypesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
