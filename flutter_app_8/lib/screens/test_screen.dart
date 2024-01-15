import 'package:flutter/material.dart';
import 'package:flutter_app_8/widgets/custom_card.dart';

class TestScreen extends StatelessWidget {
  TestScreen({super.key});

  final List<int> list = [1, 2, 3, 4, 5, 6];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Test Screen'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            for (final item in list)
              _buildCard(
                Colors.cyan,
                'Test $item',
              ),
            const CustomCard(
              customColor: Colors.red,
              title: 'Test 1',
            ),
            const CustomCard(
              customColor: Colors.green,
              title: 'Test 2',
            ),
            const CustomCard(
              customColor: Colors.blue,
              title: 'Test 3',
            ),
            _buildCard(
              Colors.cyan,
              'Test 4',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCard(Color color, String title) {
    return Card(
      color: color,
      child: SizedBox(
        width: 200,
        height: 200,
        child: Text(title),
      ),
    );
  }
}
