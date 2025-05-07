import 'package:flutter/material.dart';

class BasicAppButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String title;
  final double? height;
  final Color? color;

  const BasicAppButton({
    super.key,
    required this.onPressed,
    required this.title,
    this.height,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        minimumSize: Size.fromHeight(height ?? 50),
        backgroundColor: color ?? Theme.of(context).primaryColor,
      ),
      child: Text(
        title,
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400),
      ),
    );
  }
}
