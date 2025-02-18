// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'garage_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Garage _$GarageFromJson(Map<String, dynamic> json) {
  return _Garage.fromJson(json);
}

/// @nodoc
mixin _$Garage {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  /// Serializes this Garage to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Garage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GarageCopyWith<Garage> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GarageCopyWith<$Res> {
  factory $GarageCopyWith(Garage value, $Res Function(Garage) then) =
      _$GarageCopyWithImpl<$Res, Garage>;
  @useResult
  $Res call({String id, String name});
}

/// @nodoc
class _$GarageCopyWithImpl<$Res, $Val extends Garage>
    implements $GarageCopyWith<$Res> {
  _$GarageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Garage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GarageImplCopyWith<$Res> implements $GarageCopyWith<$Res> {
  factory _$$GarageImplCopyWith(
          _$GarageImpl value, $Res Function(_$GarageImpl) then) =
      __$$GarageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name});
}

/// @nodoc
class __$$GarageImplCopyWithImpl<$Res>
    extends _$GarageCopyWithImpl<$Res, _$GarageImpl>
    implements _$$GarageImplCopyWith<$Res> {
  __$$GarageImplCopyWithImpl(
      _$GarageImpl _value, $Res Function(_$GarageImpl) _then)
      : super(_value, _then);

  /// Create a copy of Garage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$GarageImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@jsonSerializableResponse
class _$GarageImpl implements _Garage {
  const _$GarageImpl({required this.id, required this.name});

  factory _$GarageImpl.fromJson(Map<String, dynamic> json) =>
      _$$GarageImplFromJson(json);

  @override
  final String id;
  @override
  final String name;

  @override
  String toString() {
    return 'Garage(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GarageImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  /// Create a copy of Garage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GarageImplCopyWith<_$GarageImpl> get copyWith =>
      __$$GarageImplCopyWithImpl<_$GarageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GarageImplToJson(
      this,
    );
  }
}

abstract class _Garage implements Garage {
  const factory _Garage(
      {required final String id, required final String name}) = _$GarageImpl;

  factory _Garage.fromJson(Map<String, dynamic> json) = _$GarageImpl.fromJson;

  @override
  String get id;
  @override
  String get name;

  /// Create a copy of Garage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GarageImplCopyWith<_$GarageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
