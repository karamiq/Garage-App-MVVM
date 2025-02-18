import 'package:app/data/models/plate_types.dart';
import 'package:app/data/models/vehicle_models.dart';
import 'package:app/utils/app_validator.dart';
import 'package:flutter/material.dart';
import '../../../common_lib.dart';
import '../../../components/custom_app_bar.dart';
import '../../../components/custom_auth_steps_tracker.dart';
import '../../../components/custom_paginated_api_item_select.dart';
import '../../../components/custom_text_form_field.dart';
import '../../../components/custom_year_date_picker.dart';
import '../../../data/models/governorate_model.dart';
import '../../../data/models/plate_characters.dart';
import '../../../data/models/vehicle_type.dart';
import '../../../data/providers/car_info_status.dart';
import '../../../data/providers/create_owner_controller.dart';
import '../../../data/services/clients/auth_client.dart';
import '../enter_holder_or_owner_info_page/components/image_input.dart';

class OwnerCarInfoPage extends ConsumerWidget {
  OwnerCarInfoPage({
    super.key,
  });

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isLetterEnabled = ref
        .watch(createOwnerControllerProvider.notifier)
        .state
        .carGovernorate
        .text
        .isNotEmpty;
    final controller = ref.watch(createOwnerControllerProvider.notifier).state;
    final redirectStatus = ref.watch(carInfoPageStatusProvider.notifier).state;
    void checkValidation() {
      if (!_formKey.currentState!.validate()) return;
      if (controller.carLicensePicture == null) return;
      if (controller.carPicture == null) return;

      switch (redirectStatus) {
        case CarInfoStatus.owner:
          context.pushNamed(Routes.enterPersonalPicturePage);
          break;
        case CarInfoStatus.rider:
          context.pushNamed(Routes.qrCodeGeneratorPage, extra: {
            'text': 'اذهب الى الهيأة لأضافة السيارة',
            'qrData': "https://github.com/karamiq/Garage-App",
            'newCar': true,
          });
          break;
        case CarInfoStatus.addingNewCar:
          context.pop();
          break;
      }
    }

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: CustomAppBar(),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: Insets.medium, vertical: Insets.large),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Text('معلومات السيارة',
                  style: TextStyle(fontSize: CustomFontsTheme.veryBigSize)),
              SizedBox(height: Insets.small),
              if (redirectStatus != CarInfoStatus.addingNewCar)
                CustomAuthStepsTracker(
                    itemCount: redirectStatus == CarInfoStatus.owner ? 4 : 3,
                    highlightIndex: 1),
              SizedBox(height: Insets.medium * 2),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Expanded(
                    child: CustomAppTextFormField(
                      keyboardType: TextInputType.number,
                      validator: AppValidationBuilder(context: context, optional: false)
                          .numbersOnly()
                          .build(),
                      controller: controller.carPlateNumber,
                      labelText: 'رقم اللوحة',
                      prefixIcon: Assets.assetsIconsCarNumber,
                    ),
                  ),
                  SizedBox(width: Insets.small),
                  Expanded(
                    child: CustomPaginatedApiItemSelect<PlateCharacters>(
                      enabled: isLetterEnabled,
                      onChanged: (selectedChar) async {
                        controller.plateCharacterId.text = selectedChar.id;
                      },
                      function: (String search, int page) {
                        return ref.read(authClientProvider).getPlateCharecters(
                              name: search,
                              pageNumber: page,
                              governorateName: controller.carGovernorate.text,
                            );
                      },
                      labelText: 'حرف اللوحة',
                      controller: controller.carPlateLetter,
                      validator: context.validator.build(),
                    ),
                  ),
                ],
              ),
              SizedBox(height: Insets.small),
              CustomPaginatedApiItemSelect<GovernorateModel>(
                function: (String search, int page) =>
                    ref.read(authClientProvider).getGovernorates(
                          name: search,
                          pageNumber: page,
                        ),
                labelText: 'المحافظة',
                controller: controller.carGovernorate,
                validator: context.validator.build(),
                onChanged: (selectedState) {
                  controller.carGovernorateId.text = selectedState.id;
                  controller.carPlateLetter.text = '';
                  //   setState(() {});
                },
              ),
              SizedBox(height: Insets.small),
              CustomPaginatedApiItemSelect<PlateTypes>(
                function: (String search, int page) =>
                    ref.read(authClientProvider).getPlateType(
                          name: search,
                          pageNumber: page,
                        ),
                labelText: 'نوع اللوحة',
                controller: controller.carPlateType,
                validator: context.validator.build(),
                onChanged: (p0) => controller.plateTypeId.text = p0.id,
              ),
              SizedBox(height: Insets.small),
              CustomAppTextFormField(
                keyboardType: TextInputType.number,
                validator: AppValidationBuilder(context: context, optional: false)
                    .numbersOnly()
                    .build(),
                controller: controller.carShasyNumber,
                labelText: 'رقم الشاصي',
                prefixIcon: Assets.assetsIconsCarNumber,
              ),
              SizedBox(height: Insets.small),
              CustomPaginatedApiItemSelect<VehicleType>(
                function: (String search, int page) =>
                    ref.read(authClientProvider).getVeichleType(
                          name: search,
                          pageNumber: page,
                        ),
                labelText: 'نوع المركبة',
                controller: controller.carType,
                validator: context.validator.build(),
                prefixIcon: Assets.assetsIconsCar,
                onChanged: (p0) => controller.vehicleTypeId.text = p0.id,
              ),
              SizedBox(height: Insets.small),
              CustomPaginatedApiItemSelect<VehicleModel>(
                function: (String search, int page) =>
                    ref.read(authClientProvider).getVeichleModel(
                          name: search,
                          pageNumber: page,
                        ),
                validator: context.validator.build(),
                controller: controller.carModel,
                labelText: 'موديل المركبة',
                prefixIcon: Assets.assetsIconsDocument,
                onChanged: (p0) => controller.vehicleModelId.text = p0.id,
              ),
              SizedBox(height: Insets.small),
              CustomYearDatePicker(
                validator: context.validator.build(),
                labelText: 'سنة الصنع',
                controller: controller.carYear,
                prefixIcon: Assets.assetsIconsCalendar,
              ),
              SizedBox(height: Insets.small),
              CustomAppTextFormField(
                validator: context.validator.build(),
                controller: controller.carColor,
                labelText: 'اللون',
                prefixIcon: Assets.assetsIconsPalette,
              ),
              SizedBox(height: Insets.small),
              CustomAppTextFormField(
                keyboardType: TextInputType.number,
                validator: AppValidationBuilder(context: context, optional: false)
                    .numbersOnly()
                    .build(),
                controller: controller.carNumberOfSeats,
                labelText: 'عدد المقاعد',
                prefixIcon: Assets.assetsIconsAirlineSeatReclineExtra,
              ),
              SizedBox(height: Insets.small),
              ImageInput(
                text: 'قم برفع صورة لسنوية السيارة',
                onPickImage: (image) => controller.carLicensePicture = image,
              ),
              SizedBox(height: Insets.medium),
              ImageInput(
                text: 'قم برفع صورة لسيارتك',
                onPickImage: (image) => controller.carPicture = image,
              ),
              SizedBox(height: Insets.large),
              ElevatedButton(
                onPressed: checkValidation,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('التالي'),
                    SizedBox(width: Insets.small),
                    Icon(Icons.chevron_right_outlined),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
