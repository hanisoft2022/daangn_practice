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
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            user.nickname.text.bold.make(),
            height10,
            address.simpleAddress.text.size(14).color(context.appColors.lessImportant).make(),
          ],
        )
      ],
    ).p(15);
  }
}
