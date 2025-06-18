import 'package:demoapp/views/login_page.dart';
import 'package:flutter/material.dart';
import 'package:demoapp/views/login_page.dart';

void main() {
  // Run the Flutter application with MyApp as the root widget
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // MaterialApp is the root of the application
    return MaterialApp(
      title: 'Login Flow', // Title of the app
      theme: ThemeData(
        primarySwatch: Colors.blue, // Default color theme
      ),
      home: const LoginPage(), // Set LoginPage as the initial screen
    );
  }
}