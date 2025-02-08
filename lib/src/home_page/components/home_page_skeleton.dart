import 'package:app/src/home_page/components/mini_card_shimmer.dart';
import 'package:flutter/material.dart';
import '../../../common_lib.dart';
import '../../../components/cusotm_row_skeleton.dart';
import '../../../components/home_page_head_shimmer.dart';
import '../../../components/shimmer_container.dart';
import '../../../components/user_card_shimmer.dart';

class HomePageSkeleton extends StatelessWidget {
  const HomePageSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HomePageHeadShimmer(),
        Gap(Insets.medium),
        UserCardShimmer(),
        Gap(Insets.small),
        Row(
          children: [
            MiniCardShimmer(),
            Gap(Insets.medium),
            MiniCardShimmer(),
          ],
        ),
        Gap(Insets.large),
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  flex: 3,
                  child: ShimmerContainer(
                    width: 60,
                    height: 40,
                  ),
                ),
                Gap(Insets.medium),
                Expanded(
                  flex: 3,
                  child: ShimmerContainer(
                    width: 100,
                    height: 55,
                  ),
                ),
              ],
            ),
            Gap(Insets.small),
            CustomRowSkeleton(),
          ],
        )
      ],
    );
  }
}
