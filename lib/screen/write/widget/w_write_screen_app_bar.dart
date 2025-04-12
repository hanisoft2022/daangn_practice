import 'package:fast_app_base/common/common/common.dart';
import 'package:flutter/material.dart';

class WriteScreenAppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const WriteScreenAppBarWidget({
    super.key,
  });

  @override
  Size get preferredSize => const Size.fromHeight(50);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: false,
      backgroundColor: Colors.transparent,
      title: '내 물건 팔기'.text.bold.size(20).make(),
      actions: [
        TextButton(
          onPressed: () {},
          child: '임시저장'.text.color(Colors.white).bold.make(),
        ),
      ],
    );
  }
}
