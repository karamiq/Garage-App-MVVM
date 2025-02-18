import 'package:app/data/providers/settings_provider.dart';
import 'package:app/theme/theme_mode.dart';
import 'package:flutter/material.dart';

import '../common_lib.dart';

class ElevatedButtonChild extends ConsumerWidget {
  const ElevatedButtonChild({
    super.key,
    required this.text,
    required this.icon,
  });
  final String text;
  final dynamic icon;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isDark = ref.watch(settingsProvider).themeMode.isDark;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(text),
        Gap(Insets.small),
        if (icon is IconData)
          Icon(
            icon as IconData?,
          ),
        if (icon is String)
          SvgPicture.asset(
            icon as String,
            color: !isDark ? Colors.white : Colors.black,
          )
      ],
    );
  }
}
