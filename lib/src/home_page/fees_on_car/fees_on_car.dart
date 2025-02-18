import 'package:flutter/material.dart';

import '../../../common_lib.dart';
import '../../../components/custom_app_bar.dart';
import '../../../components/custom_floating_action_button.dart';
import '../../../data/fake_data/vehicle_violation_fake.dart';
import 'components/fees_on_car_content.dart';
import 'components/fees_on_car_skeleton.dart';

class FeesOnCarPage extends ConsumerWidget {
  const FeesOnCarPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var icon = Assets.assetsIconsCard;
    var text = 'دفع الغرامات المتراكمة';

    final vehicleViolationsAsync = ref.watch(vehicleViolationsProvider);

    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Padding(
        padding: EdgeInsets.symmetric(vertical: Insets.medium),
        child: CustomFloatingActionButton(icon: icon, text: text),
      ),
      appBar: CustomAppBar(),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: Insets.medium, vertical: Insets.medium),
        child: vehicleViolationsAsync.when(
          loading: () => FeesOnCarSkeleton(),
          error: (error, stackTrace) => Center(
            child: Column(
              children: [
                Gap(MediaQuery.of(context).size.height / 3.5),
                Text('حدث خطأ: $error'),
              ],
            ),
          ),
          data: (vehicleDebtStatementDetails) {
            return FeesOnCarContent(
              feesList: vehicleDebtStatementDetails[0].vehicleViolations,
              numberOfReceipt: vehicleDebtStatementDetails[0].accumulatedPrice,
              accumulatedPrice: 1000,
            );
          },
        ),
      ),
    );
  }
}
