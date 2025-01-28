import 'package:flutter/material.dart';

class WrapExample extends StatelessWidget {
  WrapExample({super.key});

  final List<String> items = [
    "Flutter",
    "Dart",
    "Provider",
    "State",
    "Widget",
    "Layout",
    "Column",
    "Row",
    "ListView",
    "GridView",
    "Wrap",
    "Stack",
    "Container",
    "Scaffold",
    "AppBar",
    "BottomNavigationBar",
    "TabBar",
    "Drawer",
    "SnackBar",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Wrap Widget'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Wrap(
          spacing: 5, // horizontal space between children
          runSpacing: 5, // vertical space between children
          children: items.map((i) {
            return Chip(
                backgroundColor: Colors.deepOrange[100], label: Text(i));
          }).toList(),
        ),
      ),
    );
  }
}
