/*
 * Copyright (c) 2019. Giorgio Modoni. All rights reserved.
 * Use of this source code is governed by a GPL-3.0 license that can be.
 *
 * Giorgio Modoni <modogio@gmail.com>
 */

import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:irrigo/src/resources/shared_preference_provider.dart';

class AppStateModel extends Model {
  static AppStateModel of(BuildContext context) =>
      ScopedModel.of<AppStateModel>(context);

  final SharedPrefProvider _sharedProvider = SharedPrefProvider();

  int _counter = 0;

  int get counter => _counter;

  /// true to display intro
  bool _hasIntroSlider = false;

  bool get hasIntroSlider => _hasIntroSlider;

  /// set has introSlider
  /// if set to false intro slider show on boot
  void setHasIntroSlider(bool value) {
    debugPrint('setHasIntroSlider to $value');
    _hasIntroSlider = value;
    _sharedProvider.setIntroSlider(value);

    notifyListeners();
  }

  void increment() {
    _counter++;

    // Then notify all the listeners.
    notifyListeners();
  }

  loadAllPref() async {
    _hasIntroSlider = await _sharedProvider.hasIntroSlider();

    notifyListeners();
  }
}
