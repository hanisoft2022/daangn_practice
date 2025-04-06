// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_post.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProductPost _$ProductPostFromJson(Map<String, dynamic> json) {
  return _ProductPost.fromJson(json);
}

/// @nodoc
mixin _$ProductPost {
  User get user => throw _privateConstructorUsedError;
  Product get product => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  Address get address => throw _privateConstructorUsedError;
  int get chatCount => throw _privateConstructorUsedError;
  int get likeCount => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;

  /// Serializes this ProductPost to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductPost
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductPostCopyWith<ProductPost> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductPostCopyWith<$Res> {
  factory $ProductPostCopyWith(
          ProductPost value, $Res Function(ProductPost) then) =
      _$ProductPostCopyWithImpl<$Res, ProductPost>;
  @useResult
  $Res call(
      {User user,
      Product product,
      String content,
      Address address,
      int chatCount,
      int likeCount,
      DateTime createdAt});

  $UserCopyWith<$Res> get user;
  $ProductCopyWith<$Res> get product;
  $AddressCopyWith<$Res> get address;
}

/// @nodoc
class _$ProductPostCopyWithImpl<$Res, $Val extends ProductPost>
    implements $ProductPostCopyWith<$Res> {
  _$ProductPostCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductPost
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? product = null,
    Object? content = null,
    Object? address = null,
    Object? chatCount = null,
    Object? likeCount = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address,
      chatCount: null == chatCount
          ? _value.chatCount
          : chatCount // ignore: cast_nullable_to_non_nullable
              as int,
      likeCount: null == likeCount
          ? _value.likeCount
          : likeCount // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }

  /// Create a copy of ProductPost
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  /// Create a copy of ProductPost
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductCopyWith<$Res> get product {
    return $ProductCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value) as $Val);
    });
  }

  /// Create a copy of ProductPost
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res> get address {
    return $AddressCopyWith<$Res>(_value.address, (value) {
      return _then(_value.copyWith(address: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProductPostImplCopyWith<$Res>
    implements $ProductPostCopyWith<$Res> {
  factory _$$ProductPostImplCopyWith(
          _$ProductPostImpl value, $Res Function(_$ProductPostImpl) then) =
      __$$ProductPostImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {User user,
      Product product,
      String content,
      Address address,
      int chatCount,
      int likeCount,
      DateTime createdAt});

  @override
  $UserCopyWith<$Res> get user;
  @override
  $ProductCopyWith<$Res> get product;
  @override
  $AddressCopyWith<$Res> get address;
}

/// @nodoc
class __$$ProductPostImplCopyWithImpl<$Res>
    extends _$ProductPostCopyWithImpl<$Res, _$ProductPostImpl>
    implements _$$ProductPostImplCopyWith<$Res> {
  __$$ProductPostImplCopyWithImpl(
      _$ProductPostImpl _value, $Res Function(_$ProductPostImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductPost
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? product = null,
    Object? content = null,
    Object? address = null,
    Object? chatCount = null,
    Object? likeCount = null,
    Object? createdAt = null,
  }) {
    return _then(_$ProductPostImpl(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address,
      chatCount: null == chatCount
          ? _value.chatCount
          : chatCount // ignore: cast_nullable_to_non_nullable
              as int,
      likeCount: null == likeCount
          ? _value.likeCount
          : likeCount // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductPostImpl implements _ProductPost {
  const _$ProductPostImpl(
      {required this.user,
      required this.product,
      required this.content,
      required this.address,
      required this.chatCount,
      required this.likeCount,
      required this.createdAt});

  factory _$ProductPostImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductPostImplFromJson(json);

  @override
  final User user;
  @override
  final Product product;
  @override
  final String content;
  @override
  final Address address;
  @override
  final int chatCount;
  @override
  final int likeCount;
  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'ProductPost(user: $user, product: $product, content: $content, address: $address, chatCount: $chatCount, likeCount: $likeCount, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductPostImpl &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.product, product) || other.product == product) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.chatCount, chatCount) ||
                other.chatCount == chatCount) &&
            (identical(other.likeCount, likeCount) ||
                other.likeCount == likeCount) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, user, product, content, address,
      chatCount, likeCount, createdAt);

  /// Create a copy of ProductPost
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductPostImplCopyWith<_$ProductPostImpl> get copyWith =>
      __$$ProductPostImplCopyWithImpl<_$ProductPostImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductPostImplToJson(
      this,
    );
  }
}

abstract class _ProductPost implements ProductPost {
  const factory _ProductPost(
      {required final User user,
      required final Product product,
      required final String content,
      required final Address address,
      required final int chatCount,
      required final int likeCount,
      required final DateTime createdAt}) = _$ProductPostImpl;

  factory _ProductPost.fromJson(Map<String, dynamic> json) =
      _$ProductPostImpl.fromJson;

  @override
  User get user;
  @override
  Product get product;
  @override
  String get content;
  @override
  Address get address;
  @override
  int get chatCount;
  @override
  int get likeCount;
  @override
  DateTime get createdAt;

  /// Create a copy of ProductPost
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductPostImplCopyWith<_$ProductPostImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
