import 'package:flutter/material.dart';

import '../../common_lib.dart';
import 'components/card_page_contents.dart';
import 'components/card_page_skeleton.dart';

class CardPage extends StatefulWidget {
  const CardPage({super.key});

  @override
  State<CardPage> createState() => _CardPageState();
}

class _CardPageState extends State<CardPage> {
  late Future _futureTransaction;

  @override
  void initState() {
    super.initState();
    _futureTransaction = driverCardTransaction();
  }

  Future driverCardTransaction() async {
    try {
      //  return await DriverCardTransactionService.cardTransactionGet('');
    } catch (e) {
      // Handle any potential errors here
      print('Error fetching transaction data: $e');
      return null; // Return null or handle as appropriate
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: Insets.medium),
        child: FutureBuilder(
          future: _futureTransaction,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return CardPageSkeleton();
            } else if (snapshot.hasError) {
              return Center(
                  child: Column(
                children: [
                  Gap(MediaQuery.of(context).size.height / 2.5),
                  Text('Error: ${snapshot.error}'),
                ],
              ));
            } else if (!snapshot.hasData || snapshot.data == null) {
              return Center(
                  child: Column(
                children: [
                  Gap(MediaQuery.of(context).size.height / 2.5),
                  Text('No data available'),
                ],
              ));
            } else {
              final transaction = snapshot.data!;
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CardPageContents(
                    imageUrl: 'path/to/image',
                    qrData: 'https://github.com/karamiq/Garage-App',
                    carPlateInfo: '24214 أ / بغداد',
                    carType: 'دوج جارجر',
                    expireDate: ' 10/12/2025',
                    cardNumber: '10023',
                    cardMoney: 125000,
                    buttonAppears: false,
                    mainText: 'أخر التحويلات المالية',
                    secondText: 'رؤية الجميع',
                    transactions: transaction.accumulatedPrice
                        .map((trans) => {
                              'title': trans.title,
                              'date': trans.date,
                              'amount': '${trans.amount} د. ع.'
                            })
                        .toList(),
                  ),
                ],
              );
            }
          },
        ),
      ),
    );
  }
}
