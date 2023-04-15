import 'package:flutter/material.dart';

// ignore: camel_case_types
class category {
  // ignore: non_constant_identifier_names
  final String Id;
  final String title;
  final Color color;

  const category({
    // ignore: non_constant_identifier_names
    required this.Id,
    required this.title,
    this.color = Colors.orange,
  });
}
