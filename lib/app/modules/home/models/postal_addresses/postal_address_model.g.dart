// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'postal_address_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PostalAddressModelImpl _$$PostalAddressModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PostalAddressModelImpl(
      label: json['label'] as String?,
      street: json['street'] as String?,
      city: json['city'] as String?,
      postcode: json['postcode'] as String?,
      region: json['region'] as String?,
      country: json['country'] as String?,
    );

Map<String, dynamic> _$$PostalAddressModelImplToJson(
        _$PostalAddressModelImpl instance) =>
    <String, dynamic>{
      'label': instance.label,
      'street': instance.street,
      'city': instance.city,
      'postcode': instance.postcode,
      'region': instance.region,
      'country': instance.country,
    };
