import 'package:flutter/material.dart';

import '../../../common_lib.dart';
import '../../../components/trip_card.dart';

import '../../../data/models/last_trips.dart';

class LatestTrips extends StatelessWidget {
  const LatestTrips({
    super.key,
    required this.latestTripsList,
  });
  final List<TripHistory> latestTripsList;
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
                    from: latestTripsList[index].garageName,
                    to: latestTripsList[index].toGarageName,
                    price: latestTripsList[index].taxes.toString()),
              ));
  }
}
