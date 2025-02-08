import 'package:app/theme/theme_mode.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';

import '../../../common_lib.dart';
import '../../../components/custom_app_bar.dart';
import '../../../data/providers/settings_provider.dart';
import 'components/custom_profile_option.dart';
import 'components/profile_card.dart';
import 'components/sign_out_bottom_sheet.dart';

class ProfilePage extends ConsumerWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    void onPressed() {
      print('ffffff');
    }

    return Scaffold(
      appBar: CustomAppBar(
        title: 'الحساب الشخصي',
      ),
      body: Padding(
        padding: EdgeInsets.all(Insets.medium),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ProfileCard(
                userName: 'محمد علي محمد',
                expireDate: ' 10/12/2025',
                cardNumber: '10023',
                cardMoney: '125,000'),
            Gap(Insets.medium * 2.5),
            Card(
              elevation: 0,
              color: Theme.of(context).colorScheme.onSecondary,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomProfileOption(
                      onPressed: () => context.pushNamed(
                          Routes.profilePage + Routes.financialTranscationsPage),
                      title: 'العمليات المالية',
                      icon: Assets.assetsIconsMoney),
                  CustomProfileOption(
                      onPressed: () => showModalBottomSheet(
                            context: context,
                            builder: (context) => ChangeLanguageBottomSheet(),
                          ),
                      title: 'اللغة',
                      icon: Assets.assetsIconsGlobe),
                  ChangeThemeButton(),
                  CustomProfileOption(
                      onPressed: () => context.pushNamed(
                              Routes.feesOnCarPage + Routes.sendingComplainPage,
                              extra: {
                                'isFromProfile': true,
                                'id': '',
                                'fee': '',
                                'feeReason': '',
                                'feeDate': '',
                                'feeNumber': '',
                              }),
                      title: 'تقديم شكوى',
                      icon: Assets.assetsIconsReceipt),
                  CustomProfileOption(
                      onPressed: () =>
                          context.pushNamed(Routes.profilePage + Routes.garageRatingPage),
                      title: 'تقييم الكراج',
                      icon: Assets.assetsIconsStar),
                ],
              ),
            ),
            Spacer(),
            Card(
              semanticContainer: false,
              elevation: 0,
              color: Theme.of(context).colorScheme.onSecondary,
              child: CustomProfileOption(
                onPressed: () => showModalBottomSheet(
                  context: context,
                  builder: (context) => SignOutBottomSheet(),
                ),
                title: 'تسجيل الخروج',
                icon: Assets.assetsIconsStar,
                color: Theme.of(context).colorScheme.error,
              ),
            ),
            Gap(Insets.medium),
          ],
        ),
      ),
    );
  }
}

class ChangeLanguageBottomSheet extends ConsumerWidget {
  const ChangeLanguageBottomSheet({
    super.key,
  });
  //final String text;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(settingsProvider);
    return Card(
      elevation: 0,
      color: Theme.of(context).colorScheme.onSecondary,
      child: Padding(
        padding: EdgeInsets.all(Insets.medium),
        child: Column(
          children: [
            Container(
              width: 60,
              height: 8,
              decoration: BoxDecoration(
                  color: controller.themeMode.isDark ? Colors.white : Colors.grey,
                  borderRadius:
                      BorderRadius.circular(CustomBorderTheme.normalBorderRadius)),
            ),
            Gap(Insets.medium),
            Text(
              'اللغة',
              style: TextStyle(fontSize: CustomFontsTheme.bigSize),
            ),
            Gap(Insets.large),
            CustomLanguageButton(
              text: 'العربية',
              languageCode: 'ar',
              onTap: () {},
            ),
            CustomLanguageButton(
              text: 'English',
              languageCode: 'en',
              onTap: () {},
            ),
            CustomLanguageButton(
              text: 'كوردى',
              languageCode: 'ku',
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}

class CustomLanguageButton extends ConsumerWidget {
  const CustomLanguageButton({
    super.key,
    required this.text,
    required this.languageCode,
    required this.onTap,
  });
  final String text;
  final String languageCode;
  final onTap;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(settingsProvider);
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(CustomBorderTheme.normalBorderRadius),
      child: Card(
        elevation: 0,
        color: controller.localeCode == languageCode
            ? Theme.of(context).colorScheme.onSecondary
            : Theme.of(context).colorScheme.primary,
        child: Ink(
          child: Padding(
            padding: EdgeInsets.symmetric(
                vertical: Insets.small, horizontal: Insets.exLarge * 3),
            child: Text(
              text,
              style: TextStyle(
                color: Theme.of(context).colorScheme.onSecondary,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
