import 'package:app/data/models/notif.dart';
import 'package:flutter/material.dart';
import '../../../common_lib.dart';
import '../../../components/custom_app_bar.dart';

import '../../../components/custom_list_tile_skeleton.dart';
import 'components/empty_widget.dart';
import 'components/notifications_content.dart';

class NotificationsPage extends StatefulWidget {
  const NotificationsPage({super.key});

  @override
  State<NotificationsPage> createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  final Future<List<Notif>> controller = Future.value();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'الأشعارات'),
      body: Padding(
        padding: EdgeInsets.all(Insets.medium),
        child: FutureBuilder<List<Notif>>(
          future: controller,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return ListView.separated(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) => CustomListTileSkeleton(),
                separatorBuilder: (context, index) => Gap(Insets.small),
                itemCount: 11,
              );
            } else if (snapshot.hasError) {
              return Center(child: Text('Error: ${snapshot.error}'));
            } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
              return NotificationsEmptyWidget(height: 300);
            } else {
              return NotificationsContent(notifications: snapshot.data!);
            }
          },
        ),
      ),
    );
  }
}
