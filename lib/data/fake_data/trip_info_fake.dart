import 'package:nafarat/common_lib.dart';
import 'package:nafarat/data/models/trip_info_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'trip_info_fake.g.dart';

@riverpod
List<TripInfo> tripInfo(Ref ref) {
  final garages = [
    "كراج المنصور",
    "كراج الكرخ",
    "كراج الرصافة",
    "كراج الكاظمية",
    "كراج البصرة",
    "كراج النجف",
    "كراج كربلاء",
    "كراج بغداد",
    "كراج الموصل",
    "كراج أربيل",
    "كراج السليمانية",
    "كراج الناصرية",
    "كراج الديوانية",
    "كراج الحلة",
    "كراج العمارة",
  ];

  final List<Deduction> deductionTypes = [
    Deduction(name: 'ضريبة الطريق', amount: 5000),
    Deduction(name: 'ضريبة الوقود', amount: 3000),
    Deduction(name: 'ضريبة الخدمة', amount: 2000),
    Deduction(name: 'ضريبة الصيانة', amount: 4000),
    Deduction(name: 'ضريبة التأمين', amount: 1000),
  ];

  return List.generate(35, (index) {
    final fromGarage = garages[index % garages.length];
    final toGarage = garages[(index + 1) % garages.length];

    return TripInfo(
      date: DateTime(2023, 10, index + 1),
      tripNumber: 1000 + index,
      fromGarage: fromGarage,
      toGarage: toGarage,
      departureTime:
          DateTime(2023, 10, index + 1, 8 + (index % 5)), // Varying departure times
      arrivalTime:
          DateTime(2023, 10, index + 1, 10 + (index % 5)), // Varying arrival times
      duration: "${1 + (index % 2)} ساعة و ${30 + (index % 30)} دقيقة",
      deductions: [
        deductionTypes[index % deductionTypes.length],
        deductionTypes[(index + 1) % deductionTypes.length],
      ],
      totalPrice: 20000 + (index * 5000),
    );
  });
}
