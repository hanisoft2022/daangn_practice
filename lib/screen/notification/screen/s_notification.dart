import 'package:fast_app_base/screen/notification/fragment/f_notification_list.dart';
import 'package:fast_app_base/screen/notification/state_manager/provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:velocity_x/velocity_x.dart';

class NotificationScreen extends HookConsumerWidget {
  const NotificationScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isEditMode = ref.watch(notificationEditModeProvider);
    final tabController = useTabController(initialLength: 2);

    return Material(
      child: Column(
        children: [
          AppBar(
            title: '알림'.text.make(),
            actions: [
              GestureDetector(
                onTap: () {
                  final isEditMode = ref.read(notificationEditModeProvider);
                  ref.read(notificationEditModeProvider.notifier).state = !isEditMode;
                },
                child: (isEditMode ? '삭제' : '편집').text.make().pOnly(right: 20),
              ),
            ],
          ),
          TabBar(
            controller: tabController,
            tabs: [
              '활동 알림'.text.white.make(),
              '키워드 알림'.text.white.make(),
            ],
            labelStyle: const TextStyle(fontWeight: FontWeight.bold),
            labelPadding: const EdgeInsets.symmetric(vertical: 20),
            indicatorColor: Colors.white,
          ),
          Expanded(
            child: TabBarView(
              controller: tabController,
              children: [
                const NotificationListFragment(),
                Container(color: Colors.blue),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
