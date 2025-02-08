import 'package:flutter/material.dart';

import '../../../common_lib.dart';
import '../../../components/custom_svg_style.dart';

class HolderInfoRow extends StatelessWidget {
  const HolderInfoRow({
    super.key,
    required this.name,
    required this.state,
    required this.id,
    required this.phoneNumber,
    required this.photoUrl,
  });
  final String id;
  final String name;
  final String state;
  final String phoneNumber;
  final String photoUrl;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Theme.of(context).colorScheme.onSecondary,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: Insets.small, vertical: Insets.small),
        child: Row(
          children: [
            Expanded(
              flex: 11,
              child: Row(
                children: [
                  CircleAvatar(
                      backgroundImage: AssetImage(Assets.assetsImagesAvatarImage)),
                  Gap(Insets.small),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'الحائز',
                          style: TextStyle(fontSize: CustomFontsTheme.verySmallSize),
                        ),
                        Gap(Insets.exSmall),
                        Text(
                          name,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 3,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40,
              child: VerticalDivider(),
            ),
            Expanded(
              flex: 12,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Gap(Insets.medium),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'المحافظة',
                          style: TextStyle(fontSize: CustomFontsTheme.verySmallSize),
                        ),
                        Gap(Insets.exSmall),
                        Text(
                          state,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                        ),
                      ],
                    ),
                  ),
                  InkWell(
                      borderRadius:
                          BorderRadius.circular(CustomBorderTheme.normalBorderRadius),
                      onTap: () async => await (phoneNumber),
                      child: CustomSvgStyle(icon: Assets.assetsIconsPhone))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
