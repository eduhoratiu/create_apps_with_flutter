// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'common/strings.dart' as strings;
import 'screens/home_screen.dart';

void main() {
  // multiply(y: 3, x: 2,);

  runApp(const FlutterApp6());
}

// int multiply({int x, int y}) {
//   return x * y;
// }

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
