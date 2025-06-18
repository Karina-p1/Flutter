

import 'package:demoapp/views/login_page.dart';

import 'utils/image_paths.dart';
import 'package:flutter/material.dart';
import 'utils/colors.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
    );
  }
}

class ProfileButtons extends StatelessWidget {
  final String title;
  const ProfileButtons({
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 12) ,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: AppColors.secondaryColor,
      ),
      child: Text(
        "$title",
        style: TextStyle(
        color: AppColors.textColor,
        fontSize: 16,
        fontWeight: FontWeight.w500,
      ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final String title;

  CustomButton({required this.title});

  Color _getColorByTitle(String title) {
    switch (title.toLowerCase()) {
      case 'login':
        return AppColors.primaryColor;
      case 'sign up':
        return AppColors.signUpColor;
      case 'refreshing':
        return AppColors.refreshingColor;
      case 'logout':
        return Colors.red;
      default:
        return Colors.grey;
    }
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        // Optional: Show snackbar or print message
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text('$title button pressed')));
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: _getColorByTitle(title),
        padding: EdgeInsets.symmetric(vertical: 16),
      ),
      child: Text(title.toUpperCase(), style: TextStyle(fontSize: 16)),
    );
  }
}