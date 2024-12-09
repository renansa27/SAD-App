// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'postal_address_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PostalAddressModel _$PostalAddressModelFromJson(Map<String, dynamic> json) {
  return _PostalAddressModel.fromJson(json);
}

/// @nodoc
mixin _$PostalAddressModel {
  String? get label => throw _privateConstructorUsedError;
  String? get street => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  String? get postcode => throw _privateConstructorUsedError;
  String? get region => throw _privateConstructorUsedError;
  String? get country => throw _privateConstructorUsedError;

  /// Serializes this PostalAddressModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PostalAddressModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PostalAddressModelCopyWith<PostalAddressModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostalAddressModelCopyWith<$Res> {
  factory $PostalAddressModelCopyWith(
          PostalAddressModel value, $Res Function(PostalAddressModel) then) =
      _$PostalAddressModelCopyWithImpl<$Res, PostalAddressModel>;
  @useResult
  $Res call(
      {String? label,
      String? street,
      String? city,
      String? postcode,
      String? region,
      String? country});
}

/// @nodoc
class _$PostalAddressModelCopyWithImpl<$Res, $Val extends PostalAddressModel>
    implements $PostalAddressModelCopyWith<$Res> {
  _$PostalAddressModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PostalAddressModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = freezed,
    Object? street = freezed,
    Object? city = freezed,
    Object? postcode = freezed,
    Object? region = freezed,
    Object? country = freezed,
  }) {
    return _then(_value.copyWith(
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      street: freezed == street
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      postcode: freezed == postcode
          ? _value.postcode
          : postcode // ignore: cast_nullable_to_non_nullable
              as String?,
      region: freezed == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PostalAddressModelImplCopyWith<$Res>
    implements $PostalAddressModelCopyWith<$Res> {
  factory _$$PostalAddressModelImplCopyWith(_$PostalAddressModelImpl value,
          $Res Function(_$PostalAddressModelImpl) then) =
      __$$PostalAddressModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? label,
      String? street,
      String? city,
      String? postcode,
      String? region,
      String? country});
}

/// @nodoc
class __$$PostalAddressModelImplCopyWithImpl<$Res>
    extends _$PostalAddressModelCopyWithImpl<$Res, _$PostalAddressModelImpl>
    implements _$$PostalAddressModelImplCopyWith<$Res> {
  __$$PostalAddressModelImplCopyWithImpl(_$PostalAddressModelImpl _value,
      $Res Function(_$PostalAddressModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of PostalAddressModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = freezed,
    Object? street = freezed,
    Object? city = freezed,
    Object? postcode = freezed,
    Object? region = freezed,
    Object? country = freezed,
  }) {
    return _then(_$PostalAddressModelImpl(
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      street: freezed == street
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      postcode: freezed == postcode
          ? _value.postcode
          : postcode // ignore: cast_nullable_to_non_nullable
              as String?,
      region: freezed == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PostalAddressModelImpl
    with DiagnosticableTreeMixin
    implements _PostalAddressModel {
  const _$PostalAddressModelImpl(
      {required this.label,
      required this.street,
      required this.city,
      required this.postcode,
      required this.region,
      required this.country});

  factory _$PostalAddressModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostalAddressModelImplFromJson(json);

  @override
  final String? label;
  @override
  final String? street;
  @override
  final String? city;
  @override
  final String? postcode;
  @override
  final String? region;
  @override
  final String? country;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PostalAddressModel(label: $label, street: $street, city: $city, postcode: $postcode, region: $region, country: $country)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PostalAddressModel'))
      ..add(DiagnosticsProperty('label', label))
      ..add(DiagnosticsProperty('street', street))
      ..add(DiagnosticsProperty('city', city))
      ..add(DiagnosticsProperty('postcode', postcode))
      ..add(DiagnosticsProperty('region', region))
      ..add(DiagnosticsProperty('country', country));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostalAddressModelImpl &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.street, street) || other.street == street) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.postcode, postcode) ||
                other.postcode == postcode) &&
            (identical(other.region, region) || other.region == region) &&
            (identical(other.country, country) || other.country == country));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, label, street, city, postcode, region, country);

  /// Create a copy of PostalAddressModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PostalAddressModelImplCopyWith<_$PostalAddressModelImpl> get copyWith =>
      __$$PostalAddressModelImplCopyWithImpl<_$PostalAddressModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PostalAddressModelImplToJson(
      this,
    );
  }
}

abstract class _PostalAddressModel implements PostalAddressModel {
  const factory _PostalAddressModel(
      {required final String? label,
      required final String? street,
      required final String? city,
      required final String? postcode,
      required final String? region,
      required final String? country}) = _$PostalAddressModelImpl;

  factory _PostalAddressModel.fromJson(Map<String, dynamic> json) =
      _$PostalAddressModelImpl.fromJson;

  @override
  String? get label;
  @override
  String? get street;
  @override
  String? get city;
  @override
  String? get postcode;
  @override
  String? get region;
  @override
  String? get country;

  /// Create a copy of PostalAddressModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PostalAddressModelImplCopyWith<_$PostalAddressModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
