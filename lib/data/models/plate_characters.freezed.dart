// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'plate_characters.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PlateCharacters _$PlateCharactersFromJson(Map<String, dynamic> json) {
  return _PlateCharacters.fromJson(json);
}

/// @nodoc
mixin _$PlateCharacters {
  String get name => throw _privateConstructorUsedError;
  String get governorateId => throw _privateConstructorUsedError;
  String get governorateName => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  DateTime get creationDate => throw _privateConstructorUsedError;
  bool get deleted => throw _privateConstructorUsedError;

  /// Serializes this PlateCharacters to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PlateCharacters
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PlateCharactersCopyWith<PlateCharacters> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlateCharactersCopyWith<$Res> {
  factory $PlateCharactersCopyWith(
          PlateCharacters value, $Res Function(PlateCharacters) then) =
      _$PlateCharactersCopyWithImpl<$Res, PlateCharacters>;
  @useResult
  $Res call(
      {String name,
      String governorateId,
      String governorateName,
      String id,
      DateTime creationDate,
      bool deleted});
}

/// @nodoc
class _$PlateCharactersCopyWithImpl<$Res, $Val extends PlateCharacters>
    implements $PlateCharactersCopyWith<$Res> {
  _$PlateCharactersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PlateCharacters
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? governorateId = null,
    Object? governorateName = null,
    Object? id = null,
    Object? creationDate = null,
    Object? deleted = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      governorateId: null == governorateId
          ? _value.governorateId
          : governorateId // ignore: cast_nullable_to_non_nullable
              as String,
      governorateName: null == governorateName
          ? _value.governorateName
          : governorateName // ignore: cast_nullable_to_non_nullable
              as String,
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
abstract class _$$PlateCharactersImplCopyWith<$Res>
    implements $PlateCharactersCopyWith<$Res> {
  factory _$$PlateCharactersImplCopyWith(_$PlateCharactersImpl value,
          $Res Function(_$PlateCharactersImpl) then) =
      __$$PlateCharactersImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String governorateId,
      String governorateName,
      String id,
      DateTime creationDate,
      bool deleted});
}

/// @nodoc
class __$$PlateCharactersImplCopyWithImpl<$Res>
    extends _$PlateCharactersCopyWithImpl<$Res, _$PlateCharactersImpl>
    implements _$$PlateCharactersImplCopyWith<$Res> {
  __$$PlateCharactersImplCopyWithImpl(
      _$PlateCharactersImpl _value, $Res Function(_$PlateCharactersImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlateCharacters
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? governorateId = null,
    Object? governorateName = null,
    Object? id = null,
    Object? creationDate = null,
    Object? deleted = null,
  }) {
    return _then(_$PlateCharactersImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      governorateId: null == governorateId
          ? _value.governorateId
          : governorateId // ignore: cast_nullable_to_non_nullable
              as String,
      governorateName: null == governorateName
          ? _value.governorateName
          : governorateName // ignore: cast_nullable_to_non_nullable
              as String,
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
class _$PlateCharactersImpl implements _PlateCharacters {
  const _$PlateCharactersImpl(
      {required this.name,
      required this.governorateId,
      required this.governorateName,
      required this.id,
      required this.creationDate,
      required this.deleted});

  factory _$PlateCharactersImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlateCharactersImplFromJson(json);

  @override
  final String name;
  @override
  final String governorateId;
  @override
  final String governorateName;
  @override
  final String id;
  @override
  final DateTime creationDate;
  @override
  final bool deleted;

  @override
  String toString() {
    return 'PlateCharacters(name: $name, governorateId: $governorateId, governorateName: $governorateName, id: $id, creationDate: $creationDate, deleted: $deleted)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlateCharactersImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.governorateId, governorateId) ||
                other.governorateId == governorateId) &&
            (identical(other.governorateName, governorateName) ||
                other.governorateName == governorateName) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.creationDate, creationDate) ||
                other.creationDate == creationDate) &&
            (identical(other.deleted, deleted) || other.deleted == deleted));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, governorateId,
      governorateName, id, creationDate, deleted);

  /// Create a copy of PlateCharacters
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlateCharactersImplCopyWith<_$PlateCharactersImpl> get copyWith =>
      __$$PlateCharactersImplCopyWithImpl<_$PlateCharactersImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlateCharactersImplToJson(
      this,
    );
  }
}

abstract class _PlateCharacters implements PlateCharacters {
  const factory _PlateCharacters(
      {required final String name,
      required final String governorateId,
      required final String governorateName,
      required final String id,
      required final DateTime creationDate,
      required final bool deleted}) = _$PlateCharactersImpl;

  factory _PlateCharacters.fromJson(Map<String, dynamic> json) =
      _$PlateCharactersImpl.fromJson;

  @override
  String get name;
  @override
  String get governorateId;
  @override
  String get governorateName;
  @override
  String get id;
  @override
  DateTime get creationDate;
  @override
  bool get deleted;

  /// Create a copy of PlateCharacters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlateCharactersImplCopyWith<_$PlateCharactersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
