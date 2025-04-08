import 'package:fast_app_base/entity/product/product_status.dart';
import 'package:fast_app_base/entity/user/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product.freezed.dart';

@freezed
class Product with _$Product {
  const factory Product({
    required final User user,
    required final String title,
    required final int price,
    required final ProductStatus status,
    required final List<String> imageUrls,
  }) = _Product;
}
