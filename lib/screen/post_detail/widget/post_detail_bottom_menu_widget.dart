import 'package:fast_app_base/common/common/common.dart';
import 'package:flutter/material.dart';

class PostDetailBottomMenuWidget extends StatelessWidget {
  const PostDetailBottomMenuWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.viewPaddingBottom + context.deviceHeight * 0.075,
      color: Colors.red,
    );
  }
}
