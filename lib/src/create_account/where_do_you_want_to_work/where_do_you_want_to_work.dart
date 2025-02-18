import 'package:app/data/models/garage_model.dart';
import 'package:app/data/models/governorate_model.dart';
import 'package:flutter/material.dart';

import '../../../common_lib.dart';
import '../../../components/custom_back_botton.dart';
import '../../../components/custom_paginated_api_item_select.dart';
import '../../../data/providers/create_owner_controller.dart';
import '../../../data/services/clients/auth_client.dart';

class WhereDoYouWantToWorkPage extends ConsumerWidget {
  const WhereDoYouWantToWorkPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(createOwnerControllerProvider.notifier).state;
    final formKey = GlobalKey<FormState>();
    // final data =
    //     ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    // bool isOwner = data['isOwner'];
    void checkValidation() {
      if (formKey.currentState!.validate()) {
        context.pushNamed(Routes.createQrCodePage, extra: {'isOwner': false});
      }
    }

    return Scaffold(
      appBar: AppBar(
        leadingWidth: 100,
        foregroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        leading: CustomBackButton(),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: Insets.medium, vertical: Insets.large),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              Text(
                'أين تريد العمل',
                style: TextStyle(
                  fontSize: CustomFontsTheme.veryBigSize,
                ),
              ),
              SizedBox(height: Insets.exLarge * 1.5),
              CustomPaginatedApiItemSelect<GovernorateModel>(
                  labelText: 'المحافظة',
                  controller: controller.holderStateWork,
                  function: (String search, int page) =>
                      ref.read(authClientProvider).getGovernorates(
                            name: search,
                            pageNumber: page,
                          ),
                  validator: context.validator.build()),
              SizedBox(height: Insets.small),
              CustomPaginatedApiItemSelect<Garage>(
                  labelText: 'الكراج',
                  controller: controller.holderGarageWork,
                  function: (String search, int page) =>
                      ref.read(authClientProvider).getGarages(
                            name: search,
                            pageNumber: page,
                          ),
                  validator: context.validator.build()),
              Spacer(),
              ElevatedButton(
                onPressed: checkValidation,
                child: Text('أرسل طلب'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
