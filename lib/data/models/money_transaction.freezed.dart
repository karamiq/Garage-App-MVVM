// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'money_transaction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MoneyTransaction _$MoneyTransactionFromJson(Map<String, dynamic> json) {
  return _MoneyTransaction.fromJson(json);
}

/// @nodoc
mixin _$MoneyTransaction {
  String get id => throw _privateConstructorUsedError;
  int get amount => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;

  /// Serializes this MoneyTransaction to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MoneyTransaction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MoneyTransactionCopyWith<MoneyTransaction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MoneyTransactionCopyWith<$Res> {
  factory $MoneyTransactionCopyWith(
          MoneyTransaction value, $Res Function(MoneyTransaction) then) =
      _$MoneyTransactionCopyWithImpl<$Res, MoneyTransaction>;
  @useResult
  $Res call({String id, int amount, DateTime date, String type});
}

/// @nodoc
class _$MoneyTransactionCopyWithImpl<$Res, $Val extends MoneyTransaction>
    implements $MoneyTransactionCopyWith<$Res> {
  _$MoneyTransactionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MoneyTransaction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? amount = null,
    Object? date = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MoneyTransactionImplCopyWith<$Res>
    implements $MoneyTransactionCopyWith<$Res> {
  factory _$$MoneyTransactionImplCopyWith(_$MoneyTransactionImpl value,
          $Res Function(_$MoneyTransactionImpl) then) =
      __$$MoneyTransactionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, int amount, DateTime date, String type});
}

/// @nodoc
class __$$MoneyTransactionImplCopyWithImpl<$Res>
    extends _$MoneyTransactionCopyWithImpl<$Res, _$MoneyTransactionImpl>
    implements _$$MoneyTransactionImplCopyWith<$Res> {
  __$$MoneyTransactionImplCopyWithImpl(_$MoneyTransactionImpl _value,
      $Res Function(_$MoneyTransactionImpl) _then)
      : super(_value, _then);

  /// Create a copy of MoneyTransaction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? amount = null,
    Object? date = null,
    Object? type = null,
  }) {
    return _then(_$MoneyTransactionImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@jsonSerializableResponse
class _$MoneyTransactionImpl implements _MoneyTransaction {
  const _$MoneyTransactionImpl(
      {required this.id,
      required this.amount,
      required this.date,
      required this.type});

  factory _$MoneyTransactionImpl.fromJson(Map<String, dynamic> json) =>
      _$$MoneyTransactionImplFromJson(json);

  @override
  final String id;
  @override
  final int amount;
  @override
  final DateTime date;
  @override
  final String type;

  @override
  String toString() {
    return 'MoneyTransaction(id: $id, amount: $amount, date: $date, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MoneyTransactionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, amount, date, type);

  /// Create a copy of MoneyTransaction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MoneyTransactionImplCopyWith<_$MoneyTransactionImpl> get copyWith =>
      __$$MoneyTransactionImplCopyWithImpl<_$MoneyTransactionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MoneyTransactionImplToJson(
      this,
    );
  }
}

abstract class _MoneyTransaction implements MoneyTransaction {
  const factory _MoneyTransaction(
      {required final String id,
      required final int amount,
      required final DateTime date,
      required final String type}) = _$MoneyTransactionImpl;

  factory _MoneyTransaction.fromJson(Map<String, dynamic> json) =
      _$MoneyTransactionImpl.fromJson;

  @override
  String get id;
  @override
  int get amount;
  @override
  DateTime get date;
  @override
  String get type;

  /// Create a copy of MoneyTransaction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MoneyTransactionImplCopyWith<_$MoneyTransactionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
