// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_post.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductPostImpl _$$ProductPostImplFromJson(Map<String, dynamic> json) =>
    _$ProductPostImpl(
      user: User.fromJson(json['user'] as Map<String, dynamic>),
      product: Product.fromJson(json['product'] as Map<String, dynamic>),
      content: json['content'] as String,
      address: json['address'] as String,
    );

Map<String, dynamic> _$$ProductPostImplToJson(_$ProductPostImpl instance) =>
    <String, dynamic>{
      'user': instance.user,
      'product': instance.product,
      'content': instance.content,
      'address': instance.address,
    };
