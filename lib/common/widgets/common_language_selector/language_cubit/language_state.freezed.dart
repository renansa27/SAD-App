// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'language_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LanguageState _$LanguageStateFromJson(Map<String, dynamic> json) {
  return _LanguageState.fromJson(json);
}

/// @nodoc
mixin _$LanguageState {
  @JsonKey(name: 'language', fromJson: languageFromJson, toJson: languageToJson)
  String? get currentLanguage => throw _privateConstructorUsedError;
  @JsonKey(
      name: 'languageList',
      fromJson: languageListFromJson,
      toJson: languageListToJson)
  List<String>? get languagesAvailable => throw _privateConstructorUsedError;

  /// Serializes this LanguageState to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LanguageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LanguageStateCopyWith<LanguageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LanguageStateCopyWith<$Res> {
  factory $LanguageStateCopyWith(
          LanguageState value, $Res Function(LanguageState) then) =
      _$LanguageStateCopyWithImpl<$Res, LanguageState>;
  @useResult
  $Res call(
      {@JsonKey(
          name: 'language', fromJson: languageFromJson, toJson: languageToJson)
      String? currentLanguage,
      @JsonKey(
          name: 'languageList',
          fromJson: languageListFromJson,
          toJson: languageListToJson)
      List<String>? languagesAvailable});
}

/// @nodoc
class _$LanguageStateCopyWithImpl<$Res, $Val extends LanguageState>
    implements $LanguageStateCopyWith<$Res> {
  _$LanguageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LanguageState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentLanguage = freezed,
    Object? languagesAvailable = freezed,
  }) {
    return _then(_value.copyWith(
      currentLanguage: freezed == currentLanguage
          ? _value.currentLanguage
          : currentLanguage // ignore: cast_nullable_to_non_nullable
              as String?,
      languagesAvailable: freezed == languagesAvailable
          ? _value.languagesAvailable
          : languagesAvailable // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LanguageStateImplCopyWith<$Res>
    implements $LanguageStateCopyWith<$Res> {
  factory _$$LanguageStateImplCopyWith(
          _$LanguageStateImpl value, $Res Function(_$LanguageStateImpl) then) =
      __$$LanguageStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(
          name: 'language', fromJson: languageFromJson, toJson: languageToJson)
      String? currentLanguage,
      @JsonKey(
          name: 'languageList',
          fromJson: languageListFromJson,
          toJson: languageListToJson)
      List<String>? languagesAvailable});
}

/// @nodoc
class __$$LanguageStateImplCopyWithImpl<$Res>
    extends _$LanguageStateCopyWithImpl<$Res, _$LanguageStateImpl>
    implements _$$LanguageStateImplCopyWith<$Res> {
  __$$LanguageStateImplCopyWithImpl(
      _$LanguageStateImpl _value, $Res Function(_$LanguageStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of LanguageState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentLanguage = freezed,
    Object? languagesAvailable = freezed,
  }) {
    return _then(_$LanguageStateImpl(
      currentLanguage: freezed == currentLanguage
          ? _value.currentLanguage
          : currentLanguage // ignore: cast_nullable_to_non_nullable
              as String?,
      languagesAvailable: freezed == languagesAvailable
          ? _value._languagesAvailable
          : languagesAvailable // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LanguageStateImpl implements _LanguageState {
  const _$LanguageStateImpl(
      {@JsonKey(
          name: 'language', fromJson: languageFromJson, toJson: languageToJson)
      required this.currentLanguage,
      @JsonKey(
          name: 'languageList',
          fromJson: languageListFromJson,
          toJson: languageListToJson)
      required final List<String>? languagesAvailable})
      : _languagesAvailable = languagesAvailable;

  factory _$LanguageStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$LanguageStateImplFromJson(json);

  @override
  @JsonKey(name: 'language', fromJson: languageFromJson, toJson: languageToJson)
  final String? currentLanguage;
  final List<String>? _languagesAvailable;
  @override
  @JsonKey(
      name: 'languageList',
      fromJson: languageListFromJson,
      toJson: languageListToJson)
  List<String>? get languagesAvailable {
    final value = _languagesAvailable;
    if (value == null) return null;
    if (_languagesAvailable is EqualUnmodifiableListView)
      return _languagesAvailable;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'LanguageState(currentLanguage: $currentLanguage, languagesAvailable: $languagesAvailable)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LanguageStateImpl &&
            (identical(other.currentLanguage, currentLanguage) ||
                other.currentLanguage == currentLanguage) &&
            const DeepCollectionEquality()
                .equals(other._languagesAvailable, _languagesAvailable));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, currentLanguage,
      const DeepCollectionEquality().hash(_languagesAvailable));

  /// Create a copy of LanguageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LanguageStateImplCopyWith<_$LanguageStateImpl> get copyWith =>
      __$$LanguageStateImplCopyWithImpl<_$LanguageStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LanguageStateImplToJson(
      this,
    );
  }
}

abstract class _LanguageState implements LanguageState {
  const factory _LanguageState(
      {@JsonKey(
          name: 'language', fromJson: languageFromJson, toJson: languageToJson)
      required final String? currentLanguage,
      @JsonKey(
          name: 'languageList',
          fromJson: languageListFromJson,
          toJson: languageListToJson)
      required final List<String>? languagesAvailable}) = _$LanguageStateImpl;

  factory _LanguageState.fromJson(Map<String, dynamic> json) =
      _$LanguageStateImpl.fromJson;

  @override
  @JsonKey(name: 'language', fromJson: languageFromJson, toJson: languageToJson)
  String? get currentLanguage;
  @override
  @JsonKey(
      name: 'languageList',
      fromJson: languageListFromJson,
      toJson: languageListToJson)
  List<String>? get languagesAvailable;

  /// Create a copy of LanguageState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LanguageStateImplCopyWith<_$LanguageStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
