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
    final garageController = TextEditingController();
    final stateController = TextEditingController();

    // Call the provider with the current state and garage values
    final drivers = ref.watch(fakeIraqiInfoProvider(
        region: stateController.text, garage: garageController.text));

    List driversList = [];
    List filteredDrivers = [];
    String searchQuery = '';

    void filterCars(String query) {
      ref.refresh(fakeIraqiInfoProvider(
        region: stateController.text,
        garage: garageController.text,
      ));
    }

    return Scaffold(
      appBar: const CustomAppBar(
        title: 'جميع الحائزين المتوفرين',
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(Insets.medium),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: CustomPaginatedApiItemSelect(
                    labelText: 'المحافظة',
                    controller: stateController,
                    function: (String search, int page) =>
                        ref.read(authClientProvider).getGovernorates(
                              name: search,
                              pageNumber: page,
                            ),
                    validator: null,
                    onChanged: (value) {
                      ref.refresh(
                        fakeIraqiInfoProvider(
                          region: stateController.text,
                          garage: garageController.text,
                        ),
                      );
                    },
                  ),
                ),
                const Gap(Insets.small),
                Expanded(
                  child: CustomPaginatedApiItemSelect(
                    labelText: 'الكراج',
                    controller: garageController,
                    function: (String search, int page) =>
                        ref.read(authClientProvider).getGovernorates(
                              name: search,
                              pageNumber: page,
                            ),
                    validator: null,
                    onChanged: (value) {
                      ref.refresh(
                        fakeIraqiInfoProvider(
                          region: stateController.text,
                          garage: garageController.text,
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
            drivers.when(
              data: (data) => ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) => HolderInfoRow(
                  name: data[index].name,
                  state: data[index].state,
                  id: data[index].id,
                  phoneNumber: data[index].phoneNumber,
                  photoUrl: data[index].photoUrl,
                ),
                separatorBuilder: (context, index) => const Gap(Insets.small),
                itemCount: data.length,
              ),
              error: (e, r) => Center(child: Text('Error: $e')),
              loading: () => ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) => const CustomRowSkeleton(),
                separatorBuilder: (context, index) => const Gap(Insets.small),
                itemCount: 11,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
