import 'package:cached_network_image/cached_network_image.dart';

import 'package:fast_app_base/common/common/common.dart';
import 'package:fast_app_base/entity/post/product_post.dart';
import 'package:fast_app_base/entity/post/simple_product_post.dart';
import 'package:fast_app_base/screen/post_detail/state_manager/product_post_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PostDetailScreen extends ConsumerWidget {
  final SimpleProductPost? simpleProductPost;
  final int id;

  const PostDetailScreen({
    super.key,
    required this.id,
    this.simpleProductPost,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<ProductPost> productPost = ref.watch(productPostProvider(id));

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        title: 'post_detail'.text.make(),
      ),
      body: productPost.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        data: (data) => Center(
          child: CachedNetworkImage(
            imageUrl: data.simpleProductPost.product.imageUrls[0],
          ),
        ),
        error: (error, stackTrace) => Text(error.toString()),
      ),
    );
  }
}
