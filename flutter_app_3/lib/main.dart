// Copyright 2023 eduhoratiu <https://eduhoratiu.com/>
// Use of this source code is governed by an MIT-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

import 'common/strings.dart' as strings;
import 'screens/home_screen.dart';

/// The main function of the app that runs the Flutter app.
void main() {
  runApp(const FlutterApp3());
}

/// The root widget of the app that contains the MaterialApp widget.
class FlutterApp3 extends StatelessWidget {
  const FlutterApp3({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: strings.appTitle,

      // The HomeScreen widget is the root of the app's home screen
      home: HomeScreen(),
    );
  }
}
