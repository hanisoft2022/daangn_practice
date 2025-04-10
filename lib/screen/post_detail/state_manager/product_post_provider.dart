import 'package:fast_app_base/data/network/dummy/daangn_api.dart';
import 'package:fast_app_base/entity/post/product_post.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final productPostProvider = FutureProvider.family.autoDispose<ProductPost, int>(
  (ref, id) async => await DaangnApi().getPost(id),
);
