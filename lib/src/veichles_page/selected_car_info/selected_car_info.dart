import 'package:flutter/material.dart';
import '../../../common_lib.dart';
import '../../../components/custom_app_bar.dart';
import 'components/selected_car_info_shimmer.dart';

class SelectedCarInfoPage extends StatelessWidget {
  const SelectedCarInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: Insets.medium),
          child: Column(
            children: [
              SelectedCarInfoShimmer()
              //SelectedCarInfoContent(),
            ],
          ),
        ));
  }
}
