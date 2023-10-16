import 'package:flutter/material.dart';

class AppLocalizations {
  final Locale locale;

  AppLocalizations(this.locale);

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  Map<String, String> getStrings() {
    // Implement localization logic based on the current locale
    return localizedStrings[locale.languageCode]!;
  }
}

final Map<String, Map<String, String>> localizedStrings = {
  'en': {
    'hello': 'Hello',

  },
  'es': {
    'hello': 'Hola',

  },

};
