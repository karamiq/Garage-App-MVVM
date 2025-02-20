import 'package:nafarat/data/fake_data/constatnt_fake.dart';
import 'package:flutter/material.dart';

import '../../common_lib.dart';
import '../../data/fake_data/money_transaction_fake.dart';
import 'components/card_page_contents.dart';
import 'components/card_page_skeleton.dart';

class CardPage extends ConsumerWidget {
  const CardPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: Insets.small, vertical: Insets.small),
          child: ref.watch(moneyTransactionsProvider).when(
              data: (data) {
                return CardPageContents(
                    isCardPage: true,
                    imageUrl: myImageUrl,
                    qrData: 'https://github.com/karamiq',
                    carPlateInfo: '24214 أ / بغداد',
                    carType: 'دوج جارجر',
                    expireDate: ' 10/12/2025',
                    cardNumber: '10023',
                    cardMoney: 125000,
                    mainText: 'أخر التحويلات المالية',
                    secondText: 'رؤية الجميع',
                    transactions: [...List.generate(4, (index) => data[index])]);
              },
              error: (error, stackTrace) => Center(
                    child: Column(
                      children: [
                        Gap(MediaQuery.of(context).size.height / 3.5),
                        Text('حدث خطأ: $error'),
                      ],
                    ),
                  ),
              loading: () => CardPageSkeleton())),
    );
  }
}
