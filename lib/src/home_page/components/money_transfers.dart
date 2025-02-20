import 'package:nafarat/components/custom_list_tile.dart';
import 'package:nafarat/data/models/money_transaction.dart';
import 'package:flutter/material.dart';
import '../../../common_lib.dart';

class MoneyTransfers extends StatelessWidget {
  const MoneyTransfers({
    super.key,
    required this.moneyTransfersList,
  });
  final List<MoneyTransaction> moneyTransfersList;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemBuilder: (context, index) => CustomListTile(
              icon: Assets.assetsIconsCardCharge,
              title: moneyTransfersList[index].type,
              subtitle: moneyTransfersList[index].date.formatDate(),
              trailing2: '${moneyTransfersList[index].amount} د.ع.'),
          separatorBuilder: (context, index) => Gap(Insets.small),
          itemCount: moneyTransfersList.length),
    );
  }
}
