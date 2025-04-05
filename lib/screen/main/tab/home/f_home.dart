import 'package:fast_app_base/screen/main/fab/w_floating_daangn_button.riverpod.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeFragment extends ConsumerStatefulWidget {
  const HomeFragment({super.key});

  @override
  ConsumerState<HomeFragment> createState() => _HomeFragmentState();
}

class _HomeFragmentState extends ConsumerState<HomeFragment> {
  final scrollController = ScrollController();

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
    return ListView.builder(
      controller: scrollController,
      itemBuilder: (context, index) => Container(
        height: 300,
        color: index % 2 == 0 ? Colors.red : Colors.blue,
      ),
    );
  }
}
