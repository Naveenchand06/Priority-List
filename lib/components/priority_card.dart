import 'package:flutter/material.dart';

class PriorityCard extends StatelessWidget {
  const PriorityCard({
    super.key,
    required this.title,
    required this.color,
  });

  final String title;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 6.0, vertical: 6.0),
      decoration: BoxDecoration(
        color: color.withOpacity(0.1),
        borderRadius: BorderRadius.circular(6.0),
        border: Border.all(
          width: 2.0,
          color: color,
        ),
      ),
      child: Text(
        title,
        style: TextStyle(
          fontWeight: FontWeight.w400,
          color: color,
        ),
      ),
    );
  }
}
