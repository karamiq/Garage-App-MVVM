import 'package:app/components/custom_list_tile_skeleton.dart';
import 'package:app/data/fake_data/constatnt_fake.dart';
import 'package:app/data/fake_data/drivers_fake.dart';
import 'package:app/data/fake_data/profile_fake.dart';
import 'package:app/data/providers/car_info_status.dart';
import 'package:flutter/material.dart';
import '../../common_lib.dart';
import '../../components/cusotm_row_skeleton.dart';
import '../../components/custom_elevated_button.dart';
import '../../components/viewed_item_title.dart';

import '../home_page/components/home_page_head.dart';
import 'components/viechle_info_row.dart';

class VeichlesPage extends ConsumerWidget {
  const VeichlesPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: Insets.medium),
        child: Column(
          children: [
            HomePageHead(
              imageUrl: myImageUrl,
            ),
            Gap(Insets.large * 1.5),
            ViewedItemsTitle(
                mainText: 'المركبات التي تمتلكها',
                secontText: 'رؤية الجميع',
                onTap: () => context.pushNamed(
                      Routes.allVeichlesPage,
                    )),
            Gap(Insets.large * 1.5),
            ref.watch(profilesProvider).when(
                  data: (data) => ListView.separated(
                      padding: EdgeInsets.all(0),
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) => VehiclesInfoRow(
                          index: index,
                          id: index.toString(),
                          carType: data[index].carType,
                          carPlateNumber: (index + 1 * 2453).toString(),
                          carLetter: String.fromCharCode(0x0621 + index),
                          carState: 'بغداد'),
                      separatorBuilder: (context, index) => Gap(Insets.small),
                      itemCount: 3),
                  error: (e, r) => Center(child: Text('Error: $e')),
                  loading: () => ListView.separated(
                      padding: EdgeInsets.all(0),
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) => CustomListTileSkeleton(),
                      separatorBuilder: (context, index) => Gap(Insets.small),
                      itemCount: 3),
                ),
            Gap(Insets.large),
            ElevatedButton(
                onPressed: () {
                  context.pushNamed(Routes.ownerCarInfoPage);
                  ref.watch(carInfoPageStatusProvider.notifier).state =
                      CarInfoStatus.addingNewCar;
                },
                child: ElevatedButtonChild(
                    text: 'اضافة مركبة', icon: Assets.assetsIconsPlusCircle)),
            Gap(Insets.medium),
            Divider(),
            Gap(Insets.medium),
            ViewedItemsTitle(
                mainText: 'الحائزين المتوفرين',
                secontText: 'رؤية الجميع',
                onTap: () => context.pushNamed(
                      Routes.allAvailableDriversPage,
                    )),
            Gap(Insets.large),
            ref.watch(fakeIraqiInfoProvider()).when(
                data: (data) => ListView.separated(
                    padding: EdgeInsets.all(0),
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) => data[index],
                    separatorBuilder: (context, index) => Gap(Insets.small),
                    itemCount: 3),
                error: (e, r) => Center(child: Text('Error: $e')),
                loading: () => ListView.separated(
                    padding: EdgeInsets.all(0),
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) => CustomRowSkeleton(),
                    separatorBuilder: (context, index) => Gap(Insets.small),
                    itemCount: 3)),
          ],
        ),
      ),
    );
  }
}
