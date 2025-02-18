import 'package:app/common_lib.dart';
import 'package:app/data/models/profile_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'constatnt_fake.dart';
import 'money_transaction_fake.dart';
import 'trip_info_fake.dart';
part 'profile_fake.g.dart';

@riverpod
Future<List<HomePageInfo>> profiles(Ref ref) async {
  print("Fetching profile data...");
  final trips = ref.watch(tripInfoProvider);
  final transactions = ref.watch(moneyTransactionsProvider);
  final carLetters = [
    "ج",
    "ي",
    "ب",
    "د",
    "س",
    "ن",
    "ف",
    "ش",
    "م",
    "ك",
    "ع",
    "ه",
  ];

  final carTypes = [
    "تويوتا",
    "هيونداي",
    "كيا",
    "نيسان",
    "فورد",
    "شفروليه",
    "مرسيدس",
    "بي ام دبليو",
  ];

  final cities = [
    "بغداد",
    "البصرة",
    "الموصل",
    "أربيل",
    "السليمانية",
    "النجف",
    "كربلاء",
    "الناصرية",
    "الديوانية",
    "الحلة",
    "العمارة",
  ];

  // Simulate a delay for async operation
  await Future.delayed(Duration(seconds: delaySeconds));

  print("Profile data fetched successfully!");

  return List.generate(35, (index) {
    return HomePageInfo(
      carLetter: carLetters[index % carLetters.length], // Cycling through letters
      imageUrl:
          "https://avatars.githubusercontent.com/u/171433280?v=4", // Example image URL
      carPlateInfo:
          "${cities[index % cities.length]} ${1000 + index}", // Unique plate info
      carType: carTypes[index % carTypes.length], // Cycling through car types
      expireDate: "2025-12-31", // Static expiration date (can be modified)
      cardNumber: "${index * index * 996873}", // Unique card number
      qrData: "QR_CODE_$index", // Example QR data
      cardMoney: 250000 + (index * 10000), // Increasing balance
      feesCardTitle: "رسوم البطاقة",
      feesCardNumber: "${index % 5}", // Example fees card number
      feesCardNumText: "عدد الرسوم",
      tripsCardTitle: "عدد الرحلات",
      tripsCardNumber: "${trips.length}", // Total trips
      tripsCardNumText: "رحلة",
      moneyTransfersList: transactions.when(
          data: (data) => data,
          error: (error, t) => [],
          loading: () => []), // First 5 transactions
      latestTripsList: trips, // First 5 trips
    );
  });

  // return [
  //   HomePageInfo(
  //     imageUrl:
  //         "https://avatars.githubusercontent.com/u/171433280?v=4", // Example image URL
  //     carPlateInfo: cities[0], // Unique plate info
  //     carType: carTypes[0], // Cycling through car types
  //     expireDate: "2025-12-31", // Static expiration date (can be modified)
  //     cardNumber: "1234-5678-9012-${1000}", // Unique card number
  //     qrData: "QR_CODE_ karam", // Example QR data
  //     cardMoney: 250000, // Increasing balance
  //     feesCardTitle: "رسوم البطاقة",
  //     feesCardNumber: 20.toString(), // Example fees card number
  //     feesCardNumText: "غرامة مالية",
  //     tripsCardTitle: "عدد الرحلات",
  //     tripsCardNumber: "${trips.length}", // Total trips
  //     tripsCardNumText: "رحلة",
  //     moneyTransfersList: transactions.sublist(0, 5), // First 5 transactions
  //     latestTripsList: trips.sublist(0, 5), // First 5 trips
  //   )
  // ];
}
