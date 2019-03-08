/*
 * Copyright (c) 2019. Giorgio Modoni. All rights reserved.
 * Use of this source code is governed by a GPL-3.0 license that can be.
 *
 * Giorgio Modoni <modogio@gmail.com>
 */

import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:irrigo/src/routes.dart';
import 'package:irrigo/src/theme.dart';
import 'package:irrigo/app_config.dart';
import 'package:irrigo/src/internationalization/app_localization_delegate.dart';

/// main app init,
/// change only if you know what are you doing.... so do not change it !!
class App extends StatelessWidget {
  const App({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final config = AppConfig.of(context);

    return _buildMaterialApp(context, config);
  }

  Widget _buildMaterialApp(BuildContext context, AppConfig config) {
    return MaterialApp(
      localizationsDelegates: [
        const AppLocalizationsDelegate(),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: config.locale,
      localeResolutionCallback: localeResolutionCallback,
      title: config.appName,
      theme: appTheme(),
      routes: appRoutes,
      onUnknownRoute: onUnknownRoute,
    );
  }
}
