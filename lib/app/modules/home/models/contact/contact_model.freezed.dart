// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contact_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ContactModel _$ContactModelFromJson(Map<String, dynamic> json) {
  return _ContactModel.fromJson(json);
}

/// @nodoc
mixin _$ContactModel {
  int? get userId => throw _privateConstructorUsedError;
  String? get displayName => throw _privateConstructorUsedError;
  String? get givenName => throw _privateConstructorUsedError;
  String? get middleName => throw _privateConstructorUsedError;
  String? get prefix => throw _privateConstructorUsedError;
  String? get suffix => throw _privateConstructorUsedError;
  String? get familyName => throw _privateConstructorUsedError;
  String? get company => throw _privateConstructorUsedError;
  String? get jobTitle => throw _privateConstructorUsedError;
  List<Email>? get emails => throw _privateConstructorUsedError;
  List<Phone>? get phones => throw _privateConstructorUsedError;
  List<PostalAddressModel>? get postalAddresses =>
      throw _privateConstructorUsedError;

  /// Serializes this ContactModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ContactModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ContactModelCopyWith<ContactModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactModelCopyWith<$Res> {
  factory $ContactModelCopyWith(
          ContactModel value, $Res Function(ContactModel) then) =
      _$ContactModelCopyWithImpl<$Res, ContactModel>;
  @useResult
  $Res call(
      {int? userId,
      String? displayName,
      String? givenName,
      String? middleName,
      String? prefix,
      String? suffix,
      String? familyName,
      String? company,
      String? jobTitle,
      List<Email>? emails,
      List<Phone>? phones,
      List<PostalAddressModel>? postalAddresses});
}

