import '../../common_lib.dart';
import '../../components/custom_list_tile.dart';
import '../services/clients/_clients.dart';
import 'constatnt_fake.dart';
part 'financial_transaction_fake.g.dart';

@riverpod
Future<List<CustomListTile>> financialTransactions(Ref ref) async {
  await Future.delayed(Duration(seconds: delaySeconds));
  return data;
}

List<CustomListTile> data = [
  CustomListTile(
      icon: Assets.assetsIconsCardCharge,
      title: 'شحن البطاقة',
      subtitle: 'تم شحن البطاقة الشخصية بمقدار 25,000 د. ع.',
      trailing2: '2024/1/31'),
  CustomListTile(
      icon: Assets.assetsIconsTicket,
      title: 'عملية تحويل',
      subtitle: 'قمت بتحويلها الى حسين علي',
      trailing2: '15,000 د. ع.'),
  CustomListTile(
      icon: Assets.assetsIconsCardCharge,
      title: 'شحن البطاقة',
      subtitle: 'تم شحن البطاقة الشخصية بمقدار 50,000 د. ع.',
      trailing2: '2024/2/01'),
  CustomListTile(
      icon: Assets.assetsIconsTicket,
      title: 'عملية تحويل',
      subtitle: 'قمت بتحويلها الى أحمد محمد',
      trailing2: '20,000 د. ع.'),
  CustomListTile(
      icon: Assets.assetsIconsCardCharge,
      title: 'شحن البطاقة',
      subtitle: 'تم شحن البطاقة الشخصية بمقدار 10,000 د. ع.',
      trailing2: '2024/2/02'),
  CustomListTile(
      icon: Assets.assetsIconsTicket,
      title: 'عملية تحويل',
      subtitle: 'قمت بتحويلها الى سميرة خالد',
      trailing2: '5,000 د. ع.'),
  CustomListTile(
      icon: Assets.assetsIconsCardCharge,
      title: 'شحن البطاقة',
      subtitle: 'تم شحن البطاقة الشخصية بمقدار 30,000 د. ع.',
      trailing2: '2024/2/03'),
  CustomListTile(
      icon: Assets.assetsIconsTicket,
      title: 'عملية تحويل',
      subtitle: 'قمت بتحويلها الى فاطمة علي',
      trailing2: '12,000 د. ع.'),
  CustomListTile(
      icon: Assets.assetsIconsCardCharge,
      title: 'شحن البطاقة',
      subtitle: 'تم شحن البطاقة الشخصية بمقدار 40,000 د. ع.',
      trailing2: '2024/2/04'),
  CustomListTile(
      icon: Assets.assetsIconsTicket,
      title: 'عملية تحويل',
      subtitle: 'قمت بتحويلها الى حسن أحمد',
      trailing2: '25,000 د. ع.'),
  CustomListTile(
      icon: Assets.assetsIconsCardCharge,
      title: 'شحن البطاقة',
      subtitle: 'تم شحن البطاقة الشخصية بمقدار 60,000 د. ع.',
      trailing2: '2024/2/05'),
  CustomListTile(
      icon: Assets.assetsIconsTicket,
      title: 'عملية تحويل',
      subtitle: 'قمت بتحويلها الى رقية محمود',
      trailing2: '35,000 د. ع.'),
  CustomListTile(
      icon: Assets.assetsIconsCardCharge,
      title: 'شحن البطاقة',
      subtitle: 'تم شحن البطاقة الشخصية بمقدار 70,000 د. ع.',
      trailing2: '2024/2/06'),
  CustomListTile(
      icon: Assets.assetsIconsTicket,
      title: 'عملية تحويل',
      subtitle: 'قمت بتحويلها الى محمد جمال',
      trailing2: '45,000 د. ع.'),
  CustomListTile(
      icon: Assets.assetsIconsCardCharge,
      title: 'شحن البطاقة',
      subtitle: 'تم شحن البطاقة الشخصية بمقدار 80,000 د. ع.',
      trailing2: '2024/2/07'),
  CustomListTile(
      icon: Assets.assetsIconsTicket,
      title: 'عملية تحويل',
      subtitle: 'قمت بتحويلها الى مريم جمال',
      trailing2: '10,000 د. ع.'),
  CustomListTile(
      icon: Assets.assetsIconsCardCharge,
      title: 'شحن البطاقة',
      subtitle: 'تم شحن البطاقة الشخصية بمقدار 90,000 د. ع.',
      trailing2: '2024/2/08'),
  CustomListTile(
      icon: Assets.assetsIconsTicket,
      title: 'عملية تحويل',
      subtitle: 'قمت بتحويلها الى يوسف ناصر',
      trailing2: '15,000 د. ع.'),
  CustomListTile(
      icon: Assets.assetsIconsCardCharge,
      title: 'شحن البطاقة',
      subtitle: 'تم شحن البطاقة الشخصية بمقدار 100,000 د. ع.',
      trailing2: '2024/2/09'),
  CustomListTile(
      icon: Assets.assetsIconsTicket,
      title: 'عملية تحويل',
      subtitle: 'قمت بتحويلها الى زينب حسين',
      trailing2: '50,000 د. ع.'),
  CustomListTile(
      icon: Assets.assetsIconsCardCharge,
      title: 'شحن البطاقة',
      subtitle: 'تم شحن البطاقة الشخصية بمقدار 110,000 د. ع.',
      trailing2: '2024/2/10'),
  CustomListTile(
      icon: Assets.assetsIconsTicket,
      title: 'عملية تحويل',
      subtitle: 'قمت بتحويلها الى خالد ياسين',
      trailing2: '25,000 د. ع.'),
  CustomListTile(
      icon: Assets.assetsIconsCardCharge,
      title: 'شحن البطاقة',
      subtitle: 'تم شحن البطاقة الشخصية بمقدار 120,000 د. ع.',
      trailing2: '2024/2/11'),
  CustomListTile(
      icon: Assets.assetsIconsTicket,
      title: 'عملية تحويل',
      subtitle: 'قمت بتحويلها الى سلمى هشام',
      trailing2: '20,000 د. ع.'),
  CustomListTile(
      icon: Assets.assetsIconsCardCharge,
      title: 'شحن البطاقة',
      subtitle: 'تم شحن البطاقة الشخصية بمقدار 130,000 د. ع.',
      trailing2: '2024/2/12'),
  CustomListTile(
      icon: Assets.assetsIconsTicket,
      title: 'عملية تحويل',
      subtitle: 'قمت بتحويلها الى أسامة عبد الله',
      trailing2: '30,000 د. ع.'),
  CustomListTile(
      icon: Assets.assetsIconsCardCharge,
      title: 'شحن البطاقة',
      subtitle: 'تم شحن البطاقة الشخصية بمقدار 140,000 د. ع.',
      trailing2: '2024/2/13'),
  CustomListTile(
      icon: Assets.assetsIconsTicket,
      title: 'عملية تحويل',
      subtitle: 'قمت بتحويلها الى هدى سامي',
      trailing2: '15,000 د. ع.'),
  CustomListTile(
      icon: Assets.assetsIconsCardCharge,
      title: 'شحن البطاقة',
      subtitle: 'تم شحن البطاقة الشخصية بمقدار 150,000 د. ع.',
      trailing2: '2024/2/14'),
  CustomListTile(
      icon: Assets.assetsIconsTicket,
      title: 'عملية تحويل',
      subtitle: 'قمت بتحويلها الى رضا فؤاد',
      trailing2: '40,000 د. ع.'),
  CustomListTile(
      icon: Assets.assetsIconsCardCharge,
      title: 'شحن البطاقة',
      subtitle: 'تم شحن البطاقة الشخصية بمقدار 160,000 د. ع.',
      trailing2: '2024/2/15'),
  CustomListTile(
      icon: Assets.assetsIconsTicket,
      title: 'عملية تحويل',
      subtitle: 'قمت بتحويلها الى سعيد علي',
      trailing2: '50,000 د. ع.'),
  CustomListTile(
      icon: Assets.assetsIconsCardCharge,
      title: 'شحن البطاقة',
      subtitle: 'تم شحن البطاقة الشخصية بمقدار 170,000 د. ع.',
      trailing2: '2024/2/16'),
  CustomListTile(
      icon: Assets.assetsIconsTicket,
      title: 'عملية تحويل',
      subtitle: 'قمت بتحويلها الى عادل جمال',
      trailing2: '60,000 د. ع.'),
  CustomListTile(
      icon: Assets.assetsIconsCardCharge,
      title: 'شحن البطاقة',
      subtitle: 'تم شحن البطاقة الشخصية بمقدار 180,000 د. ع.',
      trailing2: '2024/2/17'),
  CustomListTile(
      icon: Assets.assetsIconsTicket,
      title: 'عملية تحويل',
      subtitle: 'قمت بتحويلها الى سامي يوسف',
      trailing2: '70,000 د. ع.'),
  CustomListTile(
      icon: Assets.assetsIconsCardCharge,
      title: 'شحن البطاقة',
      subtitle: 'تم شحن البطاقة الشخصية بمقدار 190,000 د. ع.',
      trailing2: '2024/2/18'),
  CustomListTile(
      icon: Assets.assetsIconsTicket,
      title: 'عملية تحويل',
      subtitle: 'قمت بتحويلها الى فرح حسين',
      trailing2: '80,000 د. ع.'),
  CustomListTile(
      icon: Assets.assetsIconsCardCharge,
      title: 'شحن البطاقة',
      subtitle: 'تم شحن البطاقة الشخصية بمقدار 200,000 د. ع.',
      trailing2: '2024/2/19'),
];
