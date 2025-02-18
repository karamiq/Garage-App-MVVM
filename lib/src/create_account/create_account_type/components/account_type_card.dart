import 'package:flutter/material.dart';

import '../../../../common_lib.dart';
import '../../../../data/providers/car_info_status.dart';

class AccountTypeCard extends StatefulWidget {
  const AccountTypeCard({
    super.key,
    required this.isOwnerType,
    required this.title,
    required this.subTitle,
    required this.onChange,
    required this.value,
  });

  final CarInfoStatus isOwnerType;
  final String title;
  final String subTitle;
  final ValueChanged<CarInfoStatus> onChange;
  final CarInfoStatus value;

  @override
  State<AccountTypeCard> createState() => _AccountTypeCardState();
}

class _AccountTypeCardState extends State<AccountTypeCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.5,
      surfaceTintColor: Colors.white,
      color: Theme.of(context).scaffoldBackgroundColor,
      child: ListTile(
        contentPadding: EdgeInsets.all(Insets.small),
        title: Text(
          widget.title,
          style: TextStyle(
              fontSize: CustomFontsTheme.bigSize,
              fontWeight: CustomFontsTheme.mediumWeight),
        ),
        subtitle: Text(widget.subTitle),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Radio<CarInfoStatus>(
              groupValue: widget.isOwnerType,
              value: widget.value,
              onChanged: (CarInfoStatus? newValue) {
                if (newValue != null) {
                  widget.onChange(newValue);
                  setState(() {});
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
