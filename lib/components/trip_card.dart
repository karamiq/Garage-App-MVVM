import 'package:nafarat/data/models/trip_info_model.dart';
import 'package:flutter/material.dart';

import '../common_lib.dart';

class TripCard extends StatelessWidget {
  const TripCard({super.key, required this.trip});
  final TripInfo trip;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(CustomBorderTheme.normalBorderRadius),
      onTap: () => context.pushNamed(Routes.tripDetailesPage, extra: trip),
      child: Container(
          padding: EdgeInsets.symmetric(vertical: Insets.small, horizontal: Insets.small),
          decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.onSecondary,
              borderRadius: BorderRadius.circular(CustomBorderTheme.normalBorderRadius)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                flex: 11,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.all(Insets.small),
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(CustomBorderTheme.normalBorderRadius),
                        color: Theme.of(context).colorScheme.onInverseSurface,
                      ),
                      child: SvgPicture.asset(
                        Assets.assetsIconsRouting,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                    Gap(Insets.small),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'من',
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.secondary,
                              fontSize: CustomFontsTheme.smallSize,
                            ),
                          ),
                          Text(
                            trip.fromGarage,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 40.0,
                child: VerticalDivider(
                  thickness: 1,
                ),
              ),
              Expanded(
                flex: 14,
                child: Row(
                  children: [
                    Gap(Insets.exSmall),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'الى',
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.secondary,
                              fontSize: CustomFontsTheme.smallSize,
                            ),
                          ),
                          Text(
                            trip.toGarage,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 3,
                          ),
                        ],
                      ),
                    ),
                    Gap(Insets.small),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'السعر الكلي',
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.secondary,
                              fontSize: CustomFontsTheme.smallSize,
                            ),
                          ),
                          Text(
                            '${trip.totalPrice} د. ع.',
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
          )),
    );
  }
}
