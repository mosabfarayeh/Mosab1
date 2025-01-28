import 'package:flutter/material.dart';

class SingleChildScrollViewExample extends StatelessWidget {
  const SingleChildScrollViewExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SingleChildScrollView Example'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: List.generate(
            100,
            (index) => ListTile(
              tileColor: (index % 2 == 0) ? Colors.grey[200] : Colors.white,
              title: Text('Item $index'),
            ),
          ),
        ),
      ),
    );
  }
}
