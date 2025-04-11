import 'package:fast_app_base/entity/post/product_post.dart';
import 'package:fast_app_base/entity/post/simple_product_post.dart';
import 'package:flutter/material.dart';

class PostContentFragment extends StatelessWidget {
  final SimpleProductPost simpleProductPost;
  final ProductPost? productPost;

  const PostContentFragment({super.key, required this.simpleProductPost, this.productPost});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
