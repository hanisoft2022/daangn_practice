import 'package:fast_app_base/entity/product/product.dart';
import 'package:fast_app_base/entity/user/address.dart';
import 'package:fast_app_base/entity/user/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'simple_product_post.freezed.dart';

@freezed
class SimpleProductPost with _$SimpleProductPost {
  const factory SimpleProductPost({
    required final User user,
    required final Product product,
    required final String content,
    required final Address address,
    required final int chatCount,
    required final int likeCount,
    required final DateTime createdAt,
  }) = _SimpleProductPost;
}
