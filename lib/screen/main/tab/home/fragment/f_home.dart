import 'package:fast_app_base/common/common/common.dart';

import 'package:fast_app_base/screen/main/fab/w_floating_daangn_button.dart';
import 'package:fast_app_base/screen/main/fab/w_floating_daangn_button.riverpod.dart';
import 'package:fast_app_base/screen/main/tab/home/state_manager/provider.dart';
import 'package:fast_app_base/screen/main/tab/home/widget/w_product_post_item.dart';
import 'package:fast_app_base/screen/notification/screen/s_notification.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:badges/badges.dart' as badges;
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomeFragment extends HookConsumerWidget {
  const HomeFragment({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final posts = ref.watch(postProvider);
    final scrollController = useScrollController();
    final title = useState('다트동');

    useEffect(() {
      scrollController.addListener(
        () {
          final floatingDaangnButtonState = ref.read(floatingDaangnButtonStateProvider);

          // 1. 스크롤 방향 감지
          final direction = scrollController.position.userScrollDirection;
          final isSmall = floatingDaangnButtonState.isSmall;

          // 2. 아래로 스크롤 시 isSmall = true
          if (direction == ScrollDirection.reverse && !isSmall) {
            ref.read(floatingDaangnButtonStateProvider.notifier).changeButtonSize(isSmall: true);
          }
          // 3. 위로 스크롤 시 isSmall = false
          else if (direction == ScrollDirection.forward && isSmall) {
            ref.read(floatingDaangnButtonStateProvider.notifier).changeButtonSize(isSmall: false);
          }
        },
      );
      return () => scrollController.removeListener(() {});
    }, [ref]);

    return Column(
      children: [
        AppBar(
          backgroundColor: Colors.transparent,
          surfaceTintColor: Colors.transparent,
          centerTitle: false,
          automaticallyImplyLeading: false,
          title: MenuAnchor(
            builder: (BuildContext context, MenuController controller, Widget? child) {
              return GestureDetector(
                onTap: () {
                  if (controller.isOpen) {
                    controller.close();
                  } else {
                    controller.open();
                  }
                },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(title.value, style: const TextStyle(fontWeight: FontWeight.bold)),
                    const Icon(Icons.arrow_drop_down),
                  ],
                ),
              );
            },
            menuChildren: ['다트동', '앱동', '쇼핑동']
                .map(
                  (e) => MenuItemButton(
                    onPressed: () {
                      title.value = e;
                    },
                    child: Text(e),
                  ),
                )
                .toList(),
          ),
          actions: [
            IconButton(
              onPressed: () {
                Nav.push(const NotificationScreen());
              },
              icon: badges.Badge(
                onTap: () {
                  Nav.push(const NotificationScreen());
                },
                position: badges.BadgePosition.topEnd(top: -3, end: -3),
                badgeStyle: const badges.BadgeStyle(badgeColor: Colors.red, padding: EdgeInsets.all(3)),
                child: const Icon(Icons.notifications_none_rounded),
              ),
            ),
            width10,
          ],
        ),
        Expanded(
          child: ListView.separated(
            controller: scrollController,
            itemBuilder: (context, index) => ProductPostItem(posts[index]),
            itemCount: posts.length,
            separatorBuilder: (context, index) => const Divider(endIndent: 10, indent: 10),
          ).pOnly(bottom: FloatingDaangnButton.FAB_HEIGHT),
        ),
      ],
    );
  }
}
