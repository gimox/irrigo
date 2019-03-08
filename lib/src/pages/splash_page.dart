/*
 * Copyright (c) 2019. Giorgio Modoni. All rights reserved.
 * Use of this source code is governed by a GPL-3.0 license that can be.
 *
 * Giorgio Modoni <modogio@gmail.com>
 */

import 'package:flutter/material.dart';
import 'package:flare_flutter/flare_actor.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          FlareActor(
            "assets/flare/grass.flr",
            animation: "peace",
            fit: BoxFit.cover,
          ),
          Center(child: Text('Irrigo'),)
        ],
      ),
    );
  }
}
