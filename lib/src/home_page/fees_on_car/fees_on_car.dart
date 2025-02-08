import 'package:app/data/providers/authentication_provider.dart';
import 'package:flutter/material.dart';

import '../../../common_lib.dart';
import '../../../components/custom_app_bar.dart';
import '../../../components/custom_floating_action_button.dart';
import '../../../data/models/vehicle_violations.dart';
import 'components/fees_on_car_content.dart';
import 'components/fees_on_car_skeleton.dart'; // Assuming you have FeeCard imported

class FeesOnCarPage extends ConsumerStatefulWidget {
  const FeesOnCarPage({super.key});

  @override
  ConsumerState<FeesOnCarPage> createState() => _FeesOnCarPageState();
}

class _FeesOnCarPageState extends ConsumerState<FeesOnCarPage> {
  late Future<VehicleViolations?> _dataFuture;

  @override
  void initState() {
    super.initState();
    _dataFuture = fetchData();
  }

  Future<VehicleViolations?> fetchData() async {
    try {
      // return await VehicleViolationService.vehicleViolations(
      //     controller.currentuUser!.vehicle!.first.id);
    } catch (e) {
      // Handle error as needed
      print('Error fetching data: $e');
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    final controller = ref.watch(authenticationProvider);
    var icon = Assets.assetsIconsCard;
    var text = 'دفع الغرامات المتراكمة';
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Padding(
        padding: EdgeInsets.symmetric(vertical: Insets.medium),
        child: CustomFloatingActionButton(icon: icon, text: text),
      ),
      appBar: CustomAppBar(),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: Insets.medium, vertical: Insets.medium),
        child: FutureBuilder<VehicleViolations?>(
          future: _dataFuture,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return FeesOnCarSkeleton();
            } else {
              if (snapshot.hasError) {
                return Center(
                  child: Column(
                    children: [
                      Gap(MediaQuery.of(context).size.height / 3.5),
                      Text('حدث خط: ${snapshot.error}'),
                    ],
                  ),
                );
              } else if (!snapshot.hasData || snapshot.data == null) {
                return Center(
                  child: Column(
                    children: [
                      Gap(MediaQuery.of(context).size.height / 3.5),
                      Text(
                        'لا يوجد بياتات',
                        style: TextStyle(fontSize: CustomFontsTheme.bigSize),
                      ),
                    ],
                  ),
                );
              } else {
                final vehicleDebtStatementDetails = snapshot.data!;
                return Column(
                  children: [
                    FeesOnCarContent(
                      accumulatedPrice: vehicleDebtStatementDetails.accumulatedPrice,
                      numberOfReceipt: vehicleDebtStatementDetails.numberOfViolation,
                      feesList: vehicleDebtStatementDetails.vehicleViolations,
                    )
                  ],
                );
              }
            }
          },
        ),
      ),
    );
  }
}
