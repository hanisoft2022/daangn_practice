import 'package:cached_network_image/cached_network_image.dart';

import 'package:fast_app_base/common/common/common.dart';
import 'package:fast_app_base/entity/post/product_post.dart';
import 'package:fast_app_base/entity/post/simple_product_post.dart';
import 'package:fast_app_base/screen/post_detail/fragment/f_post_content.dart';
import 'package:fast_app_base/screen/post_detail/state_manager/product_post_provider.dart';
import 'package:fast_app_base/screen/post_detail/widget/post_detail_bottom_menu_widget.dart';
import 'package:fast_app_base/screen/post_detail/widget/w_user_profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

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
      body: productPost.when(
        loading: () => simpleProductPost == null ? const Center(child: CircularProgressIndicator()) : _PostDetail(simpleProductPost!),
        error: (error, stackTrace) => Text(error.toString()),
        data: (productPost) => _PostDetail(
          simpleProductPost ?? productPost.simpleProductPost,
          productPost: productPost,
        ),
      ),
    );
  }
}

class _AppBar extends StatelessWidget {
  const _AppBar();

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      left: 0,
      right: 0,
      child: AppBar(
        backgroundColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.share_outlined),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
          )
        ],
      ),
    );
  }
}

class _PostDetail extends HookWidget {
  final SimpleProductPost simpleProductPost;
  final ProductPost? productPost;

  const _PostDetail(this.simpleProductPost, {this.productPost});

  @override
  Widget build(BuildContext context) {
    final pageController = usePageController(initialPage: 0);

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                _ImagePager(pageController: pageController, simpleProductPost: simpleProductPost),
                const _AppBar(),
              ],
            ),
            UserProfileWidget(simpleProductPost.product.user, address: simpleProductPost.address),
            PostContentFragment(simpleProductPost: simpleProductPost, productPost: productPost),
            height20,
          ],
        ),
      ),
      bottomNavigationBar: PostDetailBottomMenuWidget(
        price: simpleProductPost.product.price,
      ),
    );
  }
}

class _ImagePager extends StatelessWidget {
  const _ImagePager({
    required this.pageController,
    required this.simpleProductPost,
  });

  final PageController pageController;
  final SimpleProductPost simpleProductPost;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.deviceWidth,
      child: Stack(
        children: [
          PageView(
            controller: pageController,
            children: simpleProductPost.product.imageUrls
                .map(
                  (imageUrl) => Hero(
                    tag: '${simpleProductPost.id}_$imageUrl',
                    child: CachedNetworkImage(
                      imageUrl: imageUrl,
                      fit: BoxFit.cover,
                    ),
                  ),
                )
                .toList(),
          ),
          if (simpleProductPost.product.imageUrls.length > 1)
            Align(
              alignment: const Alignment(0, 0.9),
              child: SmoothPageIndicator(
                controller: pageController,
                count: simpleProductPost.product.imageUrls.length,
                effect: const ExpandingDotsEffect(
                  dotWidth: 10,
                  dotHeight: 10,
                  dotColor: Colors.grey,
                  activeDotColor: Colors.white,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
