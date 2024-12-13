import 'package:freezed_annotation/freezed_annotation.dart';

part 'teams_state.freezed.dart';
// optional: Since our ContactModel class is serializable, we must add this line.
// But if ContactModel was not serializable, we could skip it.
//part 'contact_state.g.dart';

@freezed
class TeamsState with _$TeamsState {
  const factory TeamsState({
    required List<String>? professionalIds,
    required String? error,
    required bool? isLoading,
    required String? name,
  }) = _TeamsState;

  factory TeamsState.init() {
    return TeamsState(
      professionalIds: null,
      error: null,
      isLoading: false,
      name: null,
    );
  }
}
