
/*
 * Copyright (c) 2019. Giorgio Modoni. All rights reserved.
 * Use of this source code is governed by a GPL-3.0 license that can be.
 *
 * Giorgio Modoni <modogio@gmail.com>
 */

import 'package:flutter/material.dart';

class NotFoundPage extends StatelessWidget {
  final appTitle;
  final title;
  final message;

  NotFoundPage({
    this.appTitle = "Not Found",
    this.title = "Not found",
    this.message = "??",
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(appTitle),
        ),
        body: Container(margin: EdgeInsets.all(20.0), child: Text(message)));
  }
}
