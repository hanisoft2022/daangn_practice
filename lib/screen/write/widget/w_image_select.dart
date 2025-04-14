import 'dart:io';

import 'package:fast_app_base/common/common/common.dart';
import 'package:fast_app_base/screen/write/widget/w_select_image_button.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;

typedef OnTapImageRemove = void Function(String imageUrl);

class ImageSelectWidget extends StatelessWidget {
  final OnTapImageRemove onTapImageRemove;

  final List<String> imageUrls;
  final VoidCallback onSelectImageTap;
  static const double imageHeight = 75;
  static const double imageWidth = 75;

  static const borderRadius = BorderRadius.all(Radius.circular(10));

  const ImageSelectWidget(
    this.imageUrls, {
    super.key,
    required this.onSelectImageTap,
    required this.onTapImageRemove,
  });
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SelectImageButtonWidget(onTap: onSelectImageTap, imageUrls: imageUrls),
            width10,
            ...imageUrls
                .map(
                  (imageUrl) => Stack(
                    clipBehavior: Clip.none,
                    children: [
                      ClipRRect(
                        borderRadius: borderRadius,
                        child: Image.file(
                          File(imageUrl),
                          height: imageHeight,
                          width: imageWidth,
                          fit: BoxFit.cover,
                        ),
                      ).pSymmetric(h: 10),
                      Positioned(
                        top: -15,
                        right: 0,
                        child: GestureDetector(
                          onTap: () => onTapImageRemove(imageUrl),
                          child: badges.Badge(
                            badgeStyle: const badges.BadgeStyle(
                              badgeColor: Colors.white,
                              shape: badges.BadgeShape.circle,
                            ),
                            badgeContent: 'X'.text.color(Colors.black).make(),
                          ),
                        ),
                      )
                    ],
                  ),
                )
                .toList()
          ],
        ),
      ),
    );
  }
}
