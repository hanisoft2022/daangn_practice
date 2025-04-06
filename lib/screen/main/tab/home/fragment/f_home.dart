import 'package:fast_app_base/common/common/common.dart';
import 'package:fast_app_base/entity/dummy/dummies.dart';
import 'package:fast_app_base/screen/main/fab/w_floating_daangn_button.dart';
import 'package:fast_app_base/screen/main/fab/w_floating_daangn_button.riverpod.dart';
import 'package:fast_app_base/screen/main/tab/home/widget/w_product_post_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:badges/badges.dart' as badges;

class HomeFragment extends ConsumerStatefulWidget {
  const HomeFragment({super.key});

  @override
  ConsumerState<HomeFragment> createState() => _HomeFragmentState();
}

class _HomeFragmentState extends ConsumerState<HomeFragment> {
  final scrollController = ScrollController();
  String title = '다트동';
  @override
  void initState() {
    super.initState();
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
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      AppBar(
        centerTitle: false,
        automaticallyImplyLeading: false,
        title:
            // ! PopupMenuButton 사용하면 렌더링 이슈로 작동 안 됨.
            // ! 이유는 모르겠음..
            // PopupMenuButton<String>(
            //   initialValue: title,
            //   onSelected: (value) {
            //     setState(() => title = value);
            //   },
            //   itemBuilder: (context) => ['다트동', '앱동', '쇼핑동']
            //       .map(
            //         (e) => PopupMenuItem(
            //           value: e,
            //           child: e.text.make(),
            //         ),
            //       )
            //       .toList(),
            //   child: title.text.make(),
            // ),
            MenuAnchor(
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
                  Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
                  const Icon(Icons.arrow_drop_down),
                ],
              ),
            );
          },
          menuChildren: ['다트동', '앱동', '쇼핑동']
              .map(
                (e) => MenuItemButton(
                  onPressed: () => setState(() => title = e),
                  child: Text(e),
                ),
              )
              .toList(),
        ),
        actions: [
          badges.Badge(
            onTap: () {},
            position: badges.BadgePosition.topEnd(top: -3, end: -3),
            badgeStyle: const badges.BadgeStyle(badgeColor: Colors.red, padding: EdgeInsets.all(3)),
            child: const Icon(Icons.notifications_none_rounded),
          ),
          width10
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
    ]);
  }
}
