import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../services/clients/_clients.dart';
import 'constatnt_fake.dart';
part 'drivers_fake.g.dart';

@riverpod
Future<List<HolderInfoRowModel>> fakeIraqiInfo(Ref ref,
    {String? region, String? garage}) async {
  await Future.delayed(Duration(seconds: delaySeconds)); // Simulate network delay

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

  List<HolderInfoRowModel> infoList = List.generate(35, (index) {
    final id = "IQ${index.toString().padLeft(6, '0')}"; // Deterministic ID
    final name =
        "${names[index % names.length]} ${names[(index + 1) % names.length]}"; // Deterministic name
    final state = states[index % states.length]; // Deterministic state
    final phoneNumber =
        "07${index.toString().padLeft(9, '0')}"; // Deterministic phone number
    final photoUrl = myImageUrl;

    return HolderInfoRowModel(
      id: id,
      name: name,
      state: state,
      phoneNumber: phoneNumber,
      photoUrl: photoUrl,
    );
  });

  List<HolderInfoRowModel> filteredList = infoList.where((car) {
    final matchesRegion =
        region == null || car.state.toLowerCase().contains(region.toLowerCase());
    final matchesGarage =
        garage == null || car.name.toLowerCase().contains(garage.toLowerCase());

    return matchesRegion && matchesGarage;
  }).toList();

  return filteredList;
}

////////////////////////////////////////////////
class HolderInfoRowModel {
  final String id;
  final String name;
  final String state;
  final String phoneNumber;
  final String photoUrl;

  HolderInfoRowModel({
    required this.id,
    required this.name,
    required this.state,
    required this.phoneNumber,
    required this.photoUrl,
  });

  factory HolderInfoRowModel.fromJson(Map<String, dynamic> json) {
    return HolderInfoRowModel(
      id: json['id'],
      name: json['name'],
      state: json['state'],
      phoneNumber: json['phoneNumber'],
      photoUrl: json['photoUrl'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'state': state,
      'phoneNumber': phoneNumber,
      'photoUrl': photoUrl,
    };
  }
}
