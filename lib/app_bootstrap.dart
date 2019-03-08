/*
 * Copyright (c) 2019. Giorgio Modoni. All rights reserved.
 * Use of this source code is governed by a GPL-3.0 license that can be.
 *
 * Giorgio Modoni <modogio@gmail.com>
 */


import 'package:irrigo/src/app.dart';
import 'package:flutter/services.dart';

class AppBootstrap  {

  Future<App> getApp() async {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);

    return App();
  }

}
