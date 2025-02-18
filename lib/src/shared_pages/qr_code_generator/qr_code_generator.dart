import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import '../../../common_lib.dart';
import '../../../components/custom_app_bar.dart';
import '../../../components/custom_elevated_button.dart';

class QrCodeGEneratorPage extends StatelessWidget {
  const QrCodeGEneratorPage({super.key, required this.newCar, required this.qrData});
  final String qrData;
  final bool newCar;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: newCar ? null : CustomAppBar(),
      body: Center(
        heightFactor: .9,
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: Insets.medium, vertical: Insets.large),
          child: Stack(
            children: [
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 300,
                      width: 300,
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primary,
                        borderRadius: BorderRadius.circular(
                            CustomBorderTheme.normalBorderRadius * 3),
                      ),
                      child: Center(
                        child: Container(
                          width: 265,
                          height: 265,
                          padding: EdgeInsets.all(Insets.exSmall),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(
                                  CustomBorderTheme.normalBorderRadius * 2)),
                          child: Center(
                            child: QrImageView(
                              dataModuleStyle: QrDataModuleStyle(
                                  color: context.theme.colorScheme.primary,
                                  dataModuleShape: QrDataModuleShape.square),
                              foregroundColor: context.theme.colorScheme.primary,
                              data: qrData,
                              version: QrVersions.auto,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Gap(Insets.medium),
                    Text(
                      'قم بأعطاء الكود عند البوابة للخروج من الكراج',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: CustomFontsTheme.veryBigSize,
                      ),
                    ),
                  ],
                ),
              ),
              if (newCar)
                Align(
                  alignment: AlignmentDirectional.bottomCenter,
                  child: ElevatedButton(
                      onPressed: () => context.pushNamed(Routes.tapsPage),
                      child: ElevatedButtonChild(
                          text: 'أضافة بالدفع الألكتروني', icon: Assets.assetsIconsCard)),
                )
            ],
          ),
        ),
      ),
    );
  }
}
