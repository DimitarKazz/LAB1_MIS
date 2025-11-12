import 'package:flutter/material.dart';

class CustomBadge extends StatelessWidget {
  final String label;

  CustomBadge({required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      color: Colors.blue,
      child: Text(
        label,
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}