import 'package:flutter/material.dart';

/// A widget that displays a counter value.
class CounterDisplay extends StatelessWidget {
  const CounterDisplay({
    super.key,
    required this.counter,
  });

  /// The counter value to display.
  final int counter;

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Colors.amber,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('The counter is'),
          Text(
            '$counter',
            style: const TextStyle(fontSize: 96.0),
          ),
        ],
      ),
    );
  }
}
