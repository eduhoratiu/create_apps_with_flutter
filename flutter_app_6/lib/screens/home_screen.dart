import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import '../common/strings.dart' as strings;
import '../widgets/color_tab.dart';

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
          bottom: const TabBar(
            tabs: [
              ColorTab(color: Colors.red, width: 120.0),
              ColorTab(color: Colors.green),
              ColorTab(color: Colors.blue),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            ColoredBox(color: Colors.red, child: Center(child: Text('red'))),
            ColoredBox(
                color: Colors.green, child: Center(child: Text('green'))),
            ColoredBox(color: Colors.blue, child: Center(child: Text('blue'))),
          ],
        ),
      ),
    );
  }
}
