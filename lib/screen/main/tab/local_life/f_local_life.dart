import 'package:fast_app_base/screen/main/fab/w_floating_daangn_button.riverpod.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LocalLifeFragment extends ConsumerStatefulWidget {
  static const routePath = '/main/localLife';
  static const routeNamed = 'localLife';

  const LocalLifeFragment({super.key});

  @override
  ConsumerState<LocalLifeFragment> createState() => _LocalLifeFragmentState();
}

class _LocalLifeFragmentState extends ConsumerState<LocalLifeFragment> {
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
    return ListView(controller: scrollController, children: [
      Image.network('http://picsum.photos/id/950/200/300', fit: BoxFit.cover),
      Container(color: Colors.amber, height: 300),
      Container(color: Colors.red, height: 300),
      Container(color: Colors.amber, height: 300),
      Container(color: Colors.red, height: 300),
      Container(color: Colors.amber, height: 300),
      Container(color: Colors.red, height: 300),
      Container(color: Colors.amber, height: 300),
      Container(color: Colors.red, height: 300),
    ]);
  }
}
