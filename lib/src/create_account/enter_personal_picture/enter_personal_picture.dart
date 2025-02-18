import 'dart:async';

import 'package:flutter/material.dart';
import '../../../common_lib.dart';
import '../../../components/custom_auth_steps_tracker.dart';
import '../../../components/custom_back_botton.dart';
import '../../../data/providers/car_info_status.dart';
import '../../../data/providers/create_owner_controller.dart';
import 'components/personal_image_input.dart';

class EnterPersonalPicturePage extends ConsumerStatefulWidget {
  const EnterPersonalPicturePage({
    super.key,
  });

  @override
  ConsumerState<EnterPersonalPicturePage> createState() =>
      _EnterPersonalPicturePageState();
}

class _EnterPersonalPicturePageState extends ConsumerState<EnterPersonalPicturePage> {
  bool isValid = false;

  @override
  Widget build(BuildContext context) {
    var controller = ref.watch(createOwnerControllerProvider.notifier).state;
    final isOwner =
        ref.watch(carInfoPageStatusProvider.notifier).state == CarInfoStatus.owner;

    Future<bool> checkValidation() async {
      // controller.printVariables();
      setState(() {
        isValid = controller.personalPicture != null;
      });
      if (isValid) {
        /// await controller.register();
        if (isOwner) {
          context.pushNamed(Routes.createQrCodePage);
        } else {
          context.pushNamed(Routes.whereDoYouWantToWorkPage);
        }
      }
      return isValid;
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
          children: [
            Text(
              'أضف صورة شخصية',
              style: TextStyle(
                fontSize: CustomFontsTheme.veryBigSize,
              ),
            ),
            SizedBox(height: Insets.small),
            CustomAuthStepsTracker(
                itemCount: isOwner ? 4 : 3, highlightIndex: isOwner ? 2 : 1),
            SizedBox(height: Insets.exLarge * 2),
            PersonalImageInput(
              onPickImage: (image) => controller.personalPicture = image,
            ),
            Spacer(),
            ElevatedButton(onPressed: checkValidation, child: Text('التالي')),
          ],
        ),
      ),
    );
  }
}
