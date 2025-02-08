import 'package:flutter/material.dart';

import '../common_lib.dart';

class SubTitle extends StatelessWidget {
  const SubTitle({
    super.key,
    required this.ttt,
  });

  final String ttt;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          top: CustomPageTheme.bigPadding, bottom: CustomPageTheme.smallPadding),
      child: Text(
        ttt,
        style: const TextStyle(
          fontSize: CustomFontsTheme.bigSize,
        ),
      ),
    );
  }
}
