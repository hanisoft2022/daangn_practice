import 'dart:io';

import 'package:fast_app_base/common/common/common.dart';
import 'package:fast_app_base/screen/write/widget/w_select_image_button.dart';
import 'package:flutter/material.dart';

class ImageSelectWidget extends StatelessWidget {
  final List<String> imageUrls;
  final VoidCallback onTap;
  static const double imageHeight = 75;
  static const double imageWidth = 75;

  static const borderRadius = BorderRadius.all(Radius.circular(10));

  const ImageSelectWidget(this.imageUrls, {super.key, required this.onTap});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SelectImageButtonWidget(onTap: onTap, imageUrls: imageUrls),
            ...imageUrls
                .map(
                  (e) => ClipRRect(
                    borderRadius: borderRadius,
                    child: Image.file(
                      File(e),
                      height: imageHeight,
                      width: imageWidth,
                      fit: BoxFit.cover,
                    ),
                  ).pSymmetric(h: 20),
                )
                .toList()
          ],
        ),
      ),
    );
  }
}