/// @nodoc
class _$ContactModelCopyWithImpl<$Res, $Val extends ContactModel>
    implements $ContactModelCopyWith<$Res> {
  _$ContactModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ContactModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? displayName = freezed,
    Object? givenName = freezed,
    Object? middleName = freezed,
    Object? prefix = freezed,
    Object? suffix = freezed,
    Object? familyName = freezed,
    Object? company = freezed,
    Object? jobTitle = freezed,
    Object? emails = freezed,
    Object? phones = freezed,
    Object? postalAddresses = freezed,
  }) {
    return _then(_value.copyWith(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      displayName: freezed == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      givenName: freezed == givenName
          ? _value.givenName
          : givenName // ignore: cast_nullable_to_non_nullable
              as String?,
      middleName: freezed == middleName
          ? _value.middleName
          : middleName // ignore: cast_nullable_to_non_nullable
              as String?,
      prefix: freezed == prefix
          ? _value.prefix
          : prefix // ignore: cast_nullable_to_non_nullable
              as String?,
      suffix: freezed == suffix
          ? _value.suffix
          : suffix // ignore: cast_nullable_to_non_nullable
              as String?,
      familyName: freezed == familyName
          ? _value.familyName
          : familyName // ignore: cast_nullable_to_non_nullable
              as String?,
      company: freezed == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as String?,
      jobTitle: freezed == jobTitle
          ? _value.jobTitle
          : jobTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      emails: freezed == emails
          ? _value.emails
          : emails // ignore: cast_nullable_to_non_nullable
              as List<Email>?,
      phones: freezed == phones
          ? _value.phones
          : phones // ignore: cast_nullable_to_non_nullable
              as List<Phone>?,
      postalAddresses: freezed == postalAddresses
          ? _value.postalAddresses
          : postalAddresses // ignore: cast_nullable_to_non_nullable
              as List<PostalAddressModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ContactModelImplCopyWith<$Res>
    implements $ContactModelCopyWith<$Res> {
  factory _$$ContactModelImplCopyWith(
          _$ContactModelImpl value, $Res Function(_$ContactModelImpl) then) =
      __$$ContactModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? userId,
      String? displayName,
      String? givenName,
      String? middleName,
      String? prefix,
      String? suffix,
      String? familyName,
      String? company,
      String? jobTitle,
      List<Email>? emails,
      List<Phone>? phones,
      List<PostalAddressModel>? postalAddresses});
}

/// @nodoc
class __$$ContactModelImplCopyWithImpl<$Res>
    extends _$ContactModelCopyWithImpl<$Res, _$ContactModelImpl>
    implements _$$ContactModelImplCopyWith<$Res> {
  __$$ContactModelImplCopyWithImpl(
      _$ContactModelImpl _value, $Res Function(_$ContactModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ContactModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? displayName = freezed,
    Object? givenName = freezed,
    Object? middleName = freezed,
    Object? prefix = freezed,
    Object? suffix = freezed,
    Object? familyName = freezed,
    Object? company = freezed,
    Object? jobTitle = freezed,
    Object? emails = freezed,
    Object? phones = freezed,
    Object? postalAddresses = freezed,
  }) {
    return _then(_$ContactModelImpl(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      displayName: freezed == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      givenName: freezed == givenName
          ? _value.givenName
          : givenName // ignore: cast_nullable_to_non_nullable
              as String?,
      middleName: freezed == middleName
          ? _value.middleName
          : middleName // ignore: cast_nullable_to_non_nullable
              as String?,
      prefix: freezed == prefix
          ? _value.prefix
          : prefix // ignore: cast_nullable_to_non_nullable
              as String?,
      suffix: freezed == suffix
          ? _value.suffix
          : suffix // ignore: cast_nullable_to_non_nullable
              as String?,
      familyName: freezed == familyName
          ? _value.familyName
          : familyName // ignore: cast_nullable_to_non_nullable
              as String?,
      company: freezed == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as String?,
      jobTitle: freezed == jobTitle
          ? _value.jobTitle
          : jobTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      emails: freezed == emails
          ? _value._emails
          : emails // ignore: cast_nullable_to_non_nullable
              as List<Email>?,
      phones: freezed == phones
          ? _value._phones
          : phones // ignore: cast_nullable_to_non_nullable
              as List<Phone>?,
      postalAddresses: freezed == postalAddresses
          ? _value._postalAddresses
          : postalAddresses // ignore: cast_nullable_to_non_nullable
              as List<PostalAddressModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ContactModelImpl with DiagnosticableTreeMixin implements _ContactModel {
  const _$ContactModelImpl(
      {this.userId,
      required this.displayName,
      required this.givenName,
      required this.middleName,
      required this.prefix,
      required this.suffix,
      required this.familyName,
      required this.company,
      required this.jobTitle,
      required final List<Email>? emails,
      required final List<Phone>? phones,
      required final List<PostalAddressModel>? postalAddresses})
      : _emails = emails,
        _phones = phones,
        _postalAddresses = postalAddresses;

  factory _$ContactModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContactModelImplFromJson(json);

  @override
  final int? userId;
  @override
  final String? displayName;
  @override
  final String? givenName;
  @override
  final String? middleName;
  @override
  final String? prefix;
  @override
  final String? suffix;
  @override
  final String? familyName;
  @override
  final String? company;
  @override
  final String? jobTitle;
  final List<Email>? _emails;
  @override
  List<Email>? get emails {
    final value = _emails;
    if (value == null) return null;
    if (_emails is EqualUnmodifiableListView) return _emails;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Phone>? _phones;
  @override
  List<Phone>? get phones {
    final value = _phones;
    if (value == null) return null;
    if (_phones is EqualUnmodifiableListView) return _phones;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<PostalAddressModel>? _postalAddresses;
  @override
  List<PostalAddressModel>? get postalAddresses {
    final value = _postalAddresses;
    if (value == null) return null;
    if (_postalAddresses is EqualUnmodifiableListView) return _postalAddresses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ContactModel(userId: $userId, displayName: $displayName, givenName: $givenName, middleName: $middleName, prefix: $prefix, suffix: $suffix, familyName: $familyName, company: $company, jobTitle: $jobTitle, emails: $emails, phones: $phones, postalAddresses: $postalAddresses)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ContactModel'))
      ..add(DiagnosticsProperty('userId', userId))
      ..add(DiagnosticsProperty('displayName', displayName))
      ..add(DiagnosticsProperty('givenName', givenName))
      ..add(DiagnosticsProperty('middleName', middleName))
      ..add(DiagnosticsProperty('prefix', prefix))
      ..add(DiagnosticsProperty('suffix', suffix))
      ..add(DiagnosticsProperty('familyName', familyName))
      ..add(DiagnosticsProperty('company', company))
      ..add(DiagnosticsProperty('jobTitle', jobTitle))
      ..add(DiagnosticsProperty('emails', emails))
      ..add(DiagnosticsProperty('phones', phones))
      ..add(DiagnosticsProperty('postalAddresses', postalAddresses));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContactModelImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.givenName, givenName) ||
                other.givenName == givenName) &&
            (identical(other.middleName, middleName) ||
                other.middleName == middleName) &&
            (identical(other.prefix, prefix) || other.prefix == prefix) &&
            (identical(other.suffix, suffix) || other.suffix == suffix) &&
            (identical(other.familyName, familyName) ||
                other.familyName == familyName) &&
            (identical(other.company, company) || other.company == company) &&
            (identical(other.jobTitle, jobTitle) ||
                other.jobTitle == jobTitle) &&
            const DeepCollectionEquality().equals(other._emails, _emails) &&
            const DeepCollectionEquality().equals(other._phones, _phones) &&
            const DeepCollectionEquality()
                .equals(other._postalAddresses, _postalAddresses));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      userId,
      displayName,
      givenName,
      middleName,
      prefix,
      suffix,
      familyName,
      company,
      jobTitle,
      const DeepCollectionEquality().hash(_emails),
      const DeepCollectionEquality().hash(_phones),
      const DeepCollectionEquality().hash(_postalAddresses));

  /// Create a copy of ContactModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ContactModelImplCopyWith<_$ContactModelImpl> get copyWith =>
      __$$ContactModelImplCopyWithImpl<_$ContactModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ContactModelImplToJson(
      this,
    );
  }
}

abstract class _ContactModel implements ContactModel {
  const factory _ContactModel(
          {final int? userId,
          required final String? displayName,
          required final String? givenName,
          required final String? middleName,
          required final String? prefix,
          required final String? suffix,
          required final String? familyName,
          required final String? company,
          required final String? jobTitle,
          required final List<Email>? emails,
          required final List<Phone>? phones,
          required final List<PostalAddressModel>? postalAddresses}) =
      _$ContactModelImpl;

  factory _ContactModel.fromJson(Map<String, dynamic> json) =
      _$ContactModelImpl.fromJson;

  @override
  int? get userId;
  @override
  String? get displayName;
  @override
  String? get givenName;
  @override
  String? get middleName;
  @override
  String? get prefix;
  @override
  String? get suffix;
  @override
  String? get familyName;
  @override
  String? get company;
  @override
  String? get jobTitle;
  @override
  List<Email>? get emails;
  @override
  List<Phone>? get phones;
  @override
  List<PostalAddressModel>? get postalAddresses;

  /// Create a copy of ContactModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ContactModelImplCopyWith<_$ContactModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
