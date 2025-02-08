import 'package:flutter/material.dart';

import '../../../common_lib.dart';
import '../../../components/custom_svg_style.dart';

class VehiclesInfoRow extends StatelessWidget {
  const VehiclesInfoRow({
    super.key,
    required this.carType,
    required this.carPlateNumber,
    required this.carLetter,
    required this.carState,
    required this.id,
  });
  final String id;
  final String carType;
  final String carPlateNumber;
  final String carLetter;
  final String carState;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Theme.of(context).colorScheme.onSecondary,
      child: InkWell(
        onTap: () => context.pushNamed(Routes.selectedCarInfoPage),
        borderRadius: BorderRadius.circular(CustomBorderTheme.normalBorderRadius),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: Insets.small, vertical: Insets.small),
          child: Row(
            children: [
              Expanded(
                flex: 11,
                child: Row(
                  children: [
                    CustomSvgStyle(icon: Assets.assetsIconsCar),
                    Gap(Insets.small),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'السيارة',
                            style: TextStyle(fontSize: CustomFontsTheme.verySmallSize),
                          ),
                          Gap(Insets.exSmall),
                          Text(
                            carType,
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
                flex: 13,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Gap(Insets.small),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'الرقم',
                            style: TextStyle(fontSize: CustomFontsTheme.verySmallSize),
                          ),
                          Gap(Insets.exSmall),
                          Text(
                            '$carPlateNumber$carLetter/$carState',
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                          ),
                        ],
                      ),
                    ),
                    Icon(Icons.chevron_right,
                        color: Theme.of(context).colorScheme.primary),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
