import 'package:nafarat/data/models/trip_info_model.dart';
import 'package:flutter/material.dart';

import '../../../common_lib.dart';
import '../../../components/trip_card.dart';

class LatestTrips extends StatelessWidget {
  const LatestTrips({
    super.key,
    required this.latestTripsList,
  });
  final List<TripInfo> latestTripsList;
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(top: Insets.medium),
        child: latestTripsList.isEmpty
            ? Center(
                child: Text(
                  'لاتوجد رحلات سابقة',
                  style: TextStyle(fontSize: CustomFontsTheme.mediumSize),
                ),
              )
            : ListView.separated(
                itemCount: latestTripsList.length,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                separatorBuilder: (context, index) => Gap(Insets.small),
                itemBuilder: (context, index) => TripCard(
                  trip: latestTripsList[index],
                ),
              ));
  }
}
