import 'package:fast_app_base/common/dart/extension/num_duration_extension.dart';
import 'package:fast_app_base/entity/post/product_post.dart';
import 'package:fast_app_base/entity/product/product.dart';
import 'package:fast_app_base/entity/product/product_status.dart';
import 'package:fast_app_base/entity/user/address.dart';
import 'package:fast_app_base/entity/user/user.dart';

String getDummyProfileUrl(int id) => 'http://picsum.photos/id/$id/200/200';

final user1 = User(
  id: 1,
  nickname: '홍길동',
  temperature: 36.5,
  profileUrl: getDummyProfileUrl(1),
);

final user2 = User(
  id: 3,
  nickname: '바다',
  temperature: 37.5,
  profileUrl: getDummyProfileUrl(2),
);

final user3 = User(
  id: 3,
  nickname: '우앵',
  temperature: 12,
  profileUrl: getDummyProfileUrl(3),
);

final product1 = Product(
  user: user1,
  name: '아이폰15프로',
  price: 700000,
  description: '아이폰15프로' '깨끗하게 잘 쓰던 물건이에요' '찔러보기 하지 마세요',
  status: ProductStatus.normal,
  imageUrls: [
    getDummyProfileUrl(123),
    getDummyProfileUrl(124),
    getDummyProfileUrl(125),
  ],
);

final product2 = Product(
  user: user2,
  name: '시계',
  price: 5000,
  description: '옛날 시계' '정상작동합니다.' '택배비 별도',
  status: ProductStatus.normal,
  imageUrls: [
    getDummyProfileUrl(12),
    getDummyProfileUrl(108),
    getDummyProfileUrl(972),
  ],
);

final product3 = Product(
  user: user3,
  name: '인테리어 소품',
  price: 240000,
  description: '인테리어 소품용으로 좋아요' '프랑스에서 샀어요' '많은 관심 부탁드려요 :) ',
  status: ProductStatus.normal,
  imageUrls: [
    getDummyProfileUrl(455),
    getDummyProfileUrl(789),
    getDummyProfileUrl(78),
  ],
);

final post1 = ProductPost(
  user: product1.user,
  product: product1,
  content: '글 내용입니다.',
  address: Address('서울시 특별한 주소', '플러터구'),
  chatCount: 3,
  likeCount: 2,
  createdAt: DateTime.now().subtract(30.minutes),
);

final post2 = ProductPost(
  user: product2.user,
  product: product2,
  content: '글 내용입니다.',
  address: Address('서울시 특별한 주소', '다트동'),
  chatCount: 30,
  likeCount: 12,
  createdAt: DateTime.now().subtract(5.minutes),
);

final post3 = ProductPost(
  user: product3.user,
  product: product3,
  content: '글 내용입니다.',
  address: Address('서울시 특별한 주소', '앱동'),
  chatCount: 3,
  likeCount: 19,
  createdAt: DateTime.now().subtract(2.days),
);

final List<ProductPost> posts = [post1, post2, post3, post1, post2, post3, post1, post2, post3];
