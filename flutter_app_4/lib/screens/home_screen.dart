import 'package:flutter/material.dart';

import '../common/strings.dart' as strings;
import '../widgets/counter_display.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(strings.homeScreenTitle),
        // actions: [
        //   IconButton(
        //     onPressed: () => setState(() {
        //       counter = 0;
        //     }),
        //     icon: const Icon(Icons.exposure_zero),
        //   )
        // ],
      ),
      body: Center(
        child: CounterDisplay(counter: counter),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.plus_one),
        onPressed: () {
          counter++;

          setState(() {});
          print(counter);
        },
      ),
    );
  }
}
