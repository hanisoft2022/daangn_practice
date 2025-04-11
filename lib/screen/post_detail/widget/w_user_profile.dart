import 'package:cached_network_image/cached_network_image.dart';
import 'package:fast_app_base/common/common/common.dart';
import 'package:fast_app_base/entity/user/address.dart';
import 'package:fast_app_base/entity/user/user.dart';
import 'package:flutter/material.dart';

class UserProfileWidget extends StatelessWidget {
  final User user;
  final Address address;

  const UserProfileWidget(this.user, {super.key, required this.address});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipOval(
          child: CachedNetworkImage(
            imageUrl: user.profileUrl,
            width: 60,
          ),
        ),
        width20,
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              user.nickname.text.bold.make(),
              height10,
              address.simpleAddress.text.size(14).color(context.appColors.lessImportant).make(),
            ],
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            // 귀여운 위젯
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    '${user.temperature}℃'.text.bold.color(Colors.green).make(),
                    SizedBox(
                      width: 55,
                      child: LinearProgressIndicator(
                        value: 0.365,
                        color: context.appColors.lessImportant,
                      ),
                    ),
                  ],
                ),
                width10,
                Image.asset(
                  '$basePath/detail/smile.png',
                  width: 30,
                ),
              ],
            ),
            height10,
            '매너온도'.text.color(context.appColors.lessImportant).underline.make(),
          ],
        )
      ],
    ).p(15);
  }
}
