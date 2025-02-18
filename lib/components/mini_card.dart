import 'package:flutter/material.dart';

import '../common_lib.dart';

class MiniCard extends StatelessWidget {
  const MiniCard({
    super.key,
    required this.cardTitle,
    required this.cardNumber,
    required this.cardNumText,
    required this.decoration,
    required this.onIconPressed,
  });

  final Widget decoration;
  final String cardTitle;
  final String cardNumber;
  final String cardNumText;
  final void Function() onIconPressed;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Container(
        height: 170,
        width: constraints.maxWidth / 2 - 16,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.onInverseSurface,
          borderRadius: BorderRadius.circular(CustomBorderTheme.normalBorderRadius),
        ),
        child: Stack(
          children: [
            decoration,
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: EdgeInsets.all(Insets.small),
                child: Text(
                  cardTitle,
                  style: TextStyle(
                    fontSize: CustomFontsTheme.mediumSize,
                    fontWeight: CustomFontsTheme.mediumWeight,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: EdgeInsets.all(Insets.small),
                child: Row(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          cardNumber,
                          style: TextStyle(
                            fontSize: CustomFontsTheme.bigSize,
                            fontWeight: CustomFontsTheme.bigWeight,
                          ),
                        ),
                        Gap(Insets.exSmall),
                        Text(cardNumText),
                      ],
                    ),
                    const Spacer(),
                    IconButton(
                      onPressed: onIconPressed,
                      style: IconButton.styleFrom(
                        backgroundColor: context.theme.colorScheme.surface,
                      ),
                      icon: SvgPicture.asset(
                        Assets.assetsIconsVector,
                        color: context.theme.colorScheme.onSurface,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    });
  }
}
