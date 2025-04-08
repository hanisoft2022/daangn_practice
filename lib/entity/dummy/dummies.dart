import 'package:fast_app_base/common/dart/extension/num_duration_extension.dart';
import 'package:fast_app_base/entity/post/simple_product_post.dart';
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
  title: '아이폰15프로',
  price: 700000,
  status: ProductStatus.normal,
  imageUrls: [
    getDummyProfileUrl(123),
    getDummyProfileUrl(124),
    getDummyProfileUrl(125),
  ],
);

final product2 = Product(
  user: user2,
  title: '시계',
  price: 5000,
  status: ProductStatus.normal,
  imageUrls: [
    getDummyProfileUrl(12),
    getDummyProfileUrl(108),
    getDummyProfileUrl(972),
  ],
);

final product3 = Product(
  user: user3,
  title: '인테리어 소품',
  price: 240000,
  status: ProductStatus.normal,
  imageUrls: [
    getDummyProfileUrl(455),
    getDummyProfileUrl(789),
    getDummyProfileUrl(78),
  ],
);

final post1 = SimpleProductPost(
  user: product1.user,
  product: product1,
  content: '글 내용입니다.',
  address: Address('서울시 특별한 주소', '플러터구'),
  chatCount: 3,
  likeCount: 2,
  createdAt: DateTime.now().subtract(30.minutes),
);

final post2 = SimpleProductPost(
  user: product2.user,
  product: product2,
  content: '글 내용입니다.',
  address: Address('서울시 특별한 주소', '다트동'),
  chatCount: 30,
  likeCount: 12,
  createdAt: DateTime.now().subtract(5.minutes),
);

final post3 = SimpleProductPost(
  user: product3.user,
  product: product3,
  content: '글 내용입니다.',
  address: Address('서울시 특별한 주소', '앱동'),
  chatCount: 3,
  likeCount: 19,
  createdAt: DateTime.now().subtract(2.days),
);

final List<SimpleProductPost> posts = [post1, post2, post3, post1, post2, post3, post1, post2, post3];
