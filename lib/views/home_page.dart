import 'package:demoapp/controllers/home_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
//GetX is a package package is publicly available code which can be found in pub.dev
class HomePage extends StatelessWidget {
  // Bring the HomePageController class into the view using Get.put
  final HomePageController c = Get.put(HomePageController());
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home Page")),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //to reflect observable variable changes If you want to observe changes in a variable using Obx, you must always wrap the widget (that displays or depends on that variable) inside the Obx function.
              Obx(() {
                return Text(
                  c.count.value.toString(),
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.w800),
                );
              }),
              Text("this is the count")
              // Obx((){
              //   return Text("karina");//in this text there is no any observable variable so it throws error Here, there's no observable, so you'll get an error like:"You are using Obx without any observable inside."
              // })
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          c.increaseCount();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
