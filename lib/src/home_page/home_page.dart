import 'package:nafarat/data/fake_data/constatnt_fake.dart';
import 'package:nafarat/data/fake_data/profile_fake.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import '../../common_lib.dart';

import 'components/home_page_content.dart';
import 'components/home_page_skeleton.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  Future<void> fetchData() async {}

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: ref.watch(profilesProvider()).when(
            data: (data) {
              final prof = data[itemFake];
              return HomePageContent(
                  cardAvailable: true,
                  imageUrl: myImageUrl,
                  carPlateInfo: prof.carPlateInfo,
                  carType: prof.carType,
                  expireDate: prof.expireDate,
                  cardNumber: prof.cardNumber.toString(),
                  qrData: 'https://github.com/karamiq',
                  cardMoney: prof.cardMoney,
                  feesCardTitle: prof.feesCardTitle,
                  feesCardNumber: prof.feesCardNumber,
                  feesCardNumText: prof.feesCardNumText,
                  tripsCardTitle: prof.tripsCardTitle,
                  tripsCardNumber: prof.tripsCardNumber,
                  tripsCardNumText: prof.tripsCardNumText,
                  moneyTransfersList: prof.moneyTransfersList,
                  latestTripsList: prof.latestTripsList);
            },
            error: (error, t) {
              return Center(child: Text('Error: $error'));
            },
            loading: () => HomePageSkeleton()));
  }
}
// }
// Padding(
//         padding: EdgeInsets.symmetric(horizontal: Insets.medium),
//         child: FutureBuilder(
//           future: fetchData(),
//           builder: (context, snapshot) {
//             if (snapshot.connectionState == ConnectionState.waiting) {
//               return HomePageSkeleton();
//             } else if (snapshot.hasError) {
//               return Center(child: Text('Error: ${snapshot.error}'));
//             } else if (controller == null) {
//               return Center(child: Text('No user data available.'));
//             } else {
//               return HomePageContent(
//                 cardAvailable: controller.driverCard != null,
//                 imageUrl: controller.image ?? '',
//                 carPlateInfo:
//                     '${controller.vehicle?.first.plateNumber ?? ''} ${controller.vehicle?.first.plateCharacterName ?? ''} / ${controller.vehicle?.first.governorateName ?? ''}',
//                 carType: controller.vehicle != null && controller.vehicle!.isNotEmpty
//                     ? controller.vehicle![0].vehicleModelName
//                     : '',
//                 expireDate: controller.driverCard?.expiredDate.toString() ?? ' ',
//                 cardNumber: controller.driverCard?.number.toString() ?? '0',
//                 qrData: 'https://github.com/karamiq/Garage-App',
//                 cardMoney: controller.driverCard?.balance ?? 0,
//                 feesCardTitle: 'الغرامات المالية',
//                 feesCardNumber:
//                     vehicleDebtStatementDetails?.numberOfReceipt.toString() ?? '0',
//                 feesCardNumText: 'غرامة مالية',
//                 tripsCardTitle: 'عدد الرحلات',
//                 tripsCardNumber: lastTrips!.totalTripNumber.toString(),
//                 tripsCardNumText: 'رحلة',
//                 moneyTransfersList: [
//                   CustomListTile(
//                     icon: Assets.assetsIconsRouting,
//                     title: 'تم شحن البطاقة',
//                     subtitle: '2023/2/24',
//                     trailing2: '25,000 د. ع.',
//                   ),
//                 ],
//                 latestTripsList: lastTrips!.tripHistory,
//               );
//             }
//           },
//         ),
//       ),
