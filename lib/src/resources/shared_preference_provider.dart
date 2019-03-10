/*
 * Copyright (c) 2019. Giorgio Modoni. All rights reserved.
 * Use of this source code is governed by a GPL-3.0 license that can be.
 *
 * Giorgio Modoni <modogio@gmail.com>
 */

import 'dart:async';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';
import 'package:synchronized/synchronized.dart';

class SharedPrefProvider {
  static final SharedPrefProvider _instance = SharedPrefProvider._internal();

  factory SharedPrefProvider() => _instance;

  SharedPrefProvider._internal();

  final _lock = new Lock();
  static SharedPreferences _pref;

  /// db getter
  Future<SharedPreferences> get pref async {
    if (_pref == null) {
      await _lock.synchronized(() async {
        if (_pref == null) {
          try {
            _pref = await SharedPreferences.getInstance();
          } catch (e) {
            debugPrint('*shared_pref* error on init shared');
          }
        }
      });
    }

    return _pref;
  }

  Future<bool> hasIntroSlider() async {
    final SharedPreferences prefProvider = await pref;

    /// ios iphone 4/5 fix
    try {
      return (prefProvider.getBool('introSlider') ?? false);
    } catch (e) {
      return true;
    }
  }

  void setIntroSlider(bool value) async {
    final SharedPreferences prefProvider = await pref;

    /// ios iphone 4/5 fix
    if (pref != null) {
      prefProvider.setBool('introSlider', value);
    }
  }

}
