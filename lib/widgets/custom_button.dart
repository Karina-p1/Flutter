import 'package:flutter/material.dart';
class CustomButton extends StatelessWidget {
  String title;
  BoxDecoration decoration;
  CustomButton({
    required this.title,
    required this.decoration,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 54,
      decoration: decoration,
      // decoration: BoxDecoration(
      //     borderRadius: BorderRadius.circular(12),
      //     color: Colors.blue
      // ),
      width: 120,
      child: Center(child: Text(title)),
    );
  }
}
