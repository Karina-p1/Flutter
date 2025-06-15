import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String title;

  const CustomButton({Key? key, required this.title}) : super(key: key);

  Color _getColor(String title) {
    switch (title.toLowerCase()) {
      case 'login':
        return Colors.green;
      case 'sign up':
        return Colors.blue;
      case 'refreshing':
        return Colors.orange;
      case 'logout':
        return Colors.red;
      default:
        return Colors.grey;
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 60,
      child: ElevatedButton(
        onPressed: () {
          print('$title button pressed');
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: _getColor(title),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        child: Text(
          title.toUpperCase(),
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            letterSpacing: 1.2,
          ),
        ),
      ),
    );
  }
}