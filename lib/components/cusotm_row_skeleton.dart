import '../common_lib.dart';
import 'package:flutter/material.dart';
import 'shimmer_container.dart';

class CustomRowSkeleton extends StatelessWidget {
  const CustomRowSkeleton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ShimmerContainer(
        width: double.infinity,
        child: ListTile(
          trailing: ShimmerContainer(
            width: 30,
            height: 30,
          ),
          leading: ShimmerContainer(
            width: 30,
            height: 30,
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ShimmerContainer(
                width: 90,
                height: 20,
              ),
              Gap(Insets.medium),
              ShimmerContainer(
                width: 100,
                height: 20,
              ),
            ],
          ),
        ));
  }
}
