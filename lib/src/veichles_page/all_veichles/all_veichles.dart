import 'package:nafarat/data/fake_data/profile_fake.dart';
import 'package:flutter/material.dart';

import '../../../common_lib.dart';
import '../../../components/cusotm_row_skeleton.dart';
import '../../../components/custom_app_bar.dart';
import '../../../components/custom_text_form_field.dart';
import '../components/viechle_info_row.dart';

class AllVeichlesPage extends ConsumerStatefulWidget {
  const AllVeichlesPage({super.key});

  @override
  ConsumerState<AllVeichlesPage> createState() => _AllVeichlesPageState();
}

class _AllVeichlesPageState extends ConsumerState<AllVeichlesPage> {
  final TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final cars = ref.watch(profilesProvider(carName: searchController.text.trim()));
    return Scaffold(
      appBar: CustomAppBar(
        title: 'جميع المركبات',
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(Insets.medium),
        child: Column(
          children: [
            CustomAppTextFormField(
              onChanged: (value) {
                setState(() {});
              },
              controller: searchController,
              labelText: 'أبحث عن أسم  سيارة',
              prefixIcon: Assets.assetsIconsMagnifyingGlass,
              validator: null,
            ),
            cars.when(
              data: (data) => data.isEmpty
                  ? Center(
                      child: Container(
                      padding: EdgeInsets.all(Insets.medium),
                      decoration: BoxDecoration(
                          color: context.theme.colorScheme.surface,
                          borderRadius: BorderRadius.circular(Insets.medium)),
                      child: Text('لا توجد سيارات متوفرة'),
                    ))
                  : ListView.separated(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) => VehiclesInfoRow(
                        index: index,
                        id: index.toString(),
                        carType: data[index].carType,
                        carPlateNumber: (index + 1 * 2453).toString(),
                        carLetter: String.fromCharCode(0x0621 + index),
                        carState: data[index].carState,
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
