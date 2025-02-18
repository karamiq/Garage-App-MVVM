import 'package:app/components/custom_list_tile_skeleton.dart';
import 'package:app/data/fake_data/financial_transaction_fake.dart';
import 'package:flutter/material.dart';

import '../../../common_lib.dart';
import '../../../components/custom_app_bar.dart';

class FinancialTranscationsPage extends ConsumerWidget {
  const FinancialTranscationsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final financialTranscationsAsync = ref.watch(financialTransactionsProvider);
    return Scaffold(
        appBar: CustomAppBar(
          title: 'العمليات المالية',
        ),
        body: SingleChildScrollView(
          child: financialTranscationsAsync.when(
              data: (data) {
                if (data.isEmpty) {
                  return Center(
                    child: Text(
                      'الصفحة فارغة',
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.primary,
                          fontSize: CustomFontsTheme.veryBigSize),
                    ),
                  );
                }
                return ListView.separated(
                  padding: EdgeInsets.all(Insets.medium),
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: data.length,
                  itemBuilder: (context, index) => data[index],
                  separatorBuilder: (context, index) => Gap(Insets.small),
                );
              },
              error: (e, r) => null,
              loading: () => Column(
                  children: List.generate(
                      11,
                      (index) => Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: Insets.small, horizontal: Insets.medium),
                            child: CustomListTileSkeleton(),
                          )))),
        ));
  }
}
