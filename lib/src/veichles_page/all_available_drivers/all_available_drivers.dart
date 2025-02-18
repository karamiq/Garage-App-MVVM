import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:app/components/cusotm_row_skeleton.dart';
import 'package:app/data/models/garage_model.dart';
import 'package:app/data/models/governorate_model.dart';
import '../../../common_lib.dart';
import '../../../components/custom_app_bar.dart';
import '../../../components/custom_paginated_api_item_select.dart';
import '../../../data/fake_data/drivers_fake.dart';
import '../../../data/services/clients/auth_client.dart';
import '../components/holder_info_row.dart';

class AllAvailableDriversPage extends ConsumerStatefulWidget {
  const AllAvailableDriversPage({super.key});

  @override
  ConsumerState<AllAvailableDriversPage> createState() => _AllAvailableDriversPageState();
}

class _AllAvailableDriversPageState extends ConsumerState<AllAvailableDriversPage> {
  final garageController = TextEditingController();
  final stateController = TextEditingController();

  @override
  void dispose() {
    garageController.dispose();
    stateController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Watch the provider with the current state and garage values from the controllers
    final drivers = ref.watch(fakeIraqiInfoProvider(
      region: stateController.text,
      garage: garageController.text,
    ));

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
                  child: CustomPaginatedApiItemSelect<GovernorateModel>(
                    labelText: 'المحافظة',
                    controller: stateController,
                    function: (String search, int page) =>
                        ref.read(authClientProvider).getGovernorates(
                              name: search,
                              pageNumber: page,
                            ),
                    validator: null,
                    onChanged: (value) {
                      // Update the stateController text and trigger a refetch
                      setState(() {
                        ref.invalidate(fakeIraqiInfoProvider(
                            garage: garageController.text, region: value.name));
                      });
                    },
                  ),
                ),
                const Gap(Insets.small),
                Expanded(
                  child: CustomPaginatedApiItemSelect<Garage>(
                    labelText: 'الكراج',
                    controller: garageController,
                    function: (String search, int page) =>
                        ref.read(authClientProvider).getGarages(
                              name: search,
                              pageNumber: page,
                            ),
                    validator: null,
                    onChanged: (value) {
                      setState(
                        () => ref.invalidate(fakeIraqiInfoProvider(
                            garage: value.name, region: stateController.text)),
                      );
                    },
                  ),
                ),
              ],
            ),
            ElevatedButton(
                onPressed: () {
                  // Clear the search fields and trigger a refetch
                  stateController.clear();
                  garageController.clear();
                  ref.invalidate(fakeIraqiInfoProvider);
                },
                child: Text('تصفيت البحث')),
            const Gap(Insets.large),
            drivers.when(
              data: (data) => data.isEmpty
                  ? Center(
                      child: Container(
                      padding: EdgeInsets.all(Insets.medium),
                      decoration: BoxDecoration(
                          color: context.theme.colorScheme.surface,
                          borderRadius: BorderRadius.circular(Insets.medium)),
                      child: Text('لا يوجد حائزين متوفرين'),
                    ))
                  : ListView.separated(
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
