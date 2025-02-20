import 'package:nafarat/data/fake_data/constatnt_fake.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../common_lib.dart';
import '../../../../components/custom_svg_style.dart';
import '../../../home_page/components/home_page_head.dart';

class SelectedCarInfoHead extends StatelessWidget {
  const SelectedCarInfoHead({
    super.key,
    required this.userName,
    required this.phoneNumber,
  });

  final String userName;
  final String phoneNumber;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Theme.of(context).colorScheme.onSecondary,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: Insets.small, vertical: Insets.exSmall),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CustomCirculerAvatar(path: myImageUrl),
                Gap(Insets.small),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'الحائز',
                      style: TextStyle(fontSize: CustomFontsTheme.smallSize),
                    ),
                    Text(userName),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                    onPressed: () async {
                      final Uri phoneUri = Uri.parse('tel:$phoneNumber');
                      if (await canLaunchUrl(phoneUri)) {
                        await launchUrl(phoneUri);
                      } else {
                        debugPrint("Could not launch $phoneUri");
                      }
                    },
                    icon: CustomSvgStyle(icon: Assets.assetsIconsPhone)),
                Gap(Insets.small),
                Icon(
                  Icons.keyboard_arrow_down_outlined,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
