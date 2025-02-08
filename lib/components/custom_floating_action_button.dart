import 'package:flutter/material.dart';
import '../common_lib.dart';
import 'custom_elevated_button.dart';

class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton({
    super.key,
    required this.icon,
    required this.text,
  });

  final String icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width - Insets.exLarge,
      height: 50,
      child: ElevatedButton(
        onPressed: () {},
        child: ElevatedButtonChild(
          icon: icon,
          text: text,
        ),
      ),
    );
  }
}
