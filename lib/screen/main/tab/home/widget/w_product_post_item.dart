import 'package:cached_network_image/cached_network_image.dart';
import 'package:fast_app_base/common/common/common.dart';
import 'package:fast_app_base/common/dart/extension/datetime_extension.dart';
import 'package:fast_app_base/entity/post/simple_product_post.dart';

import 'package:flutter/material.dart';

class ProductPostItem extends StatelessWidget {
  final SimpleProductPost simpleProductPost;

  const ProductPostItem(this.simpleProductPost, {super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.go('/main/localLife/${simpleProductPost.id}', extra: simpleProductPost);
      },
      child: SizedBox(
        height: 180,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: CachedNetworkImage(
                imageUrl: simpleProductPost.product.imageUrls[0],
                width: 150,
              ),
            ),
            width20,
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Material(child: simpleProductPost.product.title.text.size(16).bold.make()),
                  Row(
                    children: [
                      simpleProductPost.address.simpleAddress.text.size(14).color(context.appColors.lessImportant).make(),
                      ' • '.text.size(14).color(context.appColors.lessImportant).make(),
                      simpleProductPost.createdAt.timeago.text.size(14).color(context.appColors.lessImportant).make(),
                    ],
                  ),
                  simpleProductPost.product.price.toWon().text.bold.make(),
                  const Spacer(),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.chat_bubble_outline, size: 20, color: context.appColors.lessImportant),
                        width5,
                        simpleProductPost.chatCount.text.size(14).make(),
                        width10,
                        Icon(Icons.favorite_border, size: 20, color: context.appColors.lessImportant),
                        width5,
                        simpleProductPost.likeCount.text.size(14).make(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ).p(15),
      ),
    );
  }
}
