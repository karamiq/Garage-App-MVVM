import 'package:flutter/material.dart';

import '../../../common_lib.dart';
import '../../../components/custom_list_tile_skeleton.dart';
import '../../../components/home_page_head_shimmer.dart';
import '../../../components/shimmer_container.dart';

class ViechlePageSkeleton extends StatelessWidget {
  const ViechlePageSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HomePageHeadShimmer(),
        Gap(Insets.large * 2),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ShimmerContainer(
              width: 150,
              height: 40,
            ),
            ShimmerContainer(
              width: 50,
            ),
          ],
        ),
        Gap(Insets.large * 1.5),
        ListView.separated(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            //The filtered list must be applied here when linking with api
            itemBuilder: (context, index) => CustomListTileSkeleton(),
            separatorBuilder: (context, index) => Gap(Insets.small),
            itemCount: 3),
        Gap(Insets.large),
        ShimmerContainer(
          width: double.infinity,
          height: 50,
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: Insets.exLarge * 2, vertical: Insets.small),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ShimmerContainer(
                  width: 100,
                ),
                Gap(Insets.small),
                ShimmerContainer(
                  shape: BoxShape.circle,
                  width: 60,
                  height: 30,
                ),
              ],
            ),
          ),
        ),
        Gap(Insets.medium),
        Divider(
          color: Theme.of(context).colorScheme.primaryContainer,
        ),
        Gap(Insets.medium),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ShimmerContainer(
              width: 150,
              height: 30,
            ),
            ShimmerContainer(
              width: 50,
            ),
          ],
        ),
        Gap(Insets.medium),
        CustomListTileSkeleton(),
      ],
    );
  }
}
