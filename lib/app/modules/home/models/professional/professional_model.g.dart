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
      specialtyRef: _documentReferenceFromJson(json['specialtyRef'] as Object),
      name: json['name'] as String?,
      teamRef: _documentReferenceFromJson(json['teamRef'] as Object),
    );

Map<String, dynamic> _$$ProfessionalModelImplToJson(
        _$ProfessionalModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt?.toIso8601String(),
      'email': instance.email,
      'specialtyRef': _documentReferenceToJson(instance.specialtyRef),
      'name': instance.name,
      'teamRef': _documentReferenceToJson(instance.teamRef),
    };
