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
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(text),
        Gap(Insets.small),
        if (icon is IconData)
          Icon(
            icon as IconData?,
          ),
        if (icon is String) SvgPicture.asset(icon as String, color: Colors.white)
      ],
    );
  }
}
