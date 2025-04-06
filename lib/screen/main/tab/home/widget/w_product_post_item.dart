import 'package:cached_network_image/cached_network_image.dart';
import 'package:fast_app_base/common/common/common.dart';
import 'package:fast_app_base/entity/post/product_post.dart';
import 'package:flutter/material.dart';
import 'package:timeago/timeago.dart' as timeago;

class ProductPostItem extends StatelessWidget {
  final ProductPost productPost;

  const ProductPostItem(this.productPost, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: CachedNetworkImage(
              imageUrl: productPost.product.imageUrls[0],
              width: 150,
            ),
          ),
          width20,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                productPost.product.name.text.size(16).bold.make(),
                Row(
                  children: [
                    productPost.address.simpleAddress.text.size(14).color(context.appColors.lessImportant).make(),
                    ' • '.text.size(14).color(context.appColors.lessImportant).make(),
                    timeago
                        .format(productPost.createdAt, locale: context.locale.languageCode)
                        .text
                        .size(14)
                        .color(context.appColors.lessImportant)
                        .make(),
                  ],
                ),
                productPost.product.price.toWon().text.bold.make(),
                const Spacer(),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.chat_bubble_outline, size: 20, color: context.appColors.lessImportant),
                      width5,
                      productPost.chatCount.text.size(14).make(),
                      width10,
                      Icon(Icons.favorite_border, size: 20, color: context.appColors.lessImportant),
                      width5,
                      productPost.likeCount.text.size(14).make(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ).p(15),
    );
  }
}
