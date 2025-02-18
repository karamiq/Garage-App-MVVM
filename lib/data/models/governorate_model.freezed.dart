// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'governorate_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GovernorateModel _$GovernorateModelFromJson(Map<String, dynamic> json) {
  return _GovernorateModel.fromJson(json);
}

/// @nodoc
mixin _$GovernorateModel {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  DateTime get creationDate => throw _privateConstructorUsedError;
  bool get deleted => throw _privateConstructorUsedError;

  /// Serializes this GovernorateModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GovernorateModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GovernorateModelCopyWith<GovernorateModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GovernorateModelCopyWith<$Res> {
  factory $GovernorateModelCopyWith(
          GovernorateModel value, $Res Function(GovernorateModel) then) =
      _$GovernorateModelCopyWithImpl<$Res, GovernorateModel>;
  @useResult
  $Res call({String id, String name, DateTime creationDate, bool deleted});
}

/// @nodoc
class _$GovernorateModelCopyWithImpl<$Res, $Val extends GovernorateModel>
    implements $GovernorateModelCopyWith<$Res> {
  _$GovernorateModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GovernorateModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? creationDate = null,
    Object? deleted = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
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
abstract class _$$GovernorateModelImplCopyWith<$Res>
    implements $GovernorateModelCopyWith<$Res> {
  factory _$$GovernorateModelImplCopyWith(_$GovernorateModelImpl value,
          $Res Function(_$GovernorateModelImpl) then) =
      __$$GovernorateModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, DateTime creationDate, bool deleted});
}

/// @nodoc
class __$$GovernorateModelImplCopyWithImpl<$Res>
    extends _$GovernorateModelCopyWithImpl<$Res, _$GovernorateModelImpl>
    implements _$$GovernorateModelImplCopyWith<$Res> {
  __$$GovernorateModelImplCopyWithImpl(_$GovernorateModelImpl _value,
      $Res Function(_$GovernorateModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of GovernorateModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? creationDate = null,
    Object? deleted = null,
  }) {
    return _then(_$GovernorateModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
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
class _$GovernorateModelImpl extends _GovernorateModel {
  const _$GovernorateModelImpl(
      {required this.id,
      required this.name,
      required this.creationDate,
      required this.deleted})
      : super._();

  factory _$GovernorateModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$GovernorateModelImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final DateTime creationDate;
  @override
  final bool deleted;

  @override
  String toString() {
    return 'GovernorateModel(id: $id, name: $name, creationDate: $creationDate, deleted: $deleted)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GovernorateModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.creationDate, creationDate) ||
                other.creationDate == creationDate) &&
            (identical(other.deleted, deleted) || other.deleted == deleted));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, creationDate, deleted);

  /// Create a copy of GovernorateModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GovernorateModelImplCopyWith<_$GovernorateModelImpl> get copyWith =>
      __$$GovernorateModelImplCopyWithImpl<_$GovernorateModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GovernorateModelImplToJson(
      this,
    );
  }
}

abstract class _GovernorateModel extends GovernorateModel {
  const factory _GovernorateModel(
      {required final String id,
      required final String name,
      required final DateTime creationDate,
      required final bool deleted}) = _$GovernorateModelImpl;
  const _GovernorateModel._() : super._();

  factory _GovernorateModel.fromJson(Map<String, dynamic> json) =
      _$GovernorateModelImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  DateTime get creationDate;
  @override
  bool get deleted;

  /// Create a copy of GovernorateModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GovernorateModelImplCopyWith<_$GovernorateModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
