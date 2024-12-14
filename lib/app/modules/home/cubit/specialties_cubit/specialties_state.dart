import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sad_app/app/modules/home/models/specialties/specialties_model.dart';

part 'specialties_state.freezed.dart';
// optional: Since our ContactModel class is serializable, we must add this line.
// But if ContactModel was not serializable, we could skip it.
//part 'contact_state.g.dart';

@freezed
class SpecialtiesState with _$SpecialtiesState {
  const factory SpecialtiesState({
    required List<SpecialtiesModel>? specialtiesList,
    required List<String>? professionalIds,
    required String? error,
    required bool? isLoading,
    required String? name,
  }) = _SpecialtiesState;

  factory SpecialtiesState.init() {
    return SpecialtiesState(
      specialtiesList: null,
      professionalIds: null,
      error: null,
      isLoading: false,
      name: null,
    );
  }
}
