// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patient_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PatientModelImpl _$$PatientModelImplFromJson(Map<String, dynamic> json) =>
    _$PatientModelImpl(
      id: json['id'] as String?,
      email: json['email'] as String?,
      inactivationReason: json['inactivationReason'] as String?,
      isActive: json['isActive'] as bool?,
      name: json['name'] as String?,
      teamId: json['teamId'] == null
          ? null
          : TeamsModel.fromJson(json['teamId'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PatientModelImplToJson(_$PatientModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'inactivationReason': instance.inactivationReason,
      'isActive': instance.isActive,
      'name': instance.name,
      'teamId': instance.teamId,
    };
