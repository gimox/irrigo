/*
 * Copyright (c) 2019. Giorgio Modoni. All rights reserved.
 * Use of this source code is governed by a GPL-3.0 license that can be.
 *
 * Giorgio Modoni <modogio@gmail.com>
 */

import 'package:flutter/material.dart';
import 'package:irrigo/src/internationalization/app_localization.dart';

class AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const AppLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => ['en', 'it'].contains(locale.languageCode);

  @override
  Future<AppLocalizations> load(Locale locale) async {

    /*
    // re-enable if localeResolutionCallback is not working
    // flutter 0.11 localeResolutionCallback fix, change it if fixed
    if (locale == null || isSupported(locale) == false) {
      debugPrint('*app_locale_delegate* fallback to locale ');

      locale = Locale('en', 'US'); // fallback to default language
    }
    */

    AppLocalizations localizations = new AppLocalizations(locale);
    await localizations.load();

    return localizations;
  }

  @override
  bool shouldReload(AppLocalizationsDelegate old) => false;
}


Locale localeResolutionCallback(Locale locale, Iterable<Locale> supportedLocales) {
  if (locale == null) {
    debugPrint("*language locale is null, use ${supportedLocales.first}");
    return supportedLocales.first;
  }

  for (Locale supportedLocale in supportedLocales) {
    if (supportedLocale.languageCode == locale.languageCode ||
        supportedLocale.countryCode == locale.countryCode) {
      debugPrint("*language ok $supportedLocale");
      return supportedLocale;
    }
  }

  debugPrint("*language to fallback ${supportedLocales.first}");
  return supportedLocales.first;
}
