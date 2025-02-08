import 'package:app/common_lib.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class CustomPinPut extends StatelessWidget {
  const CustomPinPut({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Pinput(
      length: 6,
      validator: context.validator.required().build(),
      focusedPinTheme: PinTheme(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
              border: Border.all(color: Theme.of(context).colorScheme.primary),
              color: Theme.of(context).colorScheme.surface,
              borderRadius: BorderRadius.circular(CustomBorderTheme.normalBorderRadius))),
      errorPinTheme: PinTheme(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
              border: Border.all(width: .5, color: Theme.of(context).colorScheme.error),
              color: Theme.of(context).colorScheme.onInverseSurface,
              borderRadius: BorderRadius.circular(CustomBorderTheme.normalBorderRadius))),
      defaultPinTheme: PinTheme(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.onInverseSurface,
              borderRadius: BorderRadius.circular(CustomBorderTheme.normalBorderRadius))),
    );
  }
}
