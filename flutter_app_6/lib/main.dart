// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'common/strings.dart' as strings;
import 'screens/home_screen.dart';

void main() {
  runApp(const FlutterApp6());
}

class FlutterApp6 extends StatelessWidget {
  const FlutterApp6({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: strings.appTitle,
      home: HomeScreen(),
    );
  }
}
