import 'package:nafarat/data/providers/authentication_provider.dart';
import 'package:nafarat/data/providers/settings_provider.dart';
import 'package:nafarat/theme/theme_mode.dart';
import 'package:flutter/material.dart';

import '../../../../common_lib.dart';
import '../../../../components/custom_svg_style.dart';

class SignOutBottomSheet extends ConsumerWidget {
  const SignOutBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(authenticationProvider.notifier);
    final settings = ref.watch(settingsProvider);
    return SizedBox(
      height: 280,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(CustomBorderTheme.normalBorderRadius),
        ),
        child: Padding(
          padding: EdgeInsets.all(Insets.medium),
          child: Column(
            children: [
              Container(
                width: 60,
                height: 8,
                decoration: BoxDecoration(
                    color: settings.themeMode.isDark ? Colors.white : Colors.grey,
                    borderRadius:
                        BorderRadius.circular(CustomBorderTheme.normalBorderRadius)),
              ),
              Gap(Insets.medium),
              Text(
                'هل انت متأكد من ذلك ؟ ',
                style: TextStyle(fontSize: CustomFontsTheme.bigSize),
              ),
              Spacer(),
              ElevatedButton(
                  onPressed: () {
                    controller.logout();
                  },
                  style: ElevatedButton.styleFrom(
                      minimumSize: Size(double.infinity, 40),
                      backgroundColor: Theme.of(context).colorScheme.error),
                  child: Text('تسجيل الخروج')),
              TextButton(
                  onPressed: () =>
                      ref.read(settingsProvider.notifier).toggleThemeMode(context),
                  style: TextButton.styleFrom(
                    minimumSize: Size(double.infinity, 40),
                    foregroundColor: Theme.of(context).colorScheme.onSurface,
                  ),
                  child: Text('لا',
                      style: TextStyle(fontSize: CustomFontsTheme.mediumSize))),
              Gap(Insets.medium),
            ],
          ),
        ),
      ),
    );
  }
}

class ChangeThemeButton extends ConsumerStatefulWidget {
  const ChangeThemeButton({super.key});

  @override
  ConsumerState<ChangeThemeButton> createState() => _ChangeThemeButtonState();
}

class _ChangeThemeButtonState extends ConsumerState<ChangeThemeButton> {
  @override
  Widget build(BuildContext context) {
    final isDark = ref.watch(settingsProvider).themeMode.isDark;
    return ListTile(
        leading: CustomSvgStyle(icon: Assets.assetsIconsPaintRoller),
        title: Text('الثيم'),
        trailing: Switch(
            value: isDark,
            onChanged: (value) {
              setState(() {
                if (value) {
                  ref.read(settingsProvider.notifier).toggleThemeMode(context);
                } else {
                  ref.read(settingsProvider.notifier).toggleThemeMode(context);
                }
              });
            }));
  }
}
