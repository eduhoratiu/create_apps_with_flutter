import 'package:flutter/material.dart';

import '../common/strings.dart' as strings;

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
        title: Text('${strings.homeScreenTitle}: $counter'),
        actions: [
          IconButton(
            onPressed: () => setState(() {
              counter = 0;
            }),
            icon: const Icon(Icons.exposure_zero),
          )
        ],
      ),
      body: Center(
        child: Text(
          'The counter is $counter',
          style: const TextStyle(
            fontSize: 96.0,
          ),
        ),
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
