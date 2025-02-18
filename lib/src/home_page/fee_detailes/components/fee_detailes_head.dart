import 'package:flutter/material.dart';

import '../../../../common_lib.dart';
import '../../../../components/under_lined_text_button.dart';
import '../../../../data/models/vehicle_violations.dart';

class FeeDetailesHead extends StatelessWidget {
  const FeeDetailesHead({
    super.key,
    required this.debtStatementReceipt,
  });

  final Violation debtStatementReceipt;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'غرامة ${debtStatementReceipt.number + 1}#',
              style: TextStyle(
                fontSize: CustomFontsTheme.bigSize,
              ),
            ),
            Gap(Insets.exSmall),
            Text(
              debtStatementReceipt.creationDate.formatDate(),
              style: TextStyle(
                color: Theme.of(context).colorScheme.secondary,
              ),
            ),
          ],
        ),
        UnderlinedTextButton(
          text: 'تقديم شكوى',
          onTap: () => context.pushNamed(Routes.sendingComplainPage, extra: {
            'isFromProfile': false,
            'debtStatementReceipt': debtStatementReceipt,
          }),
        )
      ],
    );
  }
}
