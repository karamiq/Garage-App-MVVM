import 'package:flutter/material.dart';

import '../../../../common_lib.dart';
import '../../../../components/custom_list_tile.dart';
import '../../../../data/models/notif.dart';

class NotificationsContent extends StatelessWidget {
  const NotificationsContent({
    super.key,
    required this.notifications,
  });

  final List<Notif> notifications;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: ListView.separated(
      itemCount: notifications.length,
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) => CustomListTile(
          icon: notifications[index].picture,
          title: notifications[index].title,
          subtitle: notifications[index].description,
          trailing2: notifications[index].date.format()),
      separatorBuilder: (context, index) => Gap(Insets.small),
    ));
  }
}
