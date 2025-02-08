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
              'غرامة ${debtStatementReceipt.number}#',
              style: TextStyle(
                fontSize: CustomFontsTheme.bigSize,
              ),
            ),
            Gap(Insets.exSmall),
            Text(
              debtStatementReceipt.creationDate.toString(),
              style: TextStyle(
                color: Theme.of(context).colorScheme.secondary,
              ),
            ),
          ],
        ),
        UnderLinedTextBUtton(
          text: 'تقديم شكوى',
          onTap: () => context
              .pushNamed(Routes.feesOnCarPage + Routes.sendingComplainPage, extra: {
            'isFromProfile': false,
            'debtStatementReceipt': debtStatementReceipt,
          }),
        )
      ],
    );
  }
}
