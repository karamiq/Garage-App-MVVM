import 'package:app/data/models/_models.dart';

part 'money_transaction.freezed.dart';
part 'money_transaction.g.dart';

@freezedResponse
class MoneyTransaction with _$MoneyTransaction {
  @jsonSerializableResponse
  const factory MoneyTransaction({
    required String id,
    required int amount,
    required DateTime date,
    required String type,
  }) = _MoneyTransaction;

  factory MoneyTransaction.fromJson(Map<String, dynamic> json) =>
      _$MoneyTransactionFromJson(json);
}
