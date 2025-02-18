import 'package:app/components/cusotm_row_skeleton.dart';
import 'package:flutter/material.dart';

import '../../../common_lib.dart';
import '../../../components/custom_app_bar.dart';
import '../../../components/custom_paginated_api_item_select.dart';
import '../../../data/fake_data/drivers_fake.dart';
import '../../../data/services/clients/auth_client.dart';
import '../components/holder_info_row.dart';

class AllAvailableDriversPage extends ConsumerWidget {
  const AllAvailableDriversPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final drivers = ref.watch(fakeIraqiInfoProvider);
    final garageController = TextEditingController();
    final stateController = TextEditingController();

    List driversList = [];
    List filteredDrivers = [];
    String searchQuery = '';

    void filterCars(String query) {
      if (true) {
        searchQuery = query;
        filteredDrivers = driversList
            .where((car) => car.name.toLowerCase().contains(query.toLowerCase()))
            .toList();
      }
    }

    return Scaffold(
      appBar: CustomAppBar(
        title: 'جميع الحائزين المتوفرين',
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(Insets.medium),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: CustomPaginatedApiItemSelect(
                      labelText: 'المحافظة',
                      controller: garageController,
                      function: (String search, int page) =>
                          ref.read(authClientProvider).getGovernorates(
                                name: search,
                                pageNumber: page,
                              ),
                      validator: null),
                ),
                Gap(Insets.small),
                Expanded(
                  child: CustomPaginatedApiItemSelect(
                      labelText: 'الكراج',
                      controller: stateController,
                      function: (String search, int page) =>
                          ref.read(authClientProvider).getGovernorates(
                                name: search,
                                pageNumber: page,
                              ),
                      validator: null),
                ),
              ],
            ),
            drivers.when(
                data: (data) => ListView.separated(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    //The filtered list must be applied here when linking with api
                    itemBuilder: (context, index) => HolderInfoRow(
                        name: 'محمد علي',
                        id: '93745',
                        phoneNumber: 'أ ',
                        photoUrl: Assets.assetsImagesAvatarImage,
                        state: 'صلاح الدين'),
                    separatorBuilder: (context, index) => Gap(Insets.small),
                    itemCount: 11),
                error: (e, r) => Center(child: Text('Error: $e')),
                loading: () => ListView.separated(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    //The filtered list must be applied here when linking with api
                    itemBuilder: (context, index) => CustomRowSkeleton(),
                    separatorBuilder: (context, index) => Gap(Insets.small),
                    itemCount: 11))
          ],
        ),
      ),
    );
  }
}
