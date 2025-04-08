import 'package:fast_app_base/entity/post/simple_product_post.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_post.freezed.dart';

@freezed
class ProductPost with _$ProductPost {
  const factory ProductPost({
    required SimpleProductPost simpleProductPost,
    required String content,
  }) = _ProductPost;
}
