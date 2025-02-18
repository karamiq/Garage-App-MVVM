// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'money_transaction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MoneyTransactionImpl _$$MoneyTransactionImplFromJson(
        Map<String, dynamic> json) =>
    _$MoneyTransactionImpl(
      id: json['id'] as String,
      amount: (json['amount'] as num).toInt(),
      date: DateTime.parse(json['date'] as String),
      type: json['type'] as String,
    );

Map<String, dynamic> _$$MoneyTransactionImplToJson(
        _$MoneyTransactionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'amount': instance.amount,
      'date': instance.date.toIso8601String(),
      'type': instance.type,
    };
