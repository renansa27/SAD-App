// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'teams_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TeamsModelImpl _$$TeamsModelImplFromJson(Map<String, dynamic> json) =>
    _$TeamsModelImpl(
      id: json['id'] as String?,
      name: json['name'] as String?,
      professionals: (json['professionals'] as List<dynamic>?)
          ?.map((e) => ProfessionalModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$TeamsModelImplToJson(_$TeamsModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'professionals': instance.professionals,
    };
