/*
 * Copyright (c) 2019. Giorgio Modoni. All rights reserved.
 * Use of this source code is governed by a GPL-3.0 license that can be.
 *
 * Giorgio Modoni <modogio@gmail.com>
 */

import 'package:flutter/material.dart';
import 'package:irrigo/src/models/app_state_model.dart';
import 'package:scoped_model/scoped_model.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HOME'),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.settings), onPressed: (){})
        ],
      ),
      body: Column(children: <Widget>[
        Center(
          child: ScopedModelDescendant<AppStateModel>(
            builder: (context, child, model) => Text(model.counter.toString(),
                style: Theme.of(context).textTheme.display1),
          ),
        )
      ]),
      floatingActionButton: ScopedModelDescendant<AppStateModel>(
        builder: (context, child, model) => FloatingActionButton(
              onPressed: model.increment,
              tooltip: 'Increment',
              child: Icon(Icons.add),
            ),
      ),
    );
  }
}
