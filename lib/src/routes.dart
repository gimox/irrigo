/*
 * Copyright (c) 2019. Giorgio Modoni. All rights reserved.
 * Use of this source code is governed by a GPL-3.0 license that can be.
 *
 * Giorgio Modoni <modogio@gmail.com>
 */

import 'package:flutter/material.dart';
import 'package:irrigo/src/pages/home_page.dart';
import 'package:irrigo/src/pages/not_found_page.dart';
import 'package:irrigo/src/pages/splash_page.dart';

/// application routes
Map<String, WidgetBuilder> appRoutes = {
  "/home": (BuildContext context) => HomePage(),
  "/": (BuildContext context) => SplashPage(),
};

MaterialPageRoute<NotFoundPage> onUnknownRoute(RouteSettings rs) =>
    MaterialPageRoute(
      builder: (context) => NotFoundPage(
            appTitle: 'Where are you?',
            title: 'Why you are here!',
            message: "this page not exist!",
          ),
    );
