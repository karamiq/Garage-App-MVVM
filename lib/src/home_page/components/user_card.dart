import 'package:flutter/material.dart';
import '../../../common_lib.dart';
import '../../../components/user_card_clipper.dart';
import '../../../components/user_card_shimmer.dart';
import 'card_info_container.dart';

class UserCard extends StatelessWidget {
  const UserCard({
    super.key,
    required this.cardNumber,
    required this.cardMoney,
    required this.expireDate,
    required this.carType,
    required this.carPlateInfo,
    this.buttonAppears = true,
    required this.qrData,
    this.cardAvailable = false,
  });
  final String cardNumber;
  final int cardMoney;
  final String expireDate;
  final String carType;
  final String carPlateInfo;
  final String qrData;
  final bool buttonAppears;
  final bool cardAvailable;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        if (cardAvailable)
          ClipPath(
            clipper: buttonAppears ? UserCardClipper() : null,
            child: Container(
                width: double.infinity,
                height: 210,
                decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(CustomBorderTheme.normalBorderRadius),
                    color: Theme.of(context).colorScheme.primaryContainer),
                child: Stack(
                  children: [
                    if (buttonAppears)
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: IconButton(
                          onPressed: () => context.pushNamed(Routes.profilePage),
                          style: IconButton.styleFrom(
                              backgroundColor: Theme.of(context).colorScheme.primary,
                              foregroundColor: Theme.of(context).scaffoldBackgroundColor),
                          icon: Transform.rotate(
                            angle: 0.5,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(Icons.chevron_right),
                            ),
                          ),
                        ),
                      ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: Insets.small, vertical: Insets.exSmall),
                        child: IconButton(
                            style: IconButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      CustomBorderTheme.normalBorderRadius),
                                ),
                                backgroundColor:
                                    Theme.of(context).scaffoldBackgroundColor,
                                elevation: 1,
                                shadowColor: Theme.of(context).colorScheme.shadow),
                            onPressed: () =>
                                context.pushNamed(Routes.qrCodeGeneratorPage, extra: {
                                  'text': 'قم بأعطاء الكود عند البوابة للخروج من الكراج',
                                  'qrData': qrData,
                                  'newCar': false,
                                }),
                            icon: Icon(
                              Icons.qr_code,
                              color: Theme.of(context).colorScheme.primary,
                            )),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: Insets.small, vertical: Insets.exSmall),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'رقم البطاقة: ',
                                  style: TextStyle(
                                    color: Theme.of(context).colorScheme.secondary,
                                  ),
                                ),
                                //Data comming from api
                                Text(
                                  cardNumber,
                                  style: TextStyle(
                                    color: Theme.of(context).colorScheme.inverseSurface,
                                    fontWeight: CustomFontsTheme.bigWeight,
                                    fontSize: CustomFontsTheme.normalSize,
                                  ),
                                ),
                              ],
                            ),
                            Gap(Insets.small),
                            Text(
                              'رصيد البطاقة',
                              style: TextStyle(
                                color: Theme.of(context).colorScheme.secondary,
                                fontSize: CustomFontsTheme.mediumSize,
                              ),
                            ),
                            Text(
                              cardMoney.toString(),
                              style: TextStyle(
                                fontSize: CustomFontsTheme.bigSize,
                                fontWeight: CustomFontsTheme.bigWeight,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: Insets.small, vertical: Insets.small),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                CardInfoContainer(text: carType),
                                Gap(Insets.small),
                                CardInfoContainer(text: carPlateInfo)
                              ],
                            ),
                            Gap(Insets.small),
                            CardInfoContainer(text: 'انتهاء الصلاحية: $expireDate'),
                          ],
                        ),
                      ),
                    )
                  ],
                )),
          )
        else
          Stack(
            alignment: Alignment.center,
            children: [
              UserCardShimmer(),
              Text(
                'لاتوجد بطاقة',
                style: TextStyle(
                    fontSize: CustomFontsTheme.veryBigSize,
                    fontWeight: CustomFontsTheme.bigWeight),
              ),
            ],
          ),
        if (buttonAppears)
          Positioned(
            bottom: 0,
            left: 0,
            child: IconButton(
              onPressed: () => context.pushNamed(Routes.profilePage),
              style: IconButton.styleFrom(
                  backgroundColor: Theme.of(context).colorScheme.primary,
                  foregroundColor: Theme.of(context).scaffoldBackgroundColor),
              icon: Transform.rotate(
                angle: 0.5,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.chevron_right,
                    size: 32,
                  ),
                ),
              ),
            ),
          ),
      ],
    );
  }
}
