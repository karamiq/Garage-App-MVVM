import 'dart:math';

import 'package:app/data/fake_data/constatnt_fake.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../src/veichles_page/components/holder_info_row.dart';
import '../services/clients/_clients.dart';
part 'drivers_fake.g.dart';

@riverpod
Future<List<HolderInfoRow>> fakeIraqiInfo(Ref ref) async {
  await Future.delayed(const Duration(seconds: 2)); // Simulate network delay

  final random = Random();
  const states = [
    "بغداد",
    "البصرة",
    "الموصل",
    "أربيل",
    "النجف",
    "كربلاء",
    "السليمانية",
    "كركوك",
    "دهوك",
    "الأنبار",
    "الديوانية",
    "المثنى",
    "بابل",
    "ذي قار",
    "ميسان",
    "واسط",
    "نينوى",
    "صلاح الدين",
    "ديالى",
    "كوت",
    "الناصرية",
    "سامراء",
    "تكريت",
    "الحلة",
    "الفاو",
    "الزبير",
    "القائم",
    "الرطبة",
    "عانة",
    "حديثة",
    "بلد",
    "الحويجة",
    "سنجار",
    "الشرقاط",
    "ربيعة"
  ];

  const names = [
    "علي",
    "حسين",
    "محمد",
    "أحمد",
    "مصطفى",
    "يوسف",
    "كريم",
    "سعد",
    "جواد",
    "ياسر",
    "حيدر",
    "فاطمة",
    "زينب",
    "نور",
    "سارة",
    "رنا",
    "عباس",
    "رعد",
    "كرار",
    "مهدي",
    "حسن",
    "سجاد",
    "بتول",
    "مريم",
    "رؤى",
    "شهد",
    "أميرة",
    "لبنى",
    "أمير",
    "عدنان",
    "هيثم",
    "وسام",
    "محمود",
    "نايف",
    "قاسم",
    "ضياء",
    "منى",
    "ريهام",
    "وليد",
    "نزار",
    "طارق",
    "باسم"
  ];

  List<HolderInfoRow> infoList = List.generate(35, (index) {
    final id = "IQ${random.nextInt(1000000).toString().padLeft(6, '0')}";
    final name =
        "${names[random.nextInt(names.length)]} ${names[random.nextInt(names.length)]}";
    final state = states[random.nextInt(states.length)];
    final phoneNumber = "07${random.nextInt(1000000000).toString().padLeft(9, '0')}";
    final photoUrl = myImageUrl;

    return HolderInfoRow(
      id: id,
      name: name,
      state: state,
      phoneNumber: phoneNumber,
      photoUrl: photoUrl,
    );
  });

  return infoList;
}

// Usage in widget:
// final holderInfo = ref.watch(fakeIraqiInfoProvider.future);
// holderInfo.then((info) => print(info.name));
