import 'package:flutter/material.dart';
import '../../../common_lib.dart';

class MoneyTransfers extends StatelessWidget {
  const MoneyTransfers({
    super.key,
    required this.moneyTransfersList,
  });
  final List moneyTransfersList;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemBuilder: (context, index) => moneyTransfersList[index],
          separatorBuilder: (context, index) => Gap(Insets.small),
          itemCount: moneyTransfersList.length),
    );
  }
}
