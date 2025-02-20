import 'package:nafarat/data/fake_data/trip_info_fake.dart';
import 'package:flutter/material.dart';

import '../../../common_lib.dart';
import '../../../components/custom_app_bar.dart';
import '../../../components/trip_card.dart';
import '../components/trips_sequared_card.dart';

class TripsPage extends ConsumerWidget {
  const TripsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: Insets.medium, vertical: Insets.medium),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TripsSequaredInfoCard(
                    title: 'عدد الرحلات الكلية',
                    count: '50',
                    type: 'زيادة',
                    iconType: Icons.trending_up_outlined,
                    percentage: '+6.08'),
                TripsSequaredInfoCard(
                    title: 'عدد الرحلات الأسبوعية',
                    count: '18',
                    type: 'زيادة',
                    iconType: Icons.trending_up_outlined,
                    percentage: '+2.03'),
              ],
            ),
            Gap(Insets.medium),
            ListView.separated(
              padding: EdgeInsets.all(0),
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 11,
              itemBuilder: (context, index) => TripCard(
                trip: ref.watch(tripInfoProvider)[index],
              ),
              separatorBuilder: (context, index) => Gap(Insets.small),
            )
          ],
        ),
      ),
    );
  }
}
