import 'package:sad_app/common/widgets/common_language_selector/language_cubit/language_state.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LanguageCubit extends Cubit<LanguageState> {
  LanguageCubit() : super(LanguageState.init());

  setCurrentLanguageAndAvailables(
    String currentLanguage,
    List<String> supportedLocales,
  ) async {
    supportedLocales.remove(currentLanguage);
    emit(state.copyWith(
      currentLanguage: currentLanguage,
      languagesAvailable: supportedLocales,
    ));
  }

  changeCurrentLanguageAndAvailables(
    String currentLanguage,
    List<String> supportedLocales,
    BuildContext context,
  ) async {
    supportedLocales.remove(currentLanguage);
    await context.setLocale(Locale(currentLanguage));
    emit(state.copyWith(
      currentLanguage: currentLanguage,
      languagesAvailable: supportedLocales,
    ));
  }

  refreshLanguage() {
    emit(state.copyWith(currentLanguage: state.currentLanguage));
  }
}
