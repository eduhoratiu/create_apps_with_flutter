import 'package:flutter/material.dart';

/// A custom card widget.
///
/// This widget has a custom color and a title.
class CustomCard extends StatelessWidget {
  const CustomCard({
    super.key,
    this.customColor = Colors.white,
    required this.title,
  });

  /// The background color of the card.
  final Color customColor;

  /// The title of the card.
  final String title;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: customColor,
      child: SizedBox(
        width: 200,
        height: 200,
        child: Text(title),
      ),
    );
  }
}
