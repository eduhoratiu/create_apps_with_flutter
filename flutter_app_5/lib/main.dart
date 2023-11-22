import 'package:flutter/material.dart';

import 'common/strings.dart' as strings;
import 'screens/home_screen.dart';

void main() {
  runApp(const FlutterApp5());
}

class FlutterApp5 extends StatelessWidget {
  const FlutterApp5({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: strings.appTitle,
      home: HomeScreen(),
    );
  }
}
