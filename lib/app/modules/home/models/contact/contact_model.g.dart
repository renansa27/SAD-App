// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ContactModelImpl _$$ContactModelImplFromJson(Map<String, dynamic> json) =>
    _$ContactModelImpl(
      userId: (json['userId'] as num?)?.toInt(),
      displayName: json['displayName'] as String?,
      givenName: json['givenName'] as String?,
      middleName: json['middleName'] as String?,
      prefix: json['prefix'] as String?,
      suffix: json['suffix'] as String?,
      familyName: json['familyName'] as String?,
      company: json['company'] as String?,
      jobTitle: json['jobTitle'] as String?,
      emails: (json['emails'] as List<dynamic>?)
          ?.map((e) => Email.fromJson(e as Map<String, dynamic>))
          .toList(),
      phones: (json['phones'] as List<dynamic>?)
          ?.map((e) => Phone.fromJson(e as Map<String, dynamic>))
          .toList(),
      postalAddresses: (json['postalAddresses'] as List<dynamic>?)
          ?.map((e) => PostalAddressModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ContactModelImplToJson(_$ContactModelImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'displayName': instance.displayName,
      'givenName': instance.givenName,
      'middleName': instance.middleName,
      'prefix': instance.prefix,
      'suffix': instance.suffix,
      'familyName': instance.familyName,
      'company': instance.company,
      'jobTitle': instance.jobTitle,
      'emails': instance.emails,
      'phones': instance.phones,
      'postalAddresses': instance.postalAddresses,
    };
