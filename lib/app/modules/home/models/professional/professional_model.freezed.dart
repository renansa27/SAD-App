// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'professional_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProfessionalModel _$ProfessionalModelFromJson(Map<String, dynamic> json) {
  return _ProfessionalModel.fromJson(json);
}

/// @nodoc
mixin _$ProfessionalModel {
  String? get id => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  SpecialtiesModel? get specialtyRef => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  TeamsModel? get teamRef => throw _privateConstructorUsedError;

  /// Serializes this ProfessionalModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProfessionalModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProfessionalModelCopyWith<ProfessionalModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfessionalModelCopyWith<$Res> {
  factory $ProfessionalModelCopyWith(
          ProfessionalModel value, $Res Function(ProfessionalModel) then) =
      _$ProfessionalModelCopyWithImpl<$Res, ProfessionalModel>;
  @useResult
  $Res call(
      {String? id,
      DateTime? createdAt,
      String? email,
      SpecialtiesModel? specialtyRef,
      String? name,
      TeamsModel? teamRef});

  $SpecialtiesModelCopyWith<$Res>? get specialtyRef;
  $TeamsModelCopyWith<$Res>? get teamRef;
}

/// @nodoc
class _$ProfessionalModelCopyWithImpl<$Res, $Val extends ProfessionalModel>
    implements $ProfessionalModelCopyWith<$Res> {
  _$ProfessionalModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProfessionalModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? createdAt = freezed,
    Object? email = freezed,
    Object? specialtyRef = freezed,
    Object? name = freezed,
    Object? teamRef = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      specialtyRef: freezed == specialtyRef
          ? _value.specialtyRef
          : specialtyRef // ignore: cast_nullable_to_non_nullable
              as SpecialtiesModel?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      teamRef: freezed == teamRef
          ? _value.teamRef
          : teamRef // ignore: cast_nullable_to_non_nullable
              as TeamsModel?,
    ) as $Val);
  }

  /// Create a copy of ProfessionalModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SpecialtiesModelCopyWith<$Res>? get specialtyRef {
    if (_value.specialtyRef == null) {
      return null;
    }

    return $SpecialtiesModelCopyWith<$Res>(_value.specialtyRef!, (value) {
      return _then(_value.copyWith(specialtyRef: value) as $Val);
    });
  }

  /// Create a copy of ProfessionalModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TeamsModelCopyWith<$Res>? get teamRef {
    if (_value.teamRef == null) {
      return null;
    }

    return $TeamsModelCopyWith<$Res>(_value.teamRef!, (value) {
      return _then(_value.copyWith(teamRef: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProfessionalModelImplCopyWith<$Res>
    implements $ProfessionalModelCopyWith<$Res> {
  factory _$$ProfessionalModelImplCopyWith(_$ProfessionalModelImpl value,
          $Res Function(_$ProfessionalModelImpl) then) =
      __$$ProfessionalModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      DateTime? createdAt,
      String? email,
      SpecialtiesModel? specialtyRef,
      String? name,
      TeamsModel? teamRef});

  @override
  $SpecialtiesModelCopyWith<$Res>? get specialtyRef;
  @override
  $TeamsModelCopyWith<$Res>? get teamRef;
}

/// @nodoc
class __$$ProfessionalModelImplCopyWithImpl<$Res>
    extends _$ProfessionalModelCopyWithImpl<$Res, _$ProfessionalModelImpl>
    implements _$$ProfessionalModelImplCopyWith<$Res> {
  __$$ProfessionalModelImplCopyWithImpl(_$ProfessionalModelImpl _value,
      $Res Function(_$ProfessionalModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfessionalModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? createdAt = freezed,
    Object? email = freezed,
    Object? specialtyRef = freezed,
    Object? name = freezed,
    Object? teamRef = freezed,
  }) {
    return _then(_$ProfessionalModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      specialtyRef: freezed == specialtyRef
          ? _value.specialtyRef
          : specialtyRef // ignore: cast_nullable_to_non_nullable
              as SpecialtiesModel?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      teamRef: freezed == teamRef
          ? _value.teamRef
          : teamRef // ignore: cast_nullable_to_non_nullable
              as TeamsModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProfessionalModelImpl
    with DiagnosticableTreeMixin
    implements _ProfessionalModel {
  const _$ProfessionalModelImpl(
      {required this.id,
      required this.createdAt,
      required this.email,
      required this.specialtyRef,
      required this.name,
      required this.teamRef});

  factory _$ProfessionalModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProfessionalModelImplFromJson(json);

  @override
  final String? id;
  @override
  final DateTime? createdAt;
  @override
  final String? email;
  @override
  final SpecialtiesModel? specialtyRef;
  @override
  final String? name;
  @override
  final TeamsModel? teamRef;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProfessionalModel(id: $id, createdAt: $createdAt, email: $email, specialtyRef: $specialtyRef, name: $name, teamRef: $teamRef)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProfessionalModel'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('createdAt', createdAt))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('specialtyRef', specialtyRef))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('teamRef', teamRef));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfessionalModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.specialtyRef, specialtyRef) ||
                other.specialtyRef == specialtyRef) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.teamRef, teamRef) || other.teamRef == teamRef));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, createdAt, email, specialtyRef, name, teamRef);

  /// Create a copy of ProfessionalModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfessionalModelImplCopyWith<_$ProfessionalModelImpl> get copyWith =>
      __$$ProfessionalModelImplCopyWithImpl<_$ProfessionalModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProfessionalModelImplToJson(
      this,
    );
  }
}

abstract class _ProfessionalModel implements ProfessionalModel {
  const factory _ProfessionalModel(
      {required final String? id,
      required final DateTime? createdAt,
      required final String? email,
      required final SpecialtiesModel? specialtyRef,
      required final String? name,
      required final TeamsModel? teamRef}) = _$ProfessionalModelImpl;

  factory _ProfessionalModel.fromJson(Map<String, dynamic> json) =
      _$ProfessionalModelImpl.fromJson;

  @override
  String? get id;
  @override
  DateTime? get createdAt;
  @override
  String? get email;
  @override
  SpecialtiesModel? get specialtyRef;
  @override
  String? get name;
  @override
  TeamsModel? get teamRef;

  /// Create a copy of ProfessionalModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProfessionalModelImplCopyWith<_$ProfessionalModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
