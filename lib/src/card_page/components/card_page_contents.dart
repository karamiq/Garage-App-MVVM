import 'package:flutter/material.dart';
import '../../../common_lib.dart';
import '../../../components/custom_list_tile.dart';
import '../../../components/viewed_item_title.dart';
import '../../../data/models/money_transaction.dart';
import '../../home_page/components/home_page_head.dart';
import '../../home_page/components/user_card.dart';

class CardPageContents extends StatelessWidget {
  final String imageUrl;
  final String qrData;
  final String carPlateInfo;
  final String carType;
  final String expireDate;
  final String cardNumber;
  final int cardMoney;
  final String mainText;
  final String secondText;
  final bool isCardPage;
  final List<MoneyTransaction> transactions;

  const CardPageContents({
    super.key,
    required this.imageUrl,
    required this.qrData,
    required this.carPlateInfo,
    required this.carType,
    required this.expireDate,
    required this.cardNumber,
    required this.cardMoney,
    required this.mainText,
    required this.secondText,
    required this.transactions,
    required this.isCardPage,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HomePageHead(
          imageUrl: imageUrl,
        ),
        SizedBox(height: Insets.medium),
        UserCard(
          isCardPage: isCardPage,
          cardAvailable: true,
          qrData: qrData,
          carPlateInfo: carPlateInfo,
          carType: carType,
          expireDate: expireDate,
          cardNumber: cardNumber,
          cardMoney: cardMoney,
        ),
        SizedBox(height: Insets.exLarge),
        ViewedItemsTitle(
          mainText: mainText,
          secontText: secondText,
          onTap: () => context.pushNamed(
            Routes.seeAllPage,
          ),
        ),
        ListView.separated(
          padding: EdgeInsets.symmetric(vertical: Insets.medium),
          itemCount: transactions.length,
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemBuilder: (context, index) {
            final transaction = transactions[index];
            return CustomListTile(
              icon: Assets.assetsIconsCard,
              title: transaction.type,
              subtitle: transaction.date.format(),
              trailing2: transaction.amount.toString(),
            );
          },
          separatorBuilder: (context, index) => SizedBox(height: Insets.small),
        ),
      ],
    );
  }
}
