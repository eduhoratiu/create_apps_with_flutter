// Copyright 2023 eduhoratiu <https://eduhoratiu.com/>
// Use of this source code is governed by an MIT-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

import '../common/strings.dart' as strings;

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  // void showDialog

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple.shade200,
        title: const Text(strings.homeScreenTitle),
        actions: [
          IconButton(
            onPressed: () {
              print('Copy button pressed');
            },
            icon: const Icon(Icons.content_copy),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Colors.green,
        onPressed: () => showDummyDialog(context),
        label: const Text('What?'),
        icon: const Icon(Icons.access_alarm),
        focusColor: Colors.blue,
        splashColor: Colors.orange,
        foregroundColor: Colors.red,
        mouseCursor: SystemMouseCursors.cell,
        // child: const Icon(Icons.ac_unit),
      ),
    );
  }

  void showDummyDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return const AlertDialog(
          title: Text('Hello Dialog'),
          content: Text('This is a sample dialog box!'),
        );
      },
    );
  }
}
