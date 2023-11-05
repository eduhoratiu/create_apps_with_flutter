// Copyright 2023 eduhoratiu <https://eduhoratiu.com/>
// Use of this source code is governed by an MIT-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

import '../common/strings.dart' as strings;

/// The home screen of the app. This is basically the first screen that
/// the user sees when the app is opened.
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(strings.homeScreenTitle),
      ),
      body: Center(
        child: Image.network('https://picsum.photos/250?image=9'),
      ),
    );
  }
}
