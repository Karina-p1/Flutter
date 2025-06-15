import 'package:demoapp/image_paths.dart';
import 'package:flutter/material.dart';

import 'colors.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  final List<String> buttonTitles = [
    'login',
    'sign up',
    'refreshing',
    'logout',
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
      appBar: AppBar(
        title: const Text('Dynamic Buttons'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Image.network("https://images.pexels.com/photos/1108099/pexels-photo-1108099.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2"),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50,vertical: 70),
              child: Image.asset(ImagePaths.dogImage),
            ),
            IconButton(onPressed: () {}, icon: Icon(Icons.add)),
           ElevatedButton(onPressed: () {}, child: Text("data"))
            // Image.asset(ImagePaths.dogImage),
            // Image.asset(ImagePaths.dogImage),
          ],
        ),
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