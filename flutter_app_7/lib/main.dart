import 'package:flutter/material.dart';

import 'common/strings.dart' as strings;
import 'screens/home_screen.dart';

void main() {
  runApp(const FlutterApp7());
}

class FlutterApp7 extends StatelessWidget {
  const FlutterApp7({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: strings.appTitle,
      home: HomeScreen(),
    );
  }
}
