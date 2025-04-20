import 'package:fast_app_base/common/dart/extension/ref_extension.dart';
import 'package:fast_app_base/data/network/dummy/daangn_api.dart';
import 'package:fast_app_base/entity/post/product_post.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get/utils.dart';

final productPostProvider = FutureProvider.family.autoDispose<ProductPost, int>(
  (ref, id) async {
    ref.cacheFor(10.seconds);
    return await DaangnApi().getPost(id);
  },
);
