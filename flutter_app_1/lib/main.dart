// Copyright 2023 eduhoratiu <https://eduhoratiu.com/>
// Use of this source code is governed by an MIT-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

void main() {
  // Run the app
  runApp(
    // Create the app widget using MaterialApp
    MaterialApp(
      debugShowCheckedModeBanner: false,
      // The home widget is the root of the app
      home: Scaffold(
        // The app bar is the top most section of the app and is used to display the title of the app
        // and the actions that can be performed on the app
        appBar: AppBar(
          // The title of the app using a Text widget
          title: const ColoredBox(
            color: Color(0xFF880E4F),
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('Hello World App'),
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.copy),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.paste),
            ),
          ],
        ),

        // The body of the app is the main content of the app
        // Here we are using a Container widget with a deep purple color and a Center widget
        // to display the text 'Hello World!'
        body: const Center(
          child: Text(
            'Hello World!',
          ),
        ),

        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print('Button Pressed');
          },
          child: const Icon(Icons.shuffle),
        ),
      ),
    ),
  );
}
