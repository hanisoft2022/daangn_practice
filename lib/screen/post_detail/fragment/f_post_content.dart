import 'package:fast_app_base/common/common/common.dart';
import 'package:fast_app_base/entity/post/product_post.dart';
import 'package:fast_app_base/entity/post/simple_product_post.dart';
import 'package:flutter/material.dart';
import 'package:timeago/timeago.dart' as timeago;

class PostContentFragment extends StatelessWidget {
  final SimpleProductPost simpleProductPost;
  final ProductPost? productPost;

  const PostContentFragment({super.key, required this.simpleProductPost, this.productPost});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        simpleProductPost.product.title.text.size(16).bold.make(),
        height10,
        timeago.format(simpleProductPost.createdAt, locale: context.locale.languageCode).text.size(13).color(context.appColors.lessImportant).make(),
        height20,
        if (productPost == null) const Center(child: CircularProgressIndicator()),
        if (productPost != null) productPost!.content.text.make(),
      ],
    ).p(15);
  }
}
