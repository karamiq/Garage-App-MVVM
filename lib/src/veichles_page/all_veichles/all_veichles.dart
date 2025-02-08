import 'package:flutter/material.dart';

import '../../../common_lib.dart';
import '../../../components/custom_app_bar.dart';
import '../../../components/custom_text_form_field.dart';
import '../components/viechle_info_row.dart';

class AllVeichlesPage extends StatefulWidget {
  const AllVeichlesPage({super.key});

  @override
  State<AllVeichlesPage> createState() => _AllVeichlesPageState();
}

class _AllVeichlesPageState extends State<AllVeichlesPage> {
  final SearchController = TextEditingController();

  List carsList = [];
  List filteredCars = [];
  final TextEditingController textFiledController = TextEditingController();
  String searchQuery = '';

  void filterCars(String query) {
    print('Cars filtering: $query');
    if (mounted) {
      setState(() {
        searchQuery = query;
        filteredCars = carsList
            .where((car) => car.name.toLowerCase().contains(query.toLowerCase()))
            .toList();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'جميع المركبات',
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(Insets.medium),
        child: Column(
          children: [
            CustomAppTextFormField(
              onChanged: filterCars,
              controller: SearchController,
              labelText: 'أبحث عن أسم  سيارة',
              prefixIcon: Assets.assetsIconsMagnifyingGlass,
              validator: null,
            ),
            ListView.separated(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                //The filtered list must be applied here when linking with api
                itemBuilder: (context, index) => VehiclesInfoRow(
                    id: index.toString(),
                    carType: 'كورلا',
                    carPlateNumber: '93745',
                    carLetter: 'أ ',
                    carState: 'بغداد'),
                separatorBuilder: (context, index) => Gap(Insets.small),
                itemCount: 11)
          ],
        ),
      ),
    );
  }
}
