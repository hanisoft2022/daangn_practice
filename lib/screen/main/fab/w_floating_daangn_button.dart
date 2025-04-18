import 'package:fast_app_base/common/common/common.dart';
import 'package:fast_app_base/screen/main/basic/s_main.dart';
import 'package:fast_app_base/screen/main/fab/w_floating_daangn_button.riverpod.dart';
import 'package:fast_app_base/screen/main/tab/local_life/f_local_life.dart';
import 'package:fast_app_base/screen/write/screen/s_write.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FloatingDaangnButton extends ConsumerWidget {
  // ignore: constant_identifier_names
  static const double FAB_HEIGHT = 60;

  const FloatingDaangnButton({super.key});

  static const duration = Duration(milliseconds: 300);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final floatingDaangnButtonState = ref.watch(floatingDaangnButtonStateProvider);
    final isExpanded = floatingDaangnButtonState.isExpanded;
    final isSmall = floatingDaangnButtonState.isSmall;

    return Stack(
      children: [
        GestureDetector(
          onTap: () => ref.read(floatingDaangnButtonStateProvider.notifier).onBackgroundTap(),
          child: IgnorePointer(
            ignoring: !isExpanded,
            child: AnimatedContainer(
              duration: duration,
              color: isExpanded ? Colors.black.withAlpha(100) : Colors.transparent,
            ),
          ),
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
                child: Column(
                  children: [
                    Container(
                      width: 160,
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(color: context.appColors.floatingActionLayer, borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          GestureDetector(
                              onTap: () {
                                // ! 실험용이므로 이후 이 부분 변경 or 삭제
                                context.go(LocalLifeFragment.routePath);
                              },
                              child: _floatItem('알바', '$basePath/fab/fab_01.png')),
                          _floatItem('과외/클래스', '$basePath/fab/fab_02.png'),
                          _floatItem('농수산물', '$basePath/fab/fab_03.png'),
                          _floatItem('부동산', '$basePath/fab/fab_04.png'),
                          _floatItem('중고차', '$basePath/fab/fab_05.png'),
                        ],
                      ),
                    ),
                    height10,
                    GestureDetector(
                      onTap: () {
                        context.pushNamed(WriteScreen.routeName);
                      },
                      child: Container(
                        width: 160,
                        padding: const EdgeInsets.all(15),
                        margin: const EdgeInsets.only(bottom: 10),
                        decoration: BoxDecoration(color: context.appColors.floatingActionLayer, borderRadius: BorderRadius.circular(10)),
                        child: _floatItem('내 물건 팔기', '$basePath/fab/fab_06.png'),
                      ),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  ref.read(floatingDaangnButtonStateProvider.notifier).toggleMenu();
                },
                child: AnimatedContainer(
                  height: FAB_HEIGHT,
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
                          child: isSmall ? null : '글쓰기'.text.bold.make(),
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
