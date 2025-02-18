import 'package:app/data/fake_data/money_transaction_fake.dart';
import 'package:flutter/material.dart';
import '../../../../common_lib.dart';
import '../../../../components/mini_card.dart';
import '../../../home_page/components/container_stack_decoration.dart';
import '../../../home_page/components/home_page_bottom_falf.dart';
import '../../../home_page/components/user_card.dart';
import 'selected_car_info_head.dart';

class SelectedCarInfoContent extends ConsumerWidget {
  const SelectedCarInfoContent({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        SelectedCarInfoHead(userName: 'محمد علي', phoneNumber: '07728833423'),
        Gap(Insets.medium),
        UserCard(
            carPlateInfo: '24214 أ / بغداد',
            carType: 'دوج جارجر',
            expireDate: ' 10/12/2025',
            cardNumber: '10023',
            qrData: 'https://github.com/karamiq/Garage-App',
            cardMoney: 125000),
        Gap(Insets.small),
        Row(
          children: [
            MiniCard(
                cardTitle: 'الغرامات المالية',
                cardNumber: '20',
                cardNumText: 'غرامة مالية',
                decoration: SequaredPositionedContainers(),
                onIconPressed: () => context.pushNamed(Routes.feesOnCarPage)),
            Gap(Insets.small),
            MiniCard(
                cardTitle: 'عدد الرحلات',
                cardNumber: '50',
                cardNumText: 'رحلة',
                decoration: CirculerPositionedContainers(),
                onIconPressed: () => context.pushNamed(Routes.tripsPage)),
          ],
        ),
        Gap(Insets.small),
        HomePageBottomHalf(
          moneyTransfersList: ref
              .watch(moneyTransactionsProvider)
              .when(data: (data) => data, error: (e, r) => [], loading: () => []),
          latestTripsList: [],
        )
      ],
    );
  }
}
