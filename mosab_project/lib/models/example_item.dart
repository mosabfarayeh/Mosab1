// models/example_item.dart
import 'package:flutter/material.dart';

class ExampleItem {
  final String title;
  final String imageUrl;
  final Function(BuildContext context) onTap;

  ExampleItem({
    required this.title,
    required this.imageUrl,
    required this.onTap,
  });
}
