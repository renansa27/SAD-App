// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'teams_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TeamsModel _$TeamsModelFromJson(Map<String, dynamic> json) {
  return _TeamsModel.fromJson(json);
}

/// @nodoc
mixin _$TeamsModel {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  List<ProfessionalModel>? get professionals =>
      throw _privateConstructorUsedError;

  /// Serializes this TeamsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TeamsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TeamsModelCopyWith<TeamsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeamsModelCopyWith<$Res> {
  factory $TeamsModelCopyWith(
          TeamsModel value, $Res Function(TeamsModel) then) =
      _$TeamsModelCopyWithImpl<$Res, TeamsModel>;
  @useResult
  $Res call({String? id, String? name, List<ProfessionalModel>? professionals});
}

/// @nodoc
class _$TeamsModelCopyWithImpl<$Res, $Val extends TeamsModel>
    implements $TeamsModelCopyWith<$Res> {
  _$TeamsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TeamsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? professionals = freezed,
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
      professionals: freezed == professionals
          ? _value.professionals
          : professionals // ignore: cast_nullable_to_non_nullable
              as List<ProfessionalModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TeamsModelImplCopyWith<$Res>
    implements $TeamsModelCopyWith<$Res> {
  factory _$$TeamsModelImplCopyWith(
          _$TeamsModelImpl value, $Res Function(_$TeamsModelImpl) then) =
      __$$TeamsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? name, List<ProfessionalModel>? professionals});
}

/// @nodoc
class __$$TeamsModelImplCopyWithImpl<$Res>
    extends _$TeamsModelCopyWithImpl<$Res, _$TeamsModelImpl>
    implements _$$TeamsModelImplCopyWith<$Res> {
  __$$TeamsModelImplCopyWithImpl(
      _$TeamsModelImpl _value, $Res Function(_$TeamsModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of TeamsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? professionals = freezed,
  }) {
    return _then(_$TeamsModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      professionals: freezed == professionals
          ? _value._professionals
          : professionals // ignore: cast_nullable_to_non_nullable
              as List<ProfessionalModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TeamsModelImpl with DiagnosticableTreeMixin implements _TeamsModel {
  const _$TeamsModelImpl(
      {required this.id,
      required this.name,
      required final List<ProfessionalModel>? professionals})
      : _professionals = professionals;

  factory _$TeamsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TeamsModelImplFromJson(json);

  @override
  final String? id;
  @override
  final String? name;
  final List<ProfessionalModel>? _professionals;
  @override
  List<ProfessionalModel>? get professionals {
    final value = _professionals;
    if (value == null) return null;
    if (_professionals is EqualUnmodifiableListView) return _professionals;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TeamsModel(id: $id, name: $name, professionals: $professionals)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TeamsModel'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('professionals', professionals));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TeamsModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._professionals, _professionals));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name,
      const DeepCollectionEquality().hash(_professionals));

  /// Create a copy of TeamsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TeamsModelImplCopyWith<_$TeamsModelImpl> get copyWith =>
      __$$TeamsModelImplCopyWithImpl<_$TeamsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TeamsModelImplToJson(
      this,
    );
  }
}

abstract class _TeamsModel implements TeamsModel {
  const factory _TeamsModel(
          {required final String? id,
          required final String? name,
          required final List<ProfessionalModel>? professionals}) =
      _$TeamsModelImpl;

  factory _TeamsModel.fromJson(Map<String, dynamic> json) =
      _$TeamsModelImpl.fromJson;

  @override
  String? get id;
  @override
  String? get name;
  @override
  List<ProfessionalModel>? get professionals;

  /// Create a copy of TeamsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TeamsModelImplCopyWith<_$TeamsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
