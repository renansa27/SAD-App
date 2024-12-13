// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'specialties_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SpecialtiesModel _$SpecialtiesModelFromJson(Map<String, dynamic> json) {
  return _SpecialtiesModel.fromJson(json);
}

/// @nodoc
mixin _$SpecialtiesModel {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  /// Serializes this SpecialtiesModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SpecialtiesModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SpecialtiesModelCopyWith<SpecialtiesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpecialtiesModelCopyWith<$Res> {
  factory $SpecialtiesModelCopyWith(
          SpecialtiesModel value, $Res Function(SpecialtiesModel) then) =
      _$SpecialtiesModelCopyWithImpl<$Res, SpecialtiesModel>;
  @useResult
  $Res call({String? id, String? name});
}

/// @nodoc
class _$SpecialtiesModelCopyWithImpl<$Res, $Val extends SpecialtiesModel>
    implements $SpecialtiesModelCopyWith<$Res> {
  _$SpecialtiesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SpecialtiesModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SpecialtiesModelImplCopyWith<$Res>
    implements $SpecialtiesModelCopyWith<$Res> {
  factory _$$SpecialtiesModelImplCopyWith(_$SpecialtiesModelImpl value,
          $Res Function(_$SpecialtiesModelImpl) then) =
      __$$SpecialtiesModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? name});
}

/// @nodoc
class __$$SpecialtiesModelImplCopyWithImpl<$Res>
    extends _$SpecialtiesModelCopyWithImpl<$Res, _$SpecialtiesModelImpl>
    implements _$$SpecialtiesModelImplCopyWith<$Res> {
  __$$SpecialtiesModelImplCopyWithImpl(_$SpecialtiesModelImpl _value,
      $Res Function(_$SpecialtiesModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of SpecialtiesModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_$SpecialtiesModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SpecialtiesModelImpl
    with DiagnosticableTreeMixin
    implements _SpecialtiesModel {
  const _$SpecialtiesModelImpl({required this.id, required this.name});

  factory _$SpecialtiesModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SpecialtiesModelImplFromJson(json);

  @override
  final String? id;
  @override
  final String? name;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SpecialtiesModel(id: $id, name: $name)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SpecialtiesModel'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpecialtiesModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  /// Create a copy of SpecialtiesModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SpecialtiesModelImplCopyWith<_$SpecialtiesModelImpl> get copyWith =>
      __$$SpecialtiesModelImplCopyWithImpl<_$SpecialtiesModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SpecialtiesModelImplToJson(
      this,
    );
  }
}

abstract class _SpecialtiesModel implements SpecialtiesModel {
  const factory _SpecialtiesModel(
      {required final String? id,
      required final String? name}) = _$SpecialtiesModelImpl;

  factory _SpecialtiesModel.fromJson(Map<String, dynamic> json) =
      _$SpecialtiesModelImpl.fromJson;

  @override
  String? get id;
  @override
  String? get name;

  /// Create a copy of SpecialtiesModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SpecialtiesModelImplCopyWith<_$SpecialtiesModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
