import 'package:app/data/fake_data/constatnt_fake.dart';
import 'package:flutter/material.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:widget_to_marker/widget_to_marker.dart';

import '../../../common_lib.dart';
import '../../home_page/components/home_page_head.dart';
import 'map_trip_card.dart';

class PathPageContent extends StatefulWidget {
  const PathPageContent({super.key});

  @override
  State<PathPageContent> createState() => _PathPageContentState();
}

class _PathPageContentState extends State<PathPageContent> {
  late GoogleMapController mapController;
  List<LatLng> polylineCoordinates = [];
  Map<String, Marker> markers = {};
  final LatLng _startPoint = LatLng(33.32805, 44.301488); // Example: Start Point
  final LatLng _endPoint = LatLng(33.412805, 44.381488); // Example: End Point

  String themeForMap = '';

  @override
  void initState() {
    super.initState();
    getPolyPoints();
    loadMapStyle();
    addMarker('1', _endPoint, Assets.assetsIconsLocationTick);
    addMarker('2', _startPoint, Assets.assetsIconsMapPin);
  }

  void loadMapStyle() async {
    try {
      themeForMap = await DefaultAssetBundle.of(context)
          .loadString(Assets.assetsThemesDarkMapStyle);
    } catch (e) {
      print('Error loading map style: $e');
    }
  }

  Future<void> getPolyPoints() async {
    try {
      PolylinePoints polylinePoints = PolylinePoints();
      PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
        googleApiKey:
            'AIzaSyAjW0VnW1nSkCKd8NQGJfB1QPFMlAs3lJY', // Replace with your API key
        request: PolylineRequest(
          origin: PointLatLng(_startPoint.latitude, _startPoint.longitude),
          destination: PointLatLng(_endPoint.latitude, _endPoint.longitude),
          mode: TravelMode.driving,
        ),
      );
      if (result.points.isNotEmpty) {
        polylineCoordinates.addAll(
            result.points.map((point) => LatLng(point.latitude, point.longitude)));
        setState(() {});
      }
    } catch (e) {
      print('Error fetching polyline points: $e');
    }
  }

  Future<void> addMarker(String id, LatLng location, String icon) async {
    try {
      final marker = Marker(
        markerId: MarkerId(id),
        position: location,
        icon: await Container(
          child: SvgPicture.asset(
            icon,
            color: const Color.fromARGB(255, 79, 180, 131),
            height: 30,
          ),
        ).toBitmapDescriptor(logicalSize: const Size(430, 430)),
      );
      setState(() {
        markers[id] = marker;
      });
    } catch (e) {
      print('Error adding marker: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GoogleMap(
          myLocationButtonEnabled: false,
          myLocationEnabled: true,
          zoomControlsEnabled: false,
          initialCameraPosition:
              CameraPosition(target: LatLng(33.312805, 44.361488), zoom: 10.5),
          onMapCreated: (controller) {
            mapController = controller;
            mapController.setMapStyle(themeForMap);
          },
          markers: markers.values.toSet(),
          polylines: {
            Polyline(
                width: 5,
                color: Colors.green,
                polylineId: PolylineId('line'),
                points: polylineCoordinates)
          },
        ),
        Align(
          alignment: Alignment.topCenter,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: Insets.medium * .5),
            child: HomePageHead(
              imageUrl: myImageUrl,
            ),
          ),
        ),
        MapTripCard(from: 'كراج العلاوي', to: 'كراج ام قصر')
      ],
    );
  }
}
