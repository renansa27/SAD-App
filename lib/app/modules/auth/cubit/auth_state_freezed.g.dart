// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_state_freezed.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthState _$AuthStateFromJson(Map<String, dynamic> json) => AuthState(
      isLoading: json['isLoading'] as bool?,
      successfullyReset: json['successfullyReset'] as bool?,
      user: userFromJson(json['user'] as User?),
      email: json['email'] as String?,
      error: json['error'] as String?,
      isEmailVerified: json['isEmailVerified'] as bool?,
      oobCode: json['oobCode'] as String?,
    );

Map<String, dynamic> _$AuthStateToJson(AuthState instance) => <String, dynamic>{
      'isLoading': instance.isLoading,
      'successfullyReset': instance.successfullyReset,
      'user': userToJson(instance.user),
      'email': instance.email,
      'error': instance.error,
      'isEmailVerified': instance.isEmailVerified,
      'oobCode': instance.oobCode,
    };
