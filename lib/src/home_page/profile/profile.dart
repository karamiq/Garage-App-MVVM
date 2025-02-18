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
    void onPressed() {}

    return Scaffold(
      appBar: CustomAppBar(
        title: 'الحساب الشخصي',
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(Insets.medium),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ProfileCard(
                userName: 'كرم رشيد توفيق',
                expireDate: ' 10/12/2025',
                cardNumber: '10023',
                cardMoney: '125,000',
                image: 'https://avatars.githubusercontent.com/u/171433280?v=4'),
            Gap(Insets.medium * 2.5),
            Card(
              elevation: 0,
              color: Theme.of(context).colorScheme.onSecondary,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomProfileOption(
                      onPressed: () =>
                          context.pushNamed(Routes.financialTranscationsPage),
                      title: 'العمليات المالية',
                      icon: Assets.assetsIconsMoney),
                  CustomProfileOption(
                      onPressed: () => showModalBottomSheet(
                            backgroundColor: context.colorScheme.onSecondary,
                            showDragHandle: true,
                            context: context,
                            builder: (context) => ChangeLanguageBottomSheet(),
                          ),
                      title: 'اللغة',
                      icon: Assets.assetsIconsGlobe),
                  ChangeThemeButton(),
                  CustomProfileOption(
                      onPressed: () =>
                          context.pushNamed(Routes.sendingComplainPage, extra: {
                            'isFromProfile': true,
                            'debtStatementReceipt': null,
                          }),
                      title: 'تقديم شكوى',
                      icon: Assets.assetsIconsReceipt),
                  CustomProfileOption(
                      onPressed: () => context.pushNamed(Routes.garageRatingPage),
                      title: 'تقييم الكراج',
                      icon: Assets.assetsIconsStar),
                ],
              ),
            ),
            Gap(Insets.medium),
            Card(
              semanticContainer: false,
              elevation: 0,
              color: Theme.of(context).colorScheme.onSecondary,
              child: CustomProfileOption(
                onPressed: () => showModalBottomSheet(
                  backgroundColor: context.colorScheme.onSecondary,
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
    final controller = ref.watch(settingsProvider.notifier);

    return SizedBox(
      width: context.width * .8,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(CustomBorderTheme.normalBorderRadius),
        ),
        child: Padding(
          padding: EdgeInsets.all(Insets.medium),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'اللغة',
                style: TextStyle(fontSize: CustomFontsTheme.bigSize),
              ),
              Gap(Insets.large),
              CustomLanguageButton(
                text: 'العربية',
                languageCode: 'ar',
                onTap: () async {
                  controller.setLocale(Locale('ar'));
                },
              ),
              CustomLanguageButton(
                text: 'English',
                languageCode: 'en',
                onTap: () {
                  //  controller.setLocale(Locale('en'));
                },
              ),
              CustomLanguageButton(
                text: 'كوردى',
                languageCode: 'ku',
                onTap: () async {
                  //   controller.setLocale(Locale('ar'));
                },
              ),
            ],
          ),
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
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(settingsProvider);
    final isSelected = controller.localeCode == languageCode;
    final theme = Theme.of(context);

    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12),
      child: SizedBox(
        width: context.width * .5,
        child: Card(
          elevation: 4,
          color: isSelected ? theme.colorScheme.primary : theme.colorScheme.surface,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
            side: BorderSide(
              color: isSelected ? theme.colorScheme.primary : theme.colorScheme.outline,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 36),
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: isSelected
                    ? theme.colorScheme.onPrimary
                    : theme.colorScheme.onSurface,
                fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                fontSize: 16,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
