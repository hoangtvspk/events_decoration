import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';

part 'language_bloc.freezed.dart';
part 'language_event.dart';
part 'language_state.dart';

class LanguageBloc extends Bloc<LanguageEvent, LanguageState> {
  final SharedPreferences _prefs;
  static const String _languageKey = 'language_code';

  LanguageBloc(this._prefs)
      : super(LanguageState(
            languageCode: WidgetsBinding
                .instance.platformDispatcher.locale.languageCode)) {
    on<LanguageEvent>((event, emit) async {
      await event.map(
        changeLanguage: (e) => _onChangeLanguage(e.languageCode, emit),
        loadLanguage: (_) => _onLoadLanguage(emit),
      );
    });
  }

  Future<void> _onChangeLanguage(
      String languageCode, Emitter<LanguageState> emit) async {
    if (emit.isDone) return;
    emit(state.copyWith(isLoading: true));
    try {
      await _prefs.setString(_languageKey, languageCode);
      if (!emit.isDone) {
        emit(state.copyWith(
          languageCode: languageCode,
          isLoading: false,
        ));
      }
    } catch (e) {
      if (!emit.isDone) {
        emit(state.copyWith(
          error: e.toString(),
          isLoading: false,
        ));
      }
    }
  }

  Future<void> _onLoadLanguage(Emitter<LanguageState> emit) async {
    if (emit.isDone) return;
    emit(state.copyWith(isLoading: true));
    try {
      // Get saved language from preferences
      final savedLanguage = _prefs.getString(_languageKey);

      // If no saved language, use device locale
      if (savedLanguage == null) {
        final deviceLocale = WidgetsBinding.instance.platformDispatcher.locale;
        final languageCode = deviceLocale.languageCode;

        // Save the device locale to preferences
        await _prefs.setString(_languageKey, languageCode);
        if (!emit.isDone) {
          emit(state.copyWith(
            languageCode: languageCode,
            isLoading: false,
          ));
        }
        return;
      }

      // Use saved language
      if (!emit.isDone) {
        emit(state.copyWith(
          languageCode: savedLanguage,
          isLoading: false,
        ));
      }
    } catch (e) {
      if (!emit.isDone) {
        emit(state.copyWith(
          error: e.toString(),
          isLoading: false,
        ));
      }
    }
  }
}
