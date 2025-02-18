import 'package:app/data/services/clients/auth_client.dart';
import 'package:app/utils/app_validator.dart';
import 'package:flutter/material.dart';

import '../../../../components/custom_date_picker.dart';
import '../../../../components/custom_text_form_field.dart';
import '../../../common_lib.dart';
import '../../../components/custom_auth_steps_tracker.dart';
import '../../../components/custom_back_botton.dart';
import '../../../components/custom_paginated_api_item_select.dart';
import '../../../data/providers/car_info_status.dart';
import '../../../data/providers/create_owner_controller.dart';
import 'components/image_input.dart';

class EnterHolderOrOwnerInfoPage extends ConsumerWidget {
  //TextEditingController DatePicker = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  EnterHolderOrOwnerInfoPage({
    super.key,
  });
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var controller = ref.watch(createOwnerControllerProvider.notifier).state;
    final isOwner =
        ref.watch(carInfoPageStatusProvider.notifier).state == CarInfoStatus.owner;

    void nextPage() async {
      if (_formKey.currentState!.validate() && controller.drivingLicensePicture != null) {
        if (isOwner == CarInfoStatus.owner) {
          context.pushNamed(Routes.ownerCarInfoPage);
        } else {
          context.pushNamed(
            Routes.enterPersonalPicturePage,
          );
        }
      }
    }

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leadingWidth: 100,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        leading: CustomBackButton(),
      ),
      body: SingleChildScrollView(
          padding:
              EdgeInsets.symmetric(horizontal: Insets.medium, vertical: Insets.large),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Text(
                  isOwner ? 'أنشاء حساب مالك' : 'أنشاء حساب حائز',
                  style: TextStyle(
                    fontSize: CustomFontsTheme.veryBigSize,
                  ),
                ),
                CustomAuthStepsTracker(itemCount: isOwner ? 4 : 3, highlightIndex: 0),
                Gap(Insets.medium * 2),
                CustomAppTextFormField(
                    validator: context.validator.build(),
                    controller: controller.fullName,
                    labelText: 'الاسم الثلاثي',
                    prefixIcon: Assets.assetsIconsUser),
                Gap(Insets.small),
                CustomAppTextFormField(
                    validator: context.validator.build(),
                    controller: controller.motherName,
                    labelText: 'أسم الأم',
                    prefixIcon: Assets.assetsIconsUser),
                Gap(Insets.small),
                CustomPaginatedApiItemSelect(
                  labelText: 'المحافظة',
                  controller: controller.governorate,
                  validator: context.validator.build(),
                  function: (String search, int page) async =>
                      await ref.read(authClientProvider).getGovernorates(
                            name: search,
                            pageNumber: page,
                          ),
                )

                //  itemListFuture: Future.wait([])
                ,
                Gap(Insets.small),
                CustomAppTextFormField(
                    validator: context.validator.build(),
                    controller: controller.area,
                    labelText: 'المنطقة',
                    prefixIcon: Assets.assetsIconsMapPin),
                Gap(Insets.small),
                CustomAppTextFormField(
                    validator: AppValidationBuilder(context: context, optional: false)
                        .numbersOnly()
                        .build(),
                    keyboardType: TextInputType.number,
                    controller: controller.idNumber,
                    labelText: 'رقم الهوية',
                    prefixIcon: Assets.assetsIconsBuilding),
                Gap(Insets.small),
                CustomAppTextFormField(
                    validator: context.validator.build(),
                    controller: controller.issuer,
                    labelText: 'جهة الأصدار',
                    prefixIcon: Assets.assetsIconsCalendar),
                Gap(Insets.small),
                CustomDatePicker(
                  labelText: 'تاريخ الاصدار',
                  controller: controller.issuerDate,
                  prefixIcon: Assets.assetsIconsCalendar,
                  validator: context.validator.build(),
                ),
                CustomAppTextFormField(
                    validator: AppValidationBuilder(context: context, optional: false)
                        .numbersOnly()
                        .build(),
                    keyboardType: TextInputType.number,
                    controller: controller.drivingLicenseNumber,
                    labelText: 'رقم أجازة السوق',
                    prefixIcon: Assets.assetsIconsCard),
                Gap(Insets.small),
                ImageInput(
                  text: 'قم برفع صورة لأجازة السوق',
                  onPickImage: (image) => controller.drivingLicensePicture = image,
                ),
                Gap(Insets.medium),
                ElevatedButton(
                    onPressed: nextPage,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('التالي'),
                        Gap(Insets.small),
                        Icon(Icons.chevron_right_outlined),
                      ],
                    )),
              ],
            ),
          )),
    );
  }
}
