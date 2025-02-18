import 'dart:math';

import 'package:app/common_lib.dart';
import 'package:app/data/services/clients/_clients.dart';
import '../models/vehicle_violations.dart';
import 'constatnt_fake.dart';

part 'vehicle_violation_fake.g.dart';

@riverpod
Future<List<VehicleViolations>> vehicleViolations(Ref ref) async {
  final random = Random();
  final images = [
    'https://e0.pxfuel.com/wallpapers/1012/134/desktop-wallpaper-minimalist-and-background-of-minimalist.jpg'
        'https://e0.pxfuel.com/wallpapers/785/775/desktop-wallpaper-vintage-garage-car-garage.jpg',
    'https://e0.pxfuel.com/wallpapers/785/775/desktop-wallpaper-vintage-garage-car-garage.jpg',
    'https://e0.pxfuel.com/wallpapers/911/823/desktop-wallpaper-subaru-cars-impreza-wrx-garage-sti.jpg',
    'https://e0.pxfuel.com/wallpapers/33/625/desktop-wallpaper-subaru-impreza-wrx-sti-subaru-tuning-wrx-impreza-car-sti.jpg',
    'https://e0.pxfuel.com/wallpapers/988/894/desktop-wallpaper-classic-porsche-in-garage-widescreen-3440x1440-car.jpg',
    'https://e1.pxfuel.com/desktop-wallpaper/356/799/desktop-wallpaper-julian-brown-on-garages-workshops-bike-garage.jpg',
    'https://e0.pxfuel.com/wallpapers/346/301/desktop-wallpaper-likes-7-comments-sergio-on-instagram-name-those-cars-luxury-car-garage-luxury-garage-garage-design.jpg',
    'https://e0.pxfuel.com/wallpapers/541/144/desktop-wallpaper-cool-luxury-house-and-car-design-inspiration-of-a-look-at-some-exotic-mansions-and-cars.jpg'
  ];

  final names = [
    'علي محمد حسين',
    'أحمد خالد علي',
    'حسين علي كريم',
    'مصطفى سالم حيدر',
    'سارة جاسم عبد',
    'زينب محمد كاظم',
    'محمد قاسم عبد الله',
    'رائد كريم جاسم',
    'حيدر عباس جبار',
    'نور أحمد يوسف'
  ];

  final garages = [
    'البصرة',
    'بغداد',
    'النجف',
    'كربلاء',
    'اربيل',
    'دهوك',
    'السليمانية',
    'ذي قار',
    'ميسان',
    'واسط'
  ];

  final violations = [
    'مخالفة سرعة',
    'تجاوز اشارة',
    'ركن خاطئ',
    'عدم ربط حزام',
    'استخدام هاتف أثناء القيادة'
  ];

  final plateTypes = ['خصوصي', 'عمومي', 'حكومي', 'استثماري', 'عسكري'];
  await Future.delayed(Duration(seconds: delaySeconds));
  return List.generate(35, (index) {
    return VehicleViolations(
      accumulatedPrice: random.nextInt(50000) + 1000,
      numberOfViolation: 35,
      vehicleViolations: List.generate(35, (violationIndex) {
        return Violation(
          id: 'ID$index$violationIndex',
          creationDate: DateTime.now().subtract(Duration(days: random.nextInt(365))),
          deleted: false,
          number: index + violationIndex,
          userId: 'user$index',
          userFullName: names[random.nextInt(names.length)],
          userGarageId: 'garage$index',
          userGarageName: 'كراج ${garages[random.nextInt(garages.length)]}',
          garageGovernorateName: garages[random.nextInt(garages.length)],
          vehicleId: 'vehicle$index',
          vehicleChassisNumber: 'SN${random.nextInt(100000)}',
          vehiclePlateCharacterName: String.fromCharCode(1575 + random.nextInt(4)),
          vehiclePlateType: plateTypes[random.nextInt(plateTypes.length)],
          vehicleGovernorateName: garages[random.nextInt(garages.length)],
          plateNumber: '${random.nextInt(99999) + 10000}',
          feeFines: FeeFines(
            id: 'fee$index$violationIndex',
            creationDate: DateTime.now().subtract(Duration(days: random.nextInt(200))),
            deleted: false,
            name: violations[random.nextInt(violations.length)],
            amount: random.nextInt(50000) + 1000,
            type: random.nextInt(3) + 1,
          ),
          isPaid: random.nextBool(),
          images: images[random.nextInt(images.length - 1)],
          duplicateCount: random.nextInt(5),
          amount: random.nextInt(50000) + 1000,
          totalAmount: random.nextInt(100000) + 1000,
          lat: 33.3128 + random.nextDouble(),
          lng: 44.3615 + random.nextDouble(),
          invoiceNumber: random.nextInt(10000),
          violationPayReceiptId: 'receipt$index$violationIndex',
          violationPayReceiptNumber: random.nextInt(100000),
        );
      }),
    );
  });
}
