// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_state_freezed.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthState {
  bool? get isLoading => throw _privateConstructorUsedError;
  bool? get successfullyReset => throw _privateConstructorUsedError;
  @JsonKey(name: 'user', fromJson: userFromJson, toJson: userToJson)
  User? get user => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  bool? get isEmailVerified => throw _privateConstructorUsedError;
  String? get oobCode => throw _privateConstructorUsedError;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
  @useResult
  $Res call(
      {bool? isLoading,
      bool? successfullyReset,
      @JsonKey(name: 'user', fromJson: userFromJson, toJson: userToJson)
      User? user,
      String? email,
      String? error,
      bool? isEmailVerified,
      String? oobCode});
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = freezed,
    Object? successfullyReset = freezed,
    Object? user = freezed,
    Object? email = freezed,
    Object? error = freezed,
    Object? isEmailVerified = freezed,
    Object? oobCode = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: freezed == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool?,
      successfullyReset: freezed == successfullyReset
          ? _value.successfullyReset
          : successfullyReset // ignore: cast_nullable_to_non_nullable
              as bool?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      isEmailVerified: freezed == isEmailVerified
          ? _value.isEmailVerified
          : isEmailVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
      oobCode: freezed == oobCode
          ? _value.oobCode
          : oobCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthStateImplCopyWith<$Res>
    implements $AuthStateCopyWith<$Res> {
  factory _$$AuthStateImplCopyWith(
          _$AuthStateImpl value, $Res Function(_$AuthStateImpl) then) =
      __$$AuthStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool? isLoading,
      bool? successfullyReset,
      @JsonKey(name: 'user', fromJson: userFromJson, toJson: userToJson)
      User? user,
      String? email,
      String? error,
      bool? isEmailVerified,
      String? oobCode});
}

/// @nodoc
class __$$AuthStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthStateImpl>
    implements _$$AuthStateImplCopyWith<$Res> {
  __$$AuthStateImplCopyWithImpl(
      _$AuthStateImpl _value, $Res Function(_$AuthStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = freezed,
    Object? successfullyReset = freezed,
    Object? user = freezed,
    Object? email = freezed,
    Object? error = freezed,
    Object? isEmailVerified = freezed,
    Object? oobCode = freezed,
  }) {
    return _then(_$AuthStateImpl(
      isLoading: freezed == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool?,
      successfullyReset: freezed == successfullyReset
          ? _value.successfullyReset
          : successfullyReset // ignore: cast_nullable_to_non_nullable
              as bool?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      isEmailVerified: freezed == isEmailVerified
          ? _value.isEmailVerified
          : isEmailVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
      oobCode: freezed == oobCode
          ? _value.oobCode
          : oobCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$AuthStateImpl with DiagnosticableTreeMixin implements _AuthState {
  const _$AuthStateImpl(
      {required this.isLoading,
      required this.successfullyReset,
      @JsonKey(name: 'user', fromJson: userFromJson, toJson: userToJson)
      required this.user,
      required this.email,
      required this.error,
      required this.isEmailVerified,
      required this.oobCode});

  @override
  final bool? isLoading;
  @override
  final bool? successfullyReset;
  @override
  @JsonKey(name: 'user', fromJson: userFromJson, toJson: userToJson)
  final User? user;
  @override
  final String? email;
  @override
  final String? error;
  @override
  final bool? isEmailVerified;
  @override
  final String? oobCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthState(isLoading: $isLoading, successfullyReset: $successfullyReset, user: $user, email: $email, error: $error, isEmailVerified: $isEmailVerified, oobCode: $oobCode)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthState'))
      ..add(DiagnosticsProperty('isLoading', isLoading))
      ..add(DiagnosticsProperty('successfullyReset', successfullyReset))
      ..add(DiagnosticsProperty('user', user))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('error', error))
      ..add(DiagnosticsProperty('isEmailVerified', isEmailVerified))
      ..add(DiagnosticsProperty('oobCode', oobCode));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.successfullyReset, successfullyReset) ||
                other.successfullyReset == successfullyReset) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.isEmailVerified, isEmailVerified) ||
                other.isEmailVerified == isEmailVerified) &&
            (identical(other.oobCode, oobCode) || other.oobCode == oobCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, successfullyReset,
      user, email, error, isEmailVerified, oobCode);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthStateImplCopyWith<_$AuthStateImpl> get copyWith =>
      __$$AuthStateImplCopyWithImpl<_$AuthStateImpl>(this, _$identity);
}

abstract class _AuthState implements AuthState {
  const factory _AuthState(
      {required final bool? isLoading,
      required final bool? successfullyReset,
      @JsonKey(name: 'user', fromJson: userFromJson, toJson: userToJson)
      required final User? user,
      required final String? email,
      required final String? error,
      required final bool? isEmailVerified,
      required final String? oobCode}) = _$AuthStateImpl;

  @override
  bool? get isLoading;
  @override
  bool? get successfullyReset;
  @override
  @JsonKey(name: 'user', fromJson: userFromJson, toJson: userToJson)
  User? get user;
  @override
  String? get email;
  @override
  String? get error;
  @override
  bool? get isEmailVerified;
  @override
  String? get oobCode;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthStateImplCopyWith<_$AuthStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
