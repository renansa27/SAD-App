// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'donate_component.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DonateComponent _$DonateComponentFromJson(Map<String, dynamic> json) {
  return _DonateComponent.fromJson(json);
}

/// @nodoc
mixin _$DonateComponent {
  int? get userId => throw _privateConstructorUsedError;
  bool? get showCheckedPix => throw _privateConstructorUsedError;
  bool? get showCheckedBitcoin => throw _privateConstructorUsedError;
  bool? get showCheckedEthereum => throw _privateConstructorUsedError;
  bool? get showCheckedTether => throw _privateConstructorUsedError;

  /// Serializes this DonateComponent to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DonateComponent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DonateComponentCopyWith<DonateComponent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DonateComponentCopyWith<$Res> {
  factory $DonateComponentCopyWith(
          DonateComponent value, $Res Function(DonateComponent) then) =
      _$DonateComponentCopyWithImpl<$Res, DonateComponent>;
  @useResult
  $Res call(
      {int? userId,
      bool? showCheckedPix,
      bool? showCheckedBitcoin,
      bool? showCheckedEthereum,
      bool? showCheckedTether});
}

/// @nodoc
class _$DonateComponentCopyWithImpl<$Res, $Val extends DonateComponent>
    implements $DonateComponentCopyWith<$Res> {
  _$DonateComponentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DonateComponent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? showCheckedPix = freezed,
    Object? showCheckedBitcoin = freezed,
    Object? showCheckedEthereum = freezed,
    Object? showCheckedTether = freezed,
  }) {
    return _then(_value.copyWith(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      showCheckedPix: freezed == showCheckedPix
          ? _value.showCheckedPix
          : showCheckedPix // ignore: cast_nullable_to_non_nullable
              as bool?,
      showCheckedBitcoin: freezed == showCheckedBitcoin
          ? _value.showCheckedBitcoin
          : showCheckedBitcoin // ignore: cast_nullable_to_non_nullable
              as bool?,
      showCheckedEthereum: freezed == showCheckedEthereum
          ? _value.showCheckedEthereum
          : showCheckedEthereum // ignore: cast_nullable_to_non_nullable
              as bool?,
      showCheckedTether: freezed == showCheckedTether
          ? _value.showCheckedTether
          : showCheckedTether // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DonateComponentImplCopyWith<$Res>
    implements $DonateComponentCopyWith<$Res> {
  factory _$$DonateComponentImplCopyWith(_$DonateComponentImpl value,
          $Res Function(_$DonateComponentImpl) then) =
      __$$DonateComponentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? userId,
      bool? showCheckedPix,
      bool? showCheckedBitcoin,
      bool? showCheckedEthereum,
      bool? showCheckedTether});
}

/// @nodoc
class __$$DonateComponentImplCopyWithImpl<$Res>
    extends _$DonateComponentCopyWithImpl<$Res, _$DonateComponentImpl>
    implements _$$DonateComponentImplCopyWith<$Res> {
  __$$DonateComponentImplCopyWithImpl(
      _$DonateComponentImpl _value, $Res Function(_$DonateComponentImpl) _then)
      : super(_value, _then);

  /// Create a copy of DonateComponent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? showCheckedPix = freezed,
    Object? showCheckedBitcoin = freezed,
    Object? showCheckedEthereum = freezed,
    Object? showCheckedTether = freezed,
  }) {
    return _then(_$DonateComponentImpl(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      showCheckedPix: freezed == showCheckedPix
          ? _value.showCheckedPix
          : showCheckedPix // ignore: cast_nullable_to_non_nullable
              as bool?,
      showCheckedBitcoin: freezed == showCheckedBitcoin
          ? _value.showCheckedBitcoin
          : showCheckedBitcoin // ignore: cast_nullable_to_non_nullable
              as bool?,
      showCheckedEthereum: freezed == showCheckedEthereum
          ? _value.showCheckedEthereum
          : showCheckedEthereum // ignore: cast_nullable_to_non_nullable
              as bool?,
      showCheckedTether: freezed == showCheckedTether
          ? _value.showCheckedTether
          : showCheckedTether // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DonateComponentImpl implements _DonateComponent {
  const _$DonateComponentImpl(
      {this.userId,
      required this.showCheckedPix,
      required this.showCheckedBitcoin,
      required this.showCheckedEthereum,
      required this.showCheckedTether});

  factory _$DonateComponentImpl.fromJson(Map<String, dynamic> json) =>
      _$$DonateComponentImplFromJson(json);

  @override
  final int? userId;
  @override
  final bool? showCheckedPix;
  @override
  final bool? showCheckedBitcoin;
  @override
  final bool? showCheckedEthereum;
  @override
  final bool? showCheckedTether;

  @override
  String toString() {
    return 'DonateComponent(userId: $userId, showCheckedPix: $showCheckedPix, showCheckedBitcoin: $showCheckedBitcoin, showCheckedEthereum: $showCheckedEthereum, showCheckedTether: $showCheckedTether)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DonateComponentImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.showCheckedPix, showCheckedPix) ||
                other.showCheckedPix == showCheckedPix) &&
            (identical(other.showCheckedBitcoin, showCheckedBitcoin) ||
                other.showCheckedBitcoin == showCheckedBitcoin) &&
            (identical(other.showCheckedEthereum, showCheckedEthereum) ||
                other.showCheckedEthereum == showCheckedEthereum) &&
            (identical(other.showCheckedTether, showCheckedTether) ||
                other.showCheckedTether == showCheckedTether));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, userId, showCheckedPix,
      showCheckedBitcoin, showCheckedEthereum, showCheckedTether);

  /// Create a copy of DonateComponent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DonateComponentImplCopyWith<_$DonateComponentImpl> get copyWith =>
      __$$DonateComponentImplCopyWithImpl<_$DonateComponentImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DonateComponentImplToJson(
      this,
    );
  }
}

abstract class _DonateComponent implements DonateComponent {
  const factory _DonateComponent(
      {final int? userId,
      required final bool? showCheckedPix,
      required final bool? showCheckedBitcoin,
      required final bool? showCheckedEthereum,
      required final bool? showCheckedTether}) = _$DonateComponentImpl;

  factory _DonateComponent.fromJson(Map<String, dynamic> json) =
      _$DonateComponentImpl.fromJson;

  @override
  int? get userId;
  @override
  bool? get showCheckedPix;
  @override
  bool? get showCheckedBitcoin;
  @override
  bool? get showCheckedEthereum;
  @override
  bool? get showCheckedTether;

  /// Create a copy of DonateComponent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DonateComponentImplCopyWith<_$DonateComponentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
