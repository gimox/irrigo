/*
 * Copyright (c) 2019. Giorgio Modoni. All rights reserved.
 * Use of this source code is governed by a GPL-3.0 license that can be.
 *
 * Giorgio Modoni <modogio@gmail.com>
 */

import 'package:irrigo/src/app.dart';
import 'package:flutter/services.dart';
import 'package:irrigo/src/models/app_state_model.dart';

class AppBootstrap {
  App getApp() {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);

    return App(appStateModel: AppStateModel());
  }
}
