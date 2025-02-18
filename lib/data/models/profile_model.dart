import 'package:app/data/models/_models.dart';
import 'package:app/data/models/money_transaction.dart';
import 'package:app/data/models/trip_info_model.dart';

part 'profile_model.freezed.dart';
part 'profile_model.g.dart';

@freezed
class HomePageInfo with _$HomePageInfo {
  @JsonSerializable()
  const factory HomePageInfo({
    required String imageUrl,
    required String carPlateInfo,
    required String carType,
    required String expireDate,
    required String cardNumber,
    required String qrData,
    required int cardMoney,
    required String feesCardTitle,
    required String feesCardNumber,
    required String feesCardNumText,
    required String tripsCardTitle,
    required String tripsCardNumber,
    required String tripsCardNumText,
    required String carLetter,
    required List<MoneyTransaction> moneyTransfersList,
    required List<TripInfo> latestTripsList,
  }) = _HomePageInfo;

  factory HomePageInfo.fromJson(Map<String, dynamic> json) =>
      _$HomePageInfoFromJson(json);
}
