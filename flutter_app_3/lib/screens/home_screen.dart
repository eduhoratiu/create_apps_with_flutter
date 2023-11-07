// Copyright 2023 eduhoratiu <https://eduhoratiu.com/>
// Use of this source code is governed by an MIT-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

import '../common/strings.dart' as strings;

/// The home screen of the app.
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Add an AppBar widget with a title and actions
      appBar: AppBar(
        backgroundColor: Colors.purple.shade200,
        title: const Text(strings.homeScreenTitle),
        actions: <Widget>[
          // Add the copy icon button
          IconButton(
            onPressed: () {
              print('Copy button pressed');
            },
            icon: const Icon(Icons.content_copy),
          ),

          // Add the search icon button
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
        ],
      ),

      // Add a floating action button and experiment with its properties
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Colors.green,
        focusColor: Colors.blue,
        foregroundColor: Colors.red,
        icon: const Icon(Icons.access_alarm),
        label: const Text(strings.homeFABLabel),
        mouseCursor: SystemMouseCursors.cell,
        splashColor: Colors.orange,

        // Show a dummy dialog box when the button is pressed
        onPressed: () => showDummyDialog(context),
      ),
    );
  }

  /// Shows a dummy dialog box with a title and content.
  void showDummyDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // Build and return an AlertDialog widget
        return const AlertDialog(
          title: Text(strings.dummyDialogBoxTitle),
          content: Text(strings.dummyDialogBoxContent),
        );
      },
    );
  }
}
