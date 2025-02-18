import 'package:flutter/material.dart';

import '../../../common_lib.dart';

class HomePageHead extends StatelessWidget {
  const HomePageHead({
    super.key,
    required this.imageUrl,
  });
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.all(0),
      leading: CustomCirculerAvatar(path: imageUrl),
      trailing: IconButton(
          style: IconButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
              backgroundColor: Theme.of(context).scaffoldBackgroundColor,
              elevation: 1,
              shadowColor: Theme.of(context).colorScheme.shadow),
          onPressed: () => context.pushNamed(Routes.notificationsPage),
          icon: Padding(
            padding: const EdgeInsets.all(4),
            child: SvgPicture.asset(Assets.assetsIconsNotification,
                color: context.theme.colorScheme.onSurface),
          )),
    );
  }
}

class CustomCirculerAvatar extends StatelessWidget {
  const CustomCirculerAvatar({
    super.key,
    required this.path,
  });
  final String path;
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
                color: Theme.of(context).colorScheme.primaryContainer,
                width: CustomBorderTheme.borderWidth / 2)),
        padding: EdgeInsets.all(5),
        child: CircleAvatar(
            backgroundImage: AssetImage(Assets.assetsImagesAvatarImage),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(1000),
                child: Image.network(
                  path,
                ))));
  }
}
