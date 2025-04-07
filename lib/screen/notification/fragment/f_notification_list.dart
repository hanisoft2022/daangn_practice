import 'package:fast_app_base/screen/notification/dummy/notification_dummies.dart';
import 'package:fast_app_base/screen/notification/widget/w_notification_item.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class NotificationListFragment extends HookConsumerWidget {
  const NotificationListFragment({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListView(
      children: notificationList
          .map(
            (e) => NotificationItemWidget(
              notification: e,
              onTap: () {},
            ),
          )
          .toList(),
    );
  }
}
