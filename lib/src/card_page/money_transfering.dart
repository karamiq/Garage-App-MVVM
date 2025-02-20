import 'package:nafarat/data/fake_data/money_transaction_fake.dart';
import 'package:flutter/material.dart';
import '../../common_lib.dart';
import '../../components/custom_app_bar.dart';
import '../../components/custom_list_tile.dart';
import '../../components/custom_list_tile_skeleton.dart';

class SeeAllMoneyTransferingPage extends ConsumerWidget {
  const SeeAllMoneyTransferingPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: CustomAppBar(title: 'التحويلات المالية'),
      body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: Insets.medium),
          child: ref.watch(moneyTransactionsProvider).when(
                data: (data) => ListView.separated(
                  padding: EdgeInsets.symmetric(vertical: Insets.medium),
                  itemCount: 16,
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) => CustomListTile(
                      icon: Assets.assetsIconsCard,
                      title: data[index].type,
                      subtitle: data[index].date.format(),
                      trailing2: '${data[index].amount} د. ع.'),
                  separatorBuilder: (context, index) => Gap(Insets.small),
                ),
                error: (e, r) => null,
                loading: () => ListView.separated(
                  padding: EdgeInsets.symmetric(vertical: Insets.medium),
                  itemCount: 16,
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) => CustomListTileSkeleton(),
                  separatorBuilder: (context, index) => Gap(Insets.small),
                ),
              )),
    );
  }
}
