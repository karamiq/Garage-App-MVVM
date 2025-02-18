import 'package:app/common_lib.dart';
import 'package:app/data/models/money_transaction.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'constatnt_fake.dart';

part 'money_transaction_fake.g.dart';

@riverpod
Future<List<MoneyTransaction>> moneyTransactions(Ref ref) async {
  final transactionTypes = [
    "إيداع",
    "سحب",
    "تحويل",
    "دفع فاتورة",
    "شحن رصيد",
    "استرداد",
    "تحويل بين الحسابات",
    "دفع قرض",
  ];
  await Future.delayed(Duration(seconds: delaySeconds));
  return List.generate(35, (index) {
    return MoneyTransaction(
      id: (index + 1).toString(),
      amount: 10000 + (index * 5000), // Increasing amount for variety
      date: DateTime(2023, 10, index + 1), // Unique date for each transaction
      type: transactionTypes[index % transactionTypes.length], // Alternating types
    );
  });
}
