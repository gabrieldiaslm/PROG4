import 'package:flutter/material.dart';

class InfoCard extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color? color;
  final Color? backgroundColor;

  const InfoCard({
    super.key,
    required this.icon,
    required this.text,
    this.color,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 4.0),
      padding: const EdgeInsets.symmetric(
        vertical: 6.0,
        horizontal: 15.0,
      ),
      decoration: BoxDecoration(
          color: backgroundColor ?? Colors.white,
          borderRadius: BorderRadius.circular(3.0)),
      child: Row(
        children: [
          const SizedBox(width: 8.0),
          Icon(
            icon,
            color: color ?? const Color.fromARGB(255, 139, 71, 255),
            size: 14.0,
          ),
          const SizedBox(width: 16.0),
          Text(
            text,
            style: TextStyle(
              color: color ?? const Color.fromARGB(255, 139, 71, 255),
              fontSize: 10.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
