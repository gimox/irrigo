/*
 * Copyright (c) 2019. Giorgio Modoni. All rights reserved.
 * Use of this source code is governed by a GPL-3.0 license that can be.
 *
 * Giorgio Modoni <modogio@gmail.com>
 */

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:irrigo/src/models/app_state_model.dart';
import 'package:scoped_model/scoped_model.dart';

class SplashPage extends StatefulWidget {
  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    _initShared();
  }

  void _initShared() async {
    final AppStateModel model =
        ScopedModel.of<AppStateModel>(context, rebuildOnChange: false);

    /// load data from local data key=>value only for sample pref.
    await model.loadAllPref();
    final bool intro = model.hasIntroSlider;

    /// get next route based on intro value
    final String routeName = (intro == true) ? '/home' : '/home';

    /// route to nex context page
    _endTime(routeName);
  }

  void _endTime(String routeName) {
    Timer(Duration(seconds: 2), () => _navigationPage(routeName));
  }

  void _navigationPage(String routeName) {
    Navigator.pushReplacementNamed(context, routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          animatedBackground(),
          title(),
        ],
      ),
    );
  }

  /// background animations
  Widget animatedBackground() {
    return FlareActor(
      "assets/flare/grass.flr",
      animation: "peace",
      fit: BoxFit.cover,
    );
  }

  /// app title
  Widget title() {
    return Center(
      child: Text(
        'Irrigo',
        style: new TextStyle(
          fontFamily: 'Pacifico',
          fontSize: 60.0,
          color: Colors.white,
          shadows: <Shadow>[
            Shadow(
                offset: Offset(1.5, 1.5), blurRadius: 2.0, color: Colors.black),
          ],
        ),
      ),
    );
  }
}
