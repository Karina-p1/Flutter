import 'package:demoapp/views/home_page.dart';
import 'package:demoapp/views/login_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'colors.dart'; // Custom color constants


void main() {
  runApp(MyApp());
}
//we don't use stateful widget because it hot reload whole page to show the changes that is not a good approach instead of that refreshing the widget that needs to be changed is a better approach so we use external packages like GetX
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    //use get material app instead of material app in getx
    return GetMaterialApp(home: LoginPage());
  }
}
