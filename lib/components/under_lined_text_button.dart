import 'package:flutter/material.dart';

import '../common_lib.dart';

class UnderlinedTextButton extends StatelessWidget {
  const UnderlinedTextButton({super.key, required this.text, required this.onTap});
  final String text;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.all(Insets.exSmall),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              text,
              style: TextStyle(
                color: Theme.of(context).colorScheme.onPrimaryFixedVariant,
                fontSize: CustomFontsTheme.smallSize,
              ),
            ),
            Gap(Insets.exSmall),
            Container(
              height: 1.5,
              width: (text.length * 7.1), // Convert double to String
              color: Theme.of(context).colorScheme.onPrimaryFixedVariant,
            ),
          ],
        ),
      ),
    );
  }
}
