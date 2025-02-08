import '../common_lib.dart';
import 'package:flutter/material.dart';

import 'shimmer_container.dart';

class QrCodeShimmer extends StatelessWidget {
  const QrCodeShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      heightFactor: .9,
      child: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 300,
                  width: 300,
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primary,
                    borderRadius:
                        BorderRadius.circular(CustomBorderTheme.normalBorderRadius * 3),
                  ),
                  child: Center(
                    child: ShimmerContainer(
                      width: 265,
                      height: 265,
                    ),
                  ),
                ),
                Gap(Insets.medium),
                ShimmerContainer(
                  width: 200,
                  height: 50,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
