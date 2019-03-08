/*
 * Copyright (c) 2019. Giorgio Modoni. All rights reserved.
 * Use of this source code is governed by a GPL-3.0 license that can be.
 *
 * Giorgio Modoni <modogio@gmail.com>
 */

import 'package:flutter/material.dart';

ThemeData appTheme() {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
    accentColor: Colors.orange,
    primaryColor: customPrimary,
    /*
    buttonColor: kShrinePink100,
    scaffoldBackgroundColor: kShrineBackgroundWhite,
    cardColor: kShrineBackgroundWhite,
    textSelectionColor: kShrinePink100,
    errorColor: kShrineErrorRed,
    buttonTheme: ButtonThemeData(textTheme: ButtonTextTheme.accent),
    primaryIconTheme: base.iconTheme.copyWith(color: kShrineBrown900),
    inputDecorationTheme: InputDecorationTheme(border: CutCornersBorder()),
    textTheme: _buildShrineTextTheme(base.textTheme),
    primaryTextTheme: _buildShrineTextTheme(base.primaryTextTheme),
    accentTextTheme: _buildShrineTextTheme(base.accentTextTheme),
    iconTheme: _customIconTheme(base.iconTheme),
    */
  );
}

const MaterialColor customPrimary =
    const MaterialColor(0xFFCF0038, const <int, Color>{
  50: const Color(0xFFf9e0e7),
  100: const Color(0xFFf1b3c3),
  200: const Color(0xFFe7809c),
  300: const Color(0xFFdd4d74),
  400: const Color(0xFFd62656),
  500: const Color(0xFFcf0038),
  600: const Color(0xFFca0032),
  700: const Color(0xFFc3002b),
  800: const Color(0xFFbd0024),
  900: const Color(0xFFb20017),
});
