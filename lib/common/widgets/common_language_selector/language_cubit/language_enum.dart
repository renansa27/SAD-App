class LanguageEnum {
  static const String portugues = 'pt';
  static const String ingles = 'en';
  static const String espanhol = 'es';
  static const String frances = 'fr';
  static const String alemao = 'de';

  static String valueOf(String languageId) {
    switch (languageId) {
      case 'pt':
        return LanguageEnum.portugues;
      case 'es':
        return LanguageEnum.espanhol;
      case 'fr':
        return LanguageEnum.frances;
      case 'de':
        return LanguageEnum.alemao;
      default:
        return LanguageEnum.ingles;
    }
  }
}
