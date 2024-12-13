import 'package:sad_app/app/modules/home/models/contact/contact_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'professional_state.freezed.dart';
// optional: Since our ContactModel class is serializable, we must add this line.
// But if ContactModel was not serializable, we could skip it.
//part 'contact_state.g.dart';

@freezed
class ProfessionalState with _$ProfessionalState {
  const factory ProfessionalState({
    required List<ContactModel>? contactList,
    required String? error,
    required bool? isLoading,
    required bool? showCheckIcon,
  }) = _ProfessionalState;

  factory ProfessionalState.init() {
    return const ProfessionalState(
      contactList: null,
      error: null,
      isLoading: false,
      showCheckIcon: false,
    );
  }
}
