// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'professional_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProfessionalModelImpl _$$ProfessionalModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ProfessionalModelImpl(
      id: json['id'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      email: json['email'] as String?,
      specialtyRef: json['specialtyRef'] == null
          ? null
          : SpecialtiesModel.fromJson(
              json['specialtyRef'] as Map<String, dynamic>),
      name: json['name'] as String?,
      teamRef: json['teamRef'] == null
          ? null
          : TeamsModel.fromJson(json['teamRef'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ProfessionalModelImplToJson(
        _$ProfessionalModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt?.toIso8601String(),
      'email': instance.email,
      'specialtyRef': instance.specialtyRef,
      'name': instance.name,
      'teamRef': instance.teamRef,
    };
