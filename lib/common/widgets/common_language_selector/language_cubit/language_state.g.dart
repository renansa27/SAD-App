// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'language_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LanguageStateImpl _$$LanguageStateImplFromJson(Map<String, dynamic> json) =>
    _$LanguageStateImpl(
      currentLanguage: languageFromJson(json['language'] as String?),
      languagesAvailable:
          languageListFromJson(json['languageList'] as List<String>?),
    );

Map<String, dynamic> _$$LanguageStateImplToJson(_$LanguageStateImpl instance) =>
    <String, dynamic>{
      'language': languageToJson(instance.currentLanguage),
      'languageList': languageListToJson(instance.languagesAvailable),
    };
