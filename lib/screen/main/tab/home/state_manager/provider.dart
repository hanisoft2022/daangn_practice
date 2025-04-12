import 'package:fast_app_base/entity/dummy/dummies.dart';
import 'package:fast_app_base/entity/post/simple_product_post.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PostNotifier extends StateNotifier<List<SimpleProductPost>> {
  PostNotifier()
      : super([
          simpleProductPost1,
          simpleProductPost2,
          simpleProductPost3,
          simpleProductPost1,
          simpleProductPost2,
          simpleProductPost3,
          simpleProductPost1,
          simpleProductPost2,
          simpleProductPost3,
        ]);

  addPost(SimpleProductPost simpleProductPost) {
    state = [...state, simpleProductPost];
  }
}

final postProvider = StateNotifierProvider<PostNotifier, List<SimpleProductPost>>((ref) => PostNotifier());
