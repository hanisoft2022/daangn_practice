import 'package:fast_app_base/common/common/common.dart';
import 'package:flutter/material.dart';

class SelectImageButtonWidget extends StatelessWidget {
  const SelectImageButtonWidget({
    super.key,
    required this.borderRadius,
    required this.onTap,
    required this.imageUrls,
  });

  final BorderRadius borderRadius;
  final VoidCallback onTap;
  final List<String> imageUrls;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      customBorder: RoundedRectangleBorder(borderRadius: borderRadius),
      onTap: onTap,
      child: Container(
        height: 75,
        width: 75,
        decoration: BoxDecoration(
            border: Border.all(
              color: context.appColors.divider,
            ),
            borderRadius: borderRadius),
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
