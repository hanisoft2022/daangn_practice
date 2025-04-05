// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductImpl _$$ProductImplFromJson(Map<String, dynamic> json) =>
    _$ProductImpl(
      user: User.fromJson(json['user'] as Map<String, dynamic>),
      name: json['name'] as String,
      price: (json['price'] as num).toInt(),
      description: json['description'] as String,
      status: $enumDecode(_$ProductStatusEnumMap, json['status']),
      imageUrls:
          (json['imageUrls'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$ProductImplToJson(_$ProductImpl instance) =>
    <String, dynamic>{
      'user': instance.user,
      'name': instance.name,
      'price': instance.price,
      'description': instance.description,
      'status': _$ProductStatusEnumMap[instance.status]!,
      'imageUrls': instance.imageUrls,
    };

const _$ProductStatusEnumMap = {
  ProductStatus.normal: 'normal',
  ProductStatus.booked: 'booked',
  ProductStatus.sold: 'sold',
};
