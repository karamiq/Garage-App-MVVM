import 'package:flutter/material.dart';
import '../../../common_lib.dart';
import '../../../components/custom_list_tile.dart';
import '../../../components/mini_card.dart';
import '../../../components/shimmer_container.dart';
import '../../../components/trip_card.dart';
import '../../../data/models/last_trips.dart';
import 'container_stack_decoration.dart';
import 'home_page_bottom_falf.dart';
import 'home_page_head.dart';
import 'user_card.dart';

class HomePageContent extends StatelessWidget {
  final bool cardAvailable;
  final String imageUrl;
  final String carPlateInfo;
  final String carType;
  final String expireDate;
  final String cardNumber;
  final String qrData;
  final int cardMoney;
  final String feesCardTitle;
  final String feesCardNumber;
  final String feesCardNumText;
  final String tripsCardTitle;
  final String tripsCardNumber;
  final String tripsCardNumText;
  final List<CustomListTile> moneyTransfersList;
  final List<TripHistory> latestTripsList;

  const HomePageContent({
    super.key,
    required this.cardAvailable,
    required this.imageUrl,
    required this.carPlateInfo,
    required this.carType,
    required this.expireDate,
    required this.cardNumber,
    required this.qrData,
    required this.cardMoney,
    required this.feesCardTitle,
    required this.feesCardNumber,
    required this.feesCardNumText,
    required this.tripsCardTitle,
    required this.tripsCardNumber,
    required this.tripsCardNumText,
    required this.moneyTransfersList,
    required this.latestTripsList,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          HomePageHead(imageUrl: imageUrl),
          Gap(Insets.medium),
          _buildUserCard(),
          Gap(Insets.small),
          _buildMiniCardsRow(context),
          Gap(Insets.small),
          HomePageBottomHalf(
            moneyTransfersList: moneyTransfersList,
            latestTripsList: latestTripsList,
          ),
        ],
      ),
    );
  }

  Widget _buildUserCard() {
    return UserCard(
      cardAvailable: cardAvailable,
      carPlateInfo: carPlateInfo,
      carType: carType,
      expireDate: expireDate,
      cardNumber: cardNumber,
      qrData: qrData,
      cardMoney: cardMoney,
    );
  }

  Widget _buildMiniCardsRow(context) {
    return Row(
      children: [
        Expanded(
          child: MiniCard(
            cardTitle: feesCardTitle,
            cardNumber: feesCardNumber,
            cardNumText: feesCardNumText,
            decoration: SequaredPositionedContainers(),
            onIconPressed: () => context.pushedNamed(Routes.feesOnCarPage),
          ),
        ),
        Gap(Insets.small),
        Expanded(
          child: MiniCard(
            cardTitle: tripsCardTitle,
            cardNumber: tripsCardNumber,
            cardNumText: tripsCardNumText,
            decoration: CirculerPositionedContainers(),
            onIconPressed: () => context.pushedNamed(Routes.tripsPage),
          ),
        ),
      ],
    );
  }
}
