// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'professional_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProfessionalState {
  List<ContactModel>? get contactList => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  bool? get isLoading => throw _privateConstructorUsedError;
  bool? get showCheckIcon => throw _privateConstructorUsedError;

  /// Create a copy of ProfessionalState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProfessionalStateCopyWith<ProfessionalState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfessionalStateCopyWith<$Res> {
  factory $ProfessionalStateCopyWith(
          ProfessionalState value, $Res Function(ProfessionalState) then) =
      _$ProfessionalStateCopyWithImpl<$Res, ProfessionalState>;
  @useResult
  $Res call(
      {List<ContactModel>? contactList,
      String? error,
      bool? isLoading,
      bool? showCheckIcon});
}

/// @nodoc
class _$ProfessionalStateCopyWithImpl<$Res, $Val extends ProfessionalState>
    implements $ProfessionalStateCopyWith<$Res> {
  _$ProfessionalStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProfessionalState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contactList = freezed,
    Object? error = freezed,
    Object? isLoading = freezed,
    Object? showCheckIcon = freezed,
  }) {
    return _then(_value.copyWith(
      contactList: freezed == contactList
          ? _value.contactList
          : contactList // ignore: cast_nullable_to_non_nullable
              as List<ContactModel>?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      isLoading: freezed == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool?,
      showCheckIcon: freezed == showCheckIcon
          ? _value.showCheckIcon
          : showCheckIcon // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProfessionalStateImplCopyWith<$Res>
    implements $ProfessionalStateCopyWith<$Res> {
  factory _$$ProfessionalStateImplCopyWith(_$ProfessionalStateImpl value,
          $Res Function(_$ProfessionalStateImpl) then) =
      __$$ProfessionalStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<ContactModel>? contactList,
      String? error,
      bool? isLoading,
      bool? showCheckIcon});
}

/// @nodoc
class __$$ProfessionalStateImplCopyWithImpl<$Res>
    extends _$ProfessionalStateCopyWithImpl<$Res, _$ProfessionalStateImpl>
    implements _$$ProfessionalStateImplCopyWith<$Res> {
  __$$ProfessionalStateImplCopyWithImpl(_$ProfessionalStateImpl _value,
      $Res Function(_$ProfessionalStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfessionalState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contactList = freezed,
    Object? error = freezed,
    Object? isLoading = freezed,
    Object? showCheckIcon = freezed,
  }) {
    return _then(_$ProfessionalStateImpl(
      contactList: freezed == contactList
          ? _value._contactList
          : contactList // ignore: cast_nullable_to_non_nullable
              as List<ContactModel>?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      isLoading: freezed == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool?,
      showCheckIcon: freezed == showCheckIcon
          ? _value.showCheckIcon
          : showCheckIcon // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$ProfessionalStateImpl implements _ProfessionalState {
  const _$ProfessionalStateImpl(
      {required final List<ContactModel>? contactList,
      required this.error,
      required this.isLoading,
      required this.showCheckIcon})
      : _contactList = contactList;

  final List<ContactModel>? _contactList;
  @override
  List<ContactModel>? get contactList {
    final value = _contactList;
    if (value == null) return null;
    if (_contactList is EqualUnmodifiableListView) return _contactList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? error;
  @override
  final bool? isLoading;
  @override
  final bool? showCheckIcon;

  @override
  String toString() {
    return 'ProfessionalState(contactList: $contactList, error: $error, isLoading: $isLoading, showCheckIcon: $showCheckIcon)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfessionalStateImpl &&
            const DeepCollectionEquality()
                .equals(other._contactList, _contactList) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.showCheckIcon, showCheckIcon) ||
                other.showCheckIcon == showCheckIcon));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_contactList),
      error,
      isLoading,
      showCheckIcon);

  /// Create a copy of ProfessionalState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfessionalStateImplCopyWith<_$ProfessionalStateImpl> get copyWith =>
      __$$ProfessionalStateImplCopyWithImpl<_$ProfessionalStateImpl>(
          this, _$identity);
}

abstract class _ProfessionalState implements ProfessionalState {
  const factory _ProfessionalState(
      {required final List<ContactModel>? contactList,
      required final String? error,
      required final bool? isLoading,
      required final bool? showCheckIcon}) = _$ProfessionalStateImpl;

  @override
  List<ContactModel>? get contactList;
  @override
  String? get error;
  @override
  bool? get isLoading;
  @override
  bool? get showCheckIcon;

  /// Create a copy of ProfessionalState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProfessionalStateImplCopyWith<_$ProfessionalStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
