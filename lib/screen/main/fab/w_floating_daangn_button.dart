import 'package:fast_app_base/common/common/common.dart';
import 'package:fast_app_base/screen/main/basic/s_main.dart';
import 'package:fast_app_base/screen/main/fab/w_floating_daangn_button.riverpod.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FloatingDaangnButton extends ConsumerWidget {
  const FloatingDaangnButton({super.key});

  static const duration = Duration(milliseconds: 300);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isExpanded = ref.watch(floatingDaangnButtonisExpandedProvider);
    final isSmall = ref.watch(floatingDaangnButtonisSmallProvider);

    return Stack(
      children: [
        AnimatedContainer(
          duration: duration,
          color: isExpanded ? Colors.black.withAlpha(100) : Colors.transparent,
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,
            children: [
              AnimatedOpacity(
                opacity: isExpanded ? 1 : 0,
                duration: duration,
                child: Container(
                  width: 160,
                  padding: const EdgeInsets.all(15),
                  margin: const EdgeInsets.only(bottom: 10),
                  decoration: BoxDecoration(color: context.appColors.floatingActionLayer, borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _floatItem('알바', '$basePath/fab/fab_01.png'),
                      _floatItem('과외/클래스', '$basePath/fab/fab_02.png'),
                      _floatItem('농수산물', '$basePath/fab/fab_03.png'),
                      _floatItem('부동산', '$basePath/fab/fab_04.png'),
                      _floatItem('중고차', '$basePath/fab/fab_05.png'),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  ref.read(floatingDaangnButtonisExpandedProvider.notifier).state = !isExpanded;
                },
                child: AnimatedContainer(
                  height: 60,
                  duration: duration,
                  padding: const EdgeInsets.symmetric(horizontal: 18),
                  decoration: BoxDecoration(
                    color: isExpanded ? context.appColors.floatingActionLayer : const Color(0xffff791f),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      AnimatedRotation(
                        turns: isExpanded ? 0.125 : 0,
                        duration: duration,
                        child: const Icon(Icons.add),
                      ),
                      AnimatedSize(
                        duration: duration,
                        child: SizedBox(
                          width: isSmall ? 0.0 : null,
                          child: isSmall ? null : '글쓰기'.text.make(),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ).pOnly(bottom: MainScreenState.bottomNavigationBarHeight + 10, right: 25),
      ],
    );
  }
}

Row _floatItem(String title, String imagePath) => Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(imagePath, width: 30),
        width10,
        title.text.make(),
      ],
    );
