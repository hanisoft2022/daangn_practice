import 'package:fast_app_base/entity/product/product.dart';
import 'package:fast_app_base/entity/user/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_post.freezed.dart';
part 'product_post.g.dart';

@freezed
class ProductPost with _$ProductPost {
  const factory ProductPost({
    required final User user,
    required final Product product,
    required final String content,
    required final String address,
    required final int chatCount,
    required final int likeCount,
    required final DateTime createdAt,
  }) = _ProductPost;

  factory ProductPost.fromJson(Map<String, dynamic> json) => _$ProductPostFromJson(json);
}
