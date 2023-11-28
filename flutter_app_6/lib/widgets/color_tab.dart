import 'package:flutter/material.dart';

/// A tab that displays a color.
class ColorTab extends StatelessWidget {
  /// Creates a tab that displays a color. The [color] parameter is required.
  /// The [width] and [height] parameters are optional. If not specified,
  /// they default to 40.0.
  const ColorTab({
    super.key,
    required this.color,
    this.width = 40,
    this.height = 40,
  });

  /// The color of the tab. This is a required parameter and it is used to
  /// determine the color of the tab.
  final Color color;

  /// The width of the tab. If not specified, defaults to 40.0.
  final double? width;

  /// The height of the tab. If not specified, defaults to 40.0.
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: SizedBox(
        width: width,
        height: height,
        child: ColoredBox(color: color),
      ),
    );
  }
}
