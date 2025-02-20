import 'package:app/data/fake_data/profile_fake.dart';
import 'package:flutter/material.dart';
import '../../../../common_lib.dart';
import '../../../../components/mini_card.dart';
import '../../../components/custom_app_bar.dart';
import '../../home_page/components/container_stack_decoration.dart';
import '../../home_page/components/home_page_bottom_falf.dart';
import '../../home_page/components/user_card.dart';
import 'components/selected_car_info_head.dart';
import 'components/selected_car_info_shimmer.dart';

class SelectedCarInfoPage extends ConsumerWidget {
  const SelectedCarInfoPage({
    super.key,
    required this.index,
  });
  final int index;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
        appBar: CustomAppBar(),
        body: Padding(
            padding: EdgeInsets.symmetric(horizontal: Insets.small),
            child: ref.watch(profilesProvider()).when(
                data: (data) => Column(
                      children: [
                        SelectedCarInfoHead(
                            userName: 'كرم رشيد', phoneNumber: '07712345678'),
                        Gap(Insets.medium),
                        UserCard(
                            cardAvailable: true,
                            carPlateInfo: data[index].carPlateInfo,
                            carType: data[index].carType,
                            expireDate: data[index].expireDate,
                            cardNumber: data[index].cardNumber,
                            qrData: 'https://github.com/karamiq',
                            cardMoney: 125000),
                        Gap(Insets.small),
                        Row(
                          children: [
                            Expanded(
                              child: MiniCard(
                                  cardTitle: 'الغرامات المالية',
                                  cardNumber: '20',
                                  cardNumText: 'غرامة مالية',
                                  decoration: SequaredPositionedContainers(),
                                  onIconPressed: () =>
                                      context.pushNamed(Routes.feesOnCarPage)),
                            ),
                            Gap(Insets.small),
                            Expanded(
                              child: MiniCard(
                                  cardTitle: 'عدد الرحلات',
                                  cardNumber: '50',
                                  cardNumText: 'رحلة',
                                  decoration: CirculerPositionedContainers(),
                                  onIconPressed: () =>
                                      context.pushNamed(Routes.tripsPage)),
                            ),
                          ],
                        ),
                        Gap(Insets.small),
                        HomePageBottomHalf(
                          moneyTransfersList: data[3].moneyTransfersList,
                          latestTripsList: data[4].latestTripsList,
                        )
                      ],
                    ),
                error: (e, r) => null,
                loading: () => SelectedCarInfoShimmer())));
  }
}
