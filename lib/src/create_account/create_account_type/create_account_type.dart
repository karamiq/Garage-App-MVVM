import 'package:flutter/material.dart';
import '../../../common_lib.dart';
import '../../../components/custom_back_botton.dart';
import '../../../data/providers/car_info_status.dart';
import 'components/account_type_card.dart';

class CreateAccountTypePage extends HookConsumerWidget {
  const CreateAccountTypePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final CarInfoStatus isOnwerType = ref.watch(carInfoPageStatusProvider);

    return Scaffold(
        appBar: AppBar(
          leadingWidth: 100,
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          leading: CustomBackButton(),
        ),
        body: Padding(
            padding:
                EdgeInsets.symmetric(horizontal: Insets.medium, vertical: Insets.large),
            child: Column(
              children: [
                Text(
                  'أختر نوع الحساب',
                  style: TextStyle(
                    fontSize: CustomFontsTheme.veryBigSize,
                  ),
                ),
                Gap(Insets.exLarge),
                AccountTypeCard(
                  value: CarInfoStatus.owner,
                  isOwnerType: isOnwerType,
                  title: 'مالك',
                  subTitle:
                      'لديك سيارة و ترغب ان تكون سائق او لديك سيارة و ترغب في توظيف سائق لها',
                  onChange: (value) =>
                      ref.read(carInfoPageStatusProvider.notifier).state = value,
                ),
                AccountTypeCard(
                  value: CarInfoStatus.rider,
                  isOwnerType: isOnwerType,
                  title: 'حائز',
                  subTitle: 'ليس لديك سيارة و لكنك ترغب ان تكون سائق',
                  onChange: (value) =>
                      ref.read(carInfoPageStatusProvider.notifier).state = value,
                ),
                Spacer(),
                ElevatedButton(
                    onPressed: () => context.pushNamed(
                          Routes.enterHolderOrOwnerInfoPage,
                        ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('التالي'),
                        Gap(Insets.small),
                        Icon(Icons.chevron_right_outlined),
                      ],
                    )),
              ],
            )));
  }
}
