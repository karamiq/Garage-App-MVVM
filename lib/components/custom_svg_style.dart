import 'package:flutter/material.dart';

import '../common_lib.dart';

class CustomSvgStyle extends StatelessWidget {
  const CustomSvgStyle({
    super.key,
    required this.icon,
    this.color,
  });

  final String icon;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(Insets.small),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(CustomBorderTheme.normalBorderRadius),
        color: color != null
            ? color!.withOpacity(0.2)
            : Theme.of(context).colorScheme.onInverseSurface,
      ),
      child: SvgPicture.asset(
        icon,
        color: color ?? Theme.of(context).colorScheme.primary,
      ),
    );
  }
}
