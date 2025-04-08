import 'package:fast_app_base/screen/notification/state_manager/provider.dart';
import 'package:fast_app_base/screen/notification/widget/w_notification_item.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class NotificationListFragment extends HookConsumerWidget {
  const NotificationListFragment({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final list = ref.watch(notificationProvider);

    return list == null
        ? const Center(child: CircularProgressIndicator())
        : ListView(
            children: list
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
