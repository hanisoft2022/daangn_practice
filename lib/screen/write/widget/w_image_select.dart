import 'package:cached_network_image/cached_network_image.dart';
import 'package:fast_app_base/common/common/common.dart';
import 'package:flutter/material.dart';

class ImageSelectWidget extends StatelessWidget {
  final List<String> imageUrlList;
  final VoidCallback onTap;

  const ImageSelectWidget(this.imageUrlList, {super.key, required this.onTap});
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
            InkWell(
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
                            text: imageUrlList.length.toString(),
                            style: const TextStyle(color: Colors.orange, fontWeight: FontWeight.bold),
                          ),
                          const TextSpan(text: '/10'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            ...imageUrlList
                .map(
                  (e) => CachedNetworkImage(imageUrl: e),
                )
                .toList()
          ],
        ),
      ),
    );
  }
}
