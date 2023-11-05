// Copyright 2023 eduhoratiu <https://eduhoratiu.com/>
// Use of this source code is governed by an MIT-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

import 'screens/home_screen.dart';
import 'common/strings.dart' as strings;

void main() {
  runApp(const FlutterApp2());
}

/// The main app widget. This is the root widget of the app.
class FlutterApp2 extends StatelessWidget {
  const FlutterApp2({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: strings.appTitle,
      home: HomeScreen(),
    );
  }
}
