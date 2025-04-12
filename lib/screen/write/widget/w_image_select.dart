import 'package:cached_network_image/cached_network_image.dart';
import 'package:fast_app_base/common/common/common.dart';
import 'package:fast_app_base/screen/write/widget/w_select_image_button.dart';
import 'package:flutter/material.dart';

class ImageSelectWidget extends StatelessWidget {
  final List<String> imageUrls;
  final VoidCallback onTap;

  const ImageSelectWidget(this.imageUrls, {super.key, required this.onTap});
  @override
  Widget build(BuildContext context) {
    final borderRadius = BorderRadius.circular(10);

    return SizedBox(
      height: 100,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SelectImageButtonWidget(borderRadius: borderRadius, onTap: onTap, imageUrls: imageUrls),
            ...imageUrls
                .map(
                  (e) => CachedNetworkImage(imageUrl: e).pSymmetric(h: 10),
                )
                .toList()
          ],
        ),
      ),
    );
  }
}
