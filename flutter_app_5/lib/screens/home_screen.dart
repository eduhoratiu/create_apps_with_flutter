import 'package:flutter/material.dart';

import '../common/strings.dart' as strings;
import '../widgets/rgb_counter_display.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        title: const Text(strings.homeScreenTitle),
      ),
      body: RGBCounterDisplay(_counter),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        onPressed: () {
          setState(() {
            _counter++;
          });
        },
        child: const Icon(Icons.plus_one),
      ),
    );
  }
}
