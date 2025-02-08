import 'package:app/data/providers/authentication_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import '../../common_lib.dart';
import '../../components/custom_list_tile.dart';

import '../../data/models/last_trips.dart';
import '../../data/models/profile.dart';
import '../../data/models/vehicle_debt_statement.dart';

import 'components/home_page_content.dart';
import 'components/home_page_skeleton.dart';

class HomePage extends ConsumerWidget {
  HomePage({super.key});

  Profile? profile;

  VehicleDebtStatement? vehicleDebtStatementDetails;

  LastTrips? lastTrips;

  Future<void> fetchData() async {}

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(authenticationProvider);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: Insets.medium),
        child: FutureBuilder(
          future: fetchData(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return HomePageSkeleton();
            } else if (snapshot.hasError) {
              return Center(child: Text('Error: ${snapshot.error}'));
            } else if (controller == null) {
              return Center(child: Text('No user data available.'));
            } else {
              return HomePageContent(
                cardAvailable: controller.driverCard != null,
                imageUrl: controller.image ?? '',
                carPlateInfo:
                    '${controller.vehicle?.first.plateNumber ?? ''} ${controller.vehicle?.first.plateCharacterName ?? ''} / ${controller.vehicle?.first.governorateName ?? ''}',
                carType: controller.vehicle != null && controller.vehicle!.isNotEmpty
                    ? controller.vehicle![0].vehicleModelName
                    : '',
                expireDate: controller.driverCard?.expiredDate.toString() ?? ' ',
                cardNumber: controller.driverCard?.number.toString() ?? '0',
                qrData: 'https://github.com/karamiq/Garage-App',
                cardMoney: controller.driverCard?.balance ?? 0,
                feesCardTitle: 'الغرامات المالية',
                feesCardNumber:
                    vehicleDebtStatementDetails?.numberOfReceipt.toString() ?? '0',
                feesCardNumText: 'غرامة مالية',
                tripsCardTitle: 'عدد الرحلات',
                tripsCardNumber: lastTrips!.totalTripNumber.toString(),
                tripsCardNumText: 'رحلة',
                moneyTransfersList: [
                  CustomListTile(
                    icon: Assets.assetsIconsRouting,
                    title: 'تم شحن البطاقة',
                    subtitle: '2023/2/24',
                    trailing2: '25,000 د. ع.',
                  ),
                ],
                latestTripsList: lastTrips!.tripHistory,
              );
            }
          },
        ),
      ),
    );
  }
}
