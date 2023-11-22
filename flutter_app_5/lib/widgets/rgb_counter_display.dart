import 'package:flutter/material.dart';

/// A widget that displays a counter filled with a color based on the counter.
class RGBCounterDisplay extends StatelessWidget {
  /// Creates a [RGBCounterDisplay] widget with the specified [counter].
  const RGBCounterDisplay(
    this.counter, {
    super.key,
  });

  /// The counter value to display.
  final int counter;

  @override
  Widget build(BuildContext context) {
    // Fill the background with a color based on the counter.
    return ColoredBox(
      color: Color(0xFF000000 + counter),

      // Center the counter text.
      child: Center(
        // Display the counter value.
        child: Text(
          '$counter',

          // Make the text white and large.
          style: const TextStyle(
            color: Colors.white,
            fontSize: 96.0,
          ),
        ),
      ),
    );
  }
}
