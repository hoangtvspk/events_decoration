part of 'language_bloc.dart';

@freezed
class LanguageEvent with _$LanguageEvent {
  const factory LanguageEvent.changeLanguage(String languageCode) =
      _ChangeLanguage;
  const factory LanguageEvent.loadLanguage() = _LoadLanguage;
}
