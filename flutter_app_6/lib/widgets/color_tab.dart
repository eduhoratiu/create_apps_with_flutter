import 'package:flutter/material.dart';

class ColorTab extends StatelessWidget {
  const ColorTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: SizedBox(
        width: 40.0,
        height: 40.0,
        child: ColoredBox(color: Colors.red),
      ),
    );
  }
}
