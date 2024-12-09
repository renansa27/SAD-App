// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'donate_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DonateComponentImpl _$$DonateComponentImplFromJson(
        Map<String, dynamic> json) =>
    _$DonateComponentImpl(
      userId: (json['userId'] as num?)?.toInt(),
      showCheckedPix: json['showCheckedPix'] as bool?,
      showCheckedBitcoin: json['showCheckedBitcoin'] as bool?,
      showCheckedEthereum: json['showCheckedEthereum'] as bool?,
      showCheckedTether: json['showCheckedTether'] as bool?,
    );

Map<String, dynamic> _$$DonateComponentImplToJson(
        _$DonateComponentImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'showCheckedPix': instance.showCheckedPix,
      'showCheckedBitcoin': instance.showCheckedBitcoin,
      'showCheckedEthereum': instance.showCheckedEthereum,
      'showCheckedTether': instance.showCheckedTether,
    };
