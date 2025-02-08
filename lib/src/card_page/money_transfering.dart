import 'package:flutter/material.dart';
import '../../common_lib.dart';
import '../../components/custom_app_bar.dart';
import '../../components/custom_list_tile.dart';

class SeeAllMoneyTransferingPage extends StatelessWidget {
  const SeeAllMoneyTransferingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'التحويلات المالية'),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: Insets.medium),
        child: ListView.separated(
          padding: EdgeInsets.symmetric(vertical: Insets.medium),
          itemCount: 16,
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemBuilder: (context, index) => CustomListTile(
              icon: Assets.assetsIconsCard,
              title: 'تم شحن البطاقة',
              subtitle: '2023/2/24',
              trailing2: '25,000 د. ع.'),
          separatorBuilder: (context, index) => Gap(Insets.small),
        ),
      ),
    );
  }
}
