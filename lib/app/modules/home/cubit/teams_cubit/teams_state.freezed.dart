// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'teams_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TeamsState {
  List<String>? get professionalIds => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  bool? get isLoading => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  /// Create a copy of TeamsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TeamsStateCopyWith<TeamsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeamsStateCopyWith<$Res> {
  factory $TeamsStateCopyWith(
          TeamsState value, $Res Function(TeamsState) then) =
      _$TeamsStateCopyWithImpl<$Res, TeamsState>;
  @useResult
  $Res call(
      {List<String>? professionalIds,
      String? error,
      bool? isLoading,
      String? name});
}

/// @nodoc
class _$TeamsStateCopyWithImpl<$Res, $Val extends TeamsState>
    implements $TeamsStateCopyWith<$Res> {
  _$TeamsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TeamsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? professionalIds = freezed,
    Object? error = freezed,
    Object? isLoading = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      professionalIds: freezed == professionalIds
          ? _value.professionalIds
          : professionalIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      isLoading: freezed == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TeamsStateImplCopyWith<$Res>
    implements $TeamsStateCopyWith<$Res> {
  factory _$$TeamsStateImplCopyWith(
          _$TeamsStateImpl value, $Res Function(_$TeamsStateImpl) then) =
      __$$TeamsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<String>? professionalIds,
      String? error,
      bool? isLoading,
      String? name});
}

/// @nodoc
class __$$TeamsStateImplCopyWithImpl<$Res>
    extends _$TeamsStateCopyWithImpl<$Res, _$TeamsStateImpl>
    implements _$$TeamsStateImplCopyWith<$Res> {
  __$$TeamsStateImplCopyWithImpl(
      _$TeamsStateImpl _value, $Res Function(_$TeamsStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of TeamsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? professionalIds = freezed,
    Object? error = freezed,
    Object? isLoading = freezed,
    Object? name = freezed,
  }) {
    return _then(_$TeamsStateImpl(
      professionalIds: freezed == professionalIds
          ? _value._professionalIds
          : professionalIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      isLoading: freezed == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$TeamsStateImpl implements _TeamsState {
  const _$TeamsStateImpl(
      {required final List<String>? professionalIds,
      required this.error,
      required this.isLoading,
      required this.name})
      : _professionalIds = professionalIds;

  final List<String>? _professionalIds;
  @override
  List<String>? get professionalIds {
    final value = _professionalIds;
    if (value == null) return null;
    if (_professionalIds is EqualUnmodifiableListView) return _professionalIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? error;
  @override
  final bool? isLoading;
  @override
  final String? name;

  @override
  String toString() {
    return 'TeamsState(professionalIds: $professionalIds, error: $error, isLoading: $isLoading, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TeamsStateImpl &&
            const DeepCollectionEquality()
                .equals(other._professionalIds, _professionalIds) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_professionalIds),
      error,
      isLoading,
      name);

  /// Create a copy of TeamsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TeamsStateImplCopyWith<_$TeamsStateImpl> get copyWith =>
      __$$TeamsStateImplCopyWithImpl<_$TeamsStateImpl>(this, _$identity);
}

abstract class _TeamsState implements TeamsState {
  const factory _TeamsState(
      {required final List<String>? professionalIds,
      required final String? error,
      required final bool? isLoading,
      required final String? name}) = _$TeamsStateImpl;

  @override
  List<String>? get professionalIds;
  @override
  String? get error;
  @override
  bool? get isLoading;
  @override
  String? get name;

  /// Create a copy of TeamsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TeamsStateImplCopyWith<_$TeamsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
