import 'package:demoapp/widgets/custom_button.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<String> buttons = ['login', 'sign up', 'refreshing', 'logout'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Dynamic Buttons"), centerTitle: true),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView.builder(
            itemCount: buttons.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0),
                child: CustomButton(title: buttons[index]),
              );
            },
          ),
        ),
      ),
    );
  }
}