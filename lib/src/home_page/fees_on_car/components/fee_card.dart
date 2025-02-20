import 'package:nafarat/common_lib.dart';
import 'package:flutter/material.dart';

import '../../../../data/models/vehicle_violations.dart';

class FeeCard extends StatelessWidget {
  const FeeCard({
    super.key,
    required this.debtStatementReceipt,
  });
  final Violation debtStatementReceipt;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Theme.of(context).colorScheme.onSecondary,
      child: ListTile(
        onTap: () => context.pushNamed(Routes.feeDetailesPage,
            //here is where tha id is passed
            extra: debtStatementReceipt),
        contentPadding: EdgeInsets.symmetric(horizontal: Insets.small),
        leading: Container(
          padding: EdgeInsets.all(Insets.small),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(CustomBorderTheme.normalBorderRadius),
            color: Theme.of(context).colorScheme.onInverseSurface,
          ),
          child: SvgPicture.asset(
            Assets.assetsIconsCard,
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
        title: Text('غرامة مالية'),
        subtitle: Text(
          '${debtStatementReceipt.amount} د. ع',
          style: TextStyle(
            color: Theme.of(context).colorScheme.secondary,
            fontSize: CustomFontsTheme.smallSize,
          ),
        ),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Insets.exLarge),
                    color: debtStatementReceipt.isPaid
                        ? Color.fromARGB(255, 107, 215, 163)
                        : Theme.of(context).colorScheme.errorContainer),
                padding: EdgeInsets.all(Insets.small),
                child: Text(
                  debtStatementReceipt.isPaid ? 'مدفوعة' : ' غير مدفوعة',
                  style: TextStyle(
                      color: context.theme.colorScheme.onSurface,
                      fontSize: CustomFontsTheme.smallSize),
                )),
            Gap(Insets.small),
            Icon(
              Icons.chevron_right_outlined,
              color: Theme.of(context).colorScheme.primary,
            ),
          ],
        ),
      ),
    );
  }
}
