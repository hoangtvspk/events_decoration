part of 'language_bloc.dart';

@freezed
class LanguageState with _$LanguageState {
  const factory LanguageState({
    required String languageCode,
    @Default(false) bool isLoading,
    String? error,
  }) = _LanguageState;
}
