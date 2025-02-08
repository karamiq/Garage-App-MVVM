import 'package:flutter/material.dart';
import '../../common_lib.dart';
import 'components/veichles_page_content.dart';

class VeichlesPage extends StatelessWidget {
  const VeichlesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: Insets.medium),
        child: Column(
          children: [
            //ViechlePageSkeleton(),
            VehiclesPageContent(),
          ],
        ),
      ),
    );
  }
}
