import 'package:flutter/material.dart';
import 'package:bui_bloc/l10n/app_localizations.dart';

export 'package:bui_bloc/l10n/app_localizations.dart';

extension AppLocalizationsX on BuildContext {
  AppLocalizations get l10n => AppLocalizations.of(this)!;
}
