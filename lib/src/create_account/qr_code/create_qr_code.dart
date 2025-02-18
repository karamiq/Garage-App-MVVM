import 'package:app/common_lib.dart';
import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import '../../../components/custom_auth_steps_tracker.dart';
import '../../../components/custom_back_botton.dart';
import '../../../data/providers/car_info_status.dart';

class CreateQrCodePage extends ConsumerWidget {
  const CreateQrCodePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isOwner =
        ref.watch(carInfoPageStatusProvider.notifier).state == CarInfoStatus.owner;
    void next() {
      if (isOwner) {
        context.pushNamed(Routes.keepGoingPage);
      } else {
        context.pushNamed(Routes.keepGoingPage);
      }
    }

    return Scaffold(
      appBar: AppBar(
        leadingWidth: 100,
        foregroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        leading: CustomBackButton(),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: Insets.medium, vertical: Insets.large),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Gap(Insets.medium * 2.9),
            CustomAuthStepsTracker(itemCount: isOwner ? 4 : 3, highlightIndex: 3),
            Gap(Insets.exLarge),
            Container(
              height: 300,
              width: 300,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
                borderRadius:
                    BorderRadius.circular(CustomBorderTheme.normalBorderRadius * 3),
              ),
              child: Center(
                child: Container(
                  width: 265,
                  height: 265,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(
                          CustomBorderTheme.normalBorderRadius * 2)),
                  child: Center(
                    child: QrImageView(
                        data:
                            'https://garagat-api.digital-logic.tech/Attachments/7ad203e5-2b92-4554-a7de-129e62b3964f.jpeg'),
                  ),
                ),
              ),
            ),
            Gap(Insets.large),
            Text(
              isOwner ? 'اذهب الى الهيأة لتفعيل حسابك' : 'قم بأنتظار المالك لأضافتك',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: CustomFontsTheme.veryBigSize,
              ),
            ),
            Spacer(),
            ElevatedButton(
              onPressed: next,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(isOwner ? 'التالي' : 'أبحث عن عمل'),
                  SizedBox(width: Insets.small),
                  SvgPicture.asset(
                    Assets.assetsIconsMagnifyingGlass,
                    color: Theme.of(context).scaffoldBackgroundColor,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
