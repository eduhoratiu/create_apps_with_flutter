import 'package:flutter/material.dart';

import '../common/strings.dart' as strings;

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(strings.homeScreenTitle),
          bottom: TabBar(
            tabs: [
              Tab(),
              Tab(),
              Tab(),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            ColoredBox(color: Colors.red),
            ColoredBox(color: Colors.green),
            ColoredBox(color: Colors.blue),
          ],
        ),
      ),
    );
  }
}
