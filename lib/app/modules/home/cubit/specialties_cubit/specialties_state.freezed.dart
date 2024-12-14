// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'specialties_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SpecialtiesState {
  List<SpecialtiesModel>? get specialtiesList =>
      throw _privateConstructorUsedError;
  List<String>? get professionalIds => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  bool? get isLoading => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  /// Create a copy of SpecialtiesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SpecialtiesStateCopyWith<SpecialtiesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpecialtiesStateCopyWith<$Res> {
  factory $SpecialtiesStateCopyWith(
          SpecialtiesState value, $Res Function(SpecialtiesState) then) =
      _$SpecialtiesStateCopyWithImpl<$Res, SpecialtiesState>;
  @useResult
  $Res call(
      {List<SpecialtiesModel>? specialtiesList,
      List<String>? professionalIds,
      String? error,
      bool? isLoading,
      String? name});
}

/// @nodoc
class _$SpecialtiesStateCopyWithImpl<$Res, $Val extends SpecialtiesState>
    implements $SpecialtiesStateCopyWith<$Res> {
  _$SpecialtiesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SpecialtiesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? specialtiesList = freezed,
    Object? professionalIds = freezed,
    Object? error = freezed,
    Object? isLoading = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      specialtiesList: freezed == specialtiesList
          ? _value.specialtiesList
          : specialtiesList // ignore: cast_nullable_to_non_nullable
              as List<SpecialtiesModel>?,
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
abstract class _$$SpecialtiesStateImplCopyWith<$Res>
    implements $SpecialtiesStateCopyWith<$Res> {
  factory _$$SpecialtiesStateImplCopyWith(_$SpecialtiesStateImpl value,
          $Res Function(_$SpecialtiesStateImpl) then) =
      __$$SpecialtiesStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<SpecialtiesModel>? specialtiesList,
      List<String>? professionalIds,
      String? error,
      bool? isLoading,
      String? name});
}

/// @nodoc
class __$$SpecialtiesStateImplCopyWithImpl<$Res>
    extends _$SpecialtiesStateCopyWithImpl<$Res, _$SpecialtiesStateImpl>
    implements _$$SpecialtiesStateImplCopyWith<$Res> {
  __$$SpecialtiesStateImplCopyWithImpl(_$SpecialtiesStateImpl _value,
      $Res Function(_$SpecialtiesStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SpecialtiesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? specialtiesList = freezed,
    Object? professionalIds = freezed,
    Object? error = freezed,
    Object? isLoading = freezed,
    Object? name = freezed,
  }) {
    return _then(_$SpecialtiesStateImpl(
      specialtiesList: freezed == specialtiesList
          ? _value._specialtiesList
          : specialtiesList // ignore: cast_nullable_to_non_nullable
              as List<SpecialtiesModel>?,
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

class _$SpecialtiesStateImpl implements _SpecialtiesState {
  const _$SpecialtiesStateImpl(
      {required final List<SpecialtiesModel>? specialtiesList,
      required final List<String>? professionalIds,
      required this.error,
      required this.isLoading,
      required this.name})
      : _specialtiesList = specialtiesList,
        _professionalIds = professionalIds;

  final List<SpecialtiesModel>? _specialtiesList;
  @override
  List<SpecialtiesModel>? get specialtiesList {
    final value = _specialtiesList;
    if (value == null) return null;
    if (_specialtiesList is EqualUnmodifiableListView) return _specialtiesList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

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
    return 'SpecialtiesState(specialtiesList: $specialtiesList, professionalIds: $professionalIds, error: $error, isLoading: $isLoading, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpecialtiesStateImpl &&
            const DeepCollectionEquality()
                .equals(other._specialtiesList, _specialtiesList) &&
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
      const DeepCollectionEquality().hash(_specialtiesList),
      const DeepCollectionEquality().hash(_professionalIds),
      error,
      isLoading,
      name);

  /// Create a copy of SpecialtiesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SpecialtiesStateImplCopyWith<_$SpecialtiesStateImpl> get copyWith =>
      __$$SpecialtiesStateImplCopyWithImpl<_$SpecialtiesStateImpl>(
          this, _$identity);
}

abstract class _SpecialtiesState implements SpecialtiesState {
  const factory _SpecialtiesState(
      {required final List<SpecialtiesModel>? specialtiesList,
      required final List<String>? professionalIds,
      required final String? error,
      required final bool? isLoading,
      required final String? name}) = _$SpecialtiesStateImpl;

  @override
  List<SpecialtiesModel>? get specialtiesList;
  @override
  List<String>? get professionalIds;
  @override
  String? get error;
  @override
  bool? get isLoading;
  @override
  String? get name;

  /// Create a copy of SpecialtiesState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SpecialtiesStateImplCopyWith<_$SpecialtiesStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
