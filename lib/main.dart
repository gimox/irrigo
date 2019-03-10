/*
 * Copyright (c) 2019. Giorgio Modoni. All rights reserved.
 * Use of this source code is governed by a GPL-3.0 license that can be.
 *
 * Giorgio Modoni <modogio@gmail.com>
 */

import 'package:flutter/material.dart';
import 'package:irrigo/app_config.dart';
import 'package:irrigo/app_bootstrap.dart';

void main() async {
  final app =  AppBootstrap().getApp();

  var configuredApp = new AppConfig(
      appName: 'Irrigo',
      locale: [
        const Locale('it', 'IT'),
        const Locale('en', 'US'),
      ],
      child: app);

  runApp(configuredApp);
}
