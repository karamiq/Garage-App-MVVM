import 'package:flutter/material.dart';

import '../../../../common_lib.dart';
import '../../components/card_info_container.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    super.key,
    required this.userName,
    required this.expireDate,
    required this.cardNumber,
    required this.cardMoney,
    required this.image,
  });
  final String userName;
  final String expireDate;
  final String cardNumber;
  final String cardMoney;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 210,
        width: double.infinity,
        padding: EdgeInsets.all(Insets.medium),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(CustomBorderTheme.normalBorderRadius),
            gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  Color(0xFFF8A435).withAlpha(230),
                  Color(0xFFF78034).withAlpha(230),
                ])),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                            color: Theme.of(context).colorScheme.primaryContainer,
                            width: CustomBorderTheme.borderWidth / 2)),
                    padding: EdgeInsets.all(5),
                    child:
                        CircleAvatar(radius: 20, backgroundImage: NetworkImage(image))),
                Gap(Insets.small),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'البطاقة الشخصية',
                      style: TextStyle(color: Theme.of(context).colorScheme.surface),
                    ),
                    Text(
                      userName,
                      style: TextStyle(
                          fontSize: CustomFontsTheme.bigSize,
                          color: Theme.of(context).colorScheme.surface),
                    ),
                  ],
                ),
              ],
            ),
            Gap(Insets.small),
            Text(
              'رصيد حسابك',
              style: TextStyle(color: Theme.of(context).colorScheme.surface),
            ),
            Text(
              '$cardMoney د.ع',
              style: TextStyle(
                fontWeight: CustomFontsTheme.bigWeight,
                fontSize: CustomFontsTheme.veryBigSize,
              ),
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CardInfoContainer(
                    fontSize: CustomFontsTheme.verySmallSize,
                    text: 'انتهاء الصلاحية: $expireDate'),
                CardInfoContainer(
                    fontSize: CustomFontsTheme.verySmallSize,
                    text: 'رقم البطاقة: $cardNumber')
              ],
            )
          ],
        ));
  }
}
