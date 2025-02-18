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
    required this.qrData,
    this.cardAvailable = false,
    this.isCardPage = false,
  });
  final String cardNumber;
  final int cardMoney;
  final String expireDate;
  final String carType;
  final String carPlateInfo;
  final String qrData;
  final bool cardAvailable;
  final bool isCardPage;
  @override
  Widget build(BuildContext context) {
    if (cardAvailable) {
      return Stack(
        children: [
          ClipPath(
            clipper: isCardPage ? null : UserCardClipper(),
            child: Container(
                width: double.infinity,
                height: 210,
                padding: Insets.mediumAll,
                decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(CustomBorderTheme.normalBorderRadius),
                    color: Theme.of(context).colorScheme.primaryContainer),
                child: Column(
                  //mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
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
                            Gap(context.height * 0.02),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'رصيد البطاقة',
                                  style: TextStyle(
                                    color: Theme.of(context).colorScheme.secondary,
                                    fontSize: CustomFontsTheme.mediumSize,
                                  ),
                                ),
                                Text(
                                  "${cardMoney.toString()} د.ع",
                                  style: TextStyle(
                                    //   fontSize: CustomFontsTheme.bigSize,
                                    fontSize: 28,
                                    fontWeight: CustomFontsTheme.bigWeight,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        QrPage(qrData: qrData),
                      ],
                    ),
                    Spacer(),
                    BottomCardInfo(
                        carType: carType,
                        carPlateInfo: carPlateInfo,
                        expireDate: expireDate)
                  ],
                )),
          ),
          if (!isCardPage)
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
                      size: 30,
                      //size: 32,
                    ),
                  ),
                ),
              ),
            ),
        ],
      );
    } else {
      return ErrorWidget();
    }
  }
}

class ErrorWidget extends StatelessWidget {
  const ErrorWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
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
    );
  }
}

class BottomCardInfo extends StatelessWidget {
  const BottomCardInfo({
    super.key,
    required this.carType,
    required this.carPlateInfo,
    required this.expireDate,
  });

  final String carType;
  final String carPlateInfo;
  final String expireDate;

  @override
  Widget build(BuildContext context) {
    return Column(
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
    );
  }
}

class QrPage extends StatelessWidget {
  const QrPage({
    super.key,
    required this.qrData,
  });

  final String qrData;

  @override
  Widget build(BuildContext context) {
    return IconButton(
        style: IconButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(CustomBorderTheme.normalBorderRadius),
            ),
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            elevation: 1,
            shadowColor: Theme.of(context).colorScheme.shadow),
        onPressed: () => context.pushNamed(Routes.qrCodeGeneratorPage, extra: {
              'qrData': qrData,
              'newCar': false,
            }),
        icon: Icon(
          Icons.qr_code,
          color: Theme.of(context).colorScheme.primary,
        ));
  }
}

class ProfileButton extends StatelessWidget {
  const ProfileButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
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
    );
  }
}
