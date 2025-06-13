import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:demoapp/widgets/custom_button.dart';//for ios design

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text('my app bar'),
        ),
        body: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            CustomButton(title: "Karina",decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(12)
            ),),
            SizedBox(
              height: 40,
            ),
            CustomButton(title: "Login",decoration: BoxDecoration(
                color: Colors.yellow,
                borderRadius: BorderRadius.circular(12)
            ),)
          ],
        ),
        // body: Container(
        //   color: Colors.white,
        //   child: Row(
        //     children: [
        //     Text("data"),
        //       Text("data"),
        //       Text("data"),
        //       Text("data"),
        //       CircularProgressIndicator(),
        //       ElevatedButton(onPressed: (){}, child: Text("data")),
        //       CupertinoButton(child: Text("data"), onPressed: (){})
        //     ],
        //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //   ),
        // ),
        floatingActionButton: FloatingActionButton(onPressed: (){}),
      ),
    );
  }
}
