import 'package:app/components/under_lined_text_button.dart';
import 'package:app/src/home_page/fee_detailes/components/fee_detailes_head.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
// Import hooks package
import '../../../common_lib.dart';
import '../../../components/custom_app_bar.dart';
import '../../../components/custom_elevated_button.dart';
import '../../../components/custom_svg_style.dart';
import '../../../data/models/vehicle_violations.dart';
import '../../../utils/widgets/network_image_with_loader.dart';

class FeeDetailesPage extends HookConsumerWidget {
  const FeeDetailesPage({super.key, required this.vio});
  final Violation vio;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Hook for storing theme map style
    final themeForMap = useState<String>('');

    // Hook for initializing Google Map style only once
    useEffect(() {
      Future<void> loadMapStyle() async {
        try {
          themeForMap.value = await DefaultAssetBundle.of(context)
              .loadString(Assets.assetsThemesDarkMapStyle);
        } catch (e) {
          print('Error loading map style: $e');
        }
      }

      loadMapStyle();
      return null; // Cleanup callback if needed
    }, []); // Empty array means it runs only once, like componentDidMount

    GoogleMapController? mapController;
    final isDoubled = vio.totalAmount != vio.duplicateCount;

    return Scaffold(
      appBar: const CustomAppBar(),
      body: Padding(
        padding:
            const EdgeInsets.symmetric(horizontal: Insets.medium, vertical: Insets.small),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FeeDetailesHead(debtStatementReceipt: vio),
            const Gap(Insets.medium),
            Row(
              children: [
                CustomSvgStyle(icon: Assets.assetsIconsReceipt),
                const Gap(Insets.small),
                Text(
                  'سبب المخالفة: ${vio.feeFines.name}.',
                  style: const TextStyle(fontSize: CustomFontsTheme.mediumSize),
                ),
              ],
            ),
            const Gap(Insets.medium),
            CarInfo(
              carPlateNumber: vio.vehicleChassisNumber,
              carState: vio.vehicleGovernorateName,
              carLetterType: vio.vehiclePlateCharacterName,
              carPlateType: vio.vehiclePlateType,
            ),
            const Gap(Insets.medium),
            FeePicture(vio: vio),
            const Gap(Insets.medium),
            Row(
              children: [
                CustomSvgStyle(icon: Assets.assetsIconsReceipt),
                const Gap(Insets.small),
                Text(
                  'موقع المخالفة: ${vio.amount}',
                  style: const TextStyle(fontSize: CustomFontsTheme.mediumSize),
                ),
              ],
            ),
            const Gap(Insets.medium),
            ClipRRect(
              borderRadius: BorderRadius.circular(CustomBorderTheme.normalBorderRadius),
              child: SizedBox(
                width: double.infinity,
                height: 200,
                child: GoogleMap(
                  scrollGesturesEnabled: false,
                  rotateGesturesEnabled: false,
                  myLocationButtonEnabled: false,
                  myLocationEnabled: true,
                  zoomControlsEnabled: false,
                  initialCameraPosition:
                      CameraPosition(target: LatLng(vio.lat, vio.lng), zoom: 10.5),
                  onMapCreated: (controller) {
                    mapController = controller;
                    mapController?.setMapStyle(themeForMap.value);
                  },
                  markers: {
                    Marker(
                      markerId: MarkerId('1'),
                      position: LatLng(vio.lat, vio.lng),
                      icon: BitmapDescriptor.defaultMarker,
                    ),
                  },
                  polylines: {
                    Polyline(
                      width: 5,
                      color: Colors.green,
                      polylineId: PolylineId('line'),
                    )
                  },
                ),
              ),
            ),
            const Gap(Insets.medium),
            FeeAmountDetailes(vio: vio, isDoubled: isDoubled),
            if (isDoubled)
              const Text(
                '* تمت مضاعفة قيمة الغرامة لتأخرك شهر عن الدفع',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: CustomFontsTheme.smallSize,
                ),
              ),
            const Spacer(),
            ElevatedButton(
              onPressed: () {},
              child: const ElevatedButtonChild(
                text: 'دفع الغرامة',
                icon: Assets.assetsIconsCard,
              ),
            ),
            Gap(Insets.medium),
          ],
        ),
      ),
    );
  }
}

class _DetailRow extends StatelessWidget {
  const _DetailRow({required this.icon, required this.text});

  final String icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomSvgStyle(icon: icon),
        const Gap(Insets.small),
        Expanded(
          child: Text(
            text,
            style: const TextStyle(
              fontSize: CustomFontsTheme.mediumSize,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ),
      ],
    );
  }
}

class FeePicture extends StatelessWidget {
  const FeePicture({
    super.key,
    required this.vio,
  });

  final Violation vio;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            CustomSvgStyle(icon: Assets.assetsIconsCamera),
            Gap(Insets.small),
            Text(
              'صورة المخالفة',
              style: TextStyle(fontSize: CustomFontsTheme.mediumSize),
            ),
          ],
        ),
        UnderlinedTextButton(
          text: 'عرض الصورة',
          onTap: () => showDialog(
            context: context,
            builder: (_) => Dialog(
              insetPadding: const EdgeInsets.all(16.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16.0),
                child: InteractiveViewer(
                  panEnabled: true,
                  scaleEnabled: true,
                  minScale: 1.0,
                  maxScale: 4.0,
                  child: NetworkImageWithLoader(vio.images),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class FeeAmountDetailes extends StatelessWidget {
  const FeeAmountDetailes({
    super.key,
    required this.vio,
    required this.isDoubled,
  });

  final Violation vio;
  final bool isDoubled;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomSvgStyle(icon: Assets.assetsIconsReceipt),
        const Gap(Insets.small),
        const Text(
          'قيمة الغرامة',
          style: TextStyle(fontSize: CustomFontsTheme.bigSize - 4),
        ),
        const Gap(Insets.exSmall),
        Text(
          '${vio.amount} د. ع',
          style: TextStyle(
            decorationColor: Theme.of(context).colorScheme.error,
            decoration: isDoubled ? TextDecoration.lineThrough : TextDecoration.none,
            fontSize:
                isDoubled ? CustomFontsTheme.smallSize : CustomFontsTheme.bigSize - 4,
          ),
        ),
        const Spacer(),
        if (isDoubled)
          Text(
            '${vio.totalAmount} د. ع.',
            style: const TextStyle(fontSize: CustomFontsTheme.bigSize - 4),
          ),
      ],
    );
  }
}

class CarInfo extends StatelessWidget {
  const CarInfo({
    super.key,
    required this.carPlateNumber,
    required this.carState,
    required this.carLetterType,
    required this.carPlateType,
  });

  final String carPlateNumber;
  final String carState;
  final String carLetterType;
  final String carPlateType;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            CustomSvgStyle(icon: Assets.assetsIconsCar),
            Gap(Insets.small),
            Text(
              'تفاصيل المركبة:',
              style: TextStyle(fontSize: CustomFontsTheme.mediumSize),
            ),
          ],
        ),
        const Gap(Insets.small),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('رقم اللوحة: $carPlateNumber'),
                  Text('المحافظة: $carState'),
                ],
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('حرف اللوحة: $carLetterType'),
                  Text('نوع اللوحة: $carPlateType'),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
