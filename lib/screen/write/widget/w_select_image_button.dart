import 'package:fast_app_base/common/common/common.dart';
import 'package:fast_app_base/screen/write/widget/w_image_select.dart';
import 'package:flutter/material.dart';

class SelectImageButtonWidget extends StatelessWidget {
  const SelectImageButtonWidget({
    super.key,
    required this.onTap,
    required this.imageUrls,
  });

  final VoidCallback onTap;
  final List<String> imageUrls;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      customBorder: const RoundedRectangleBorder(borderRadius: ImageSelectWidget.borderRadius),
      onTap: onTap,
      child: Container(
        height: ImageSelectWidget.imageHeight,
        width: ImageSelectWidget.imageWidth,
        decoration: BoxDecoration(
            border: Border.all(
              color: context.appColors.divider,
            ),
            borderRadius: ImageSelectWidget.borderRadius),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.camera_alt_outlined),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: imageUrls.length.toString(),
                    style: const TextStyle(color: Colors.orange, fontWeight: FontWeight.bold),
                  ),
                  const TextSpan(text: '/10'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
