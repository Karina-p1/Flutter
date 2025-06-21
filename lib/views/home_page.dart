import 'package:demoapp/controllers/home_page_controller.dart';
import 'package:demoapp/views/details_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'first_page.dart';
import 'package:demoapp/image_paths.dart';

// GetX is a package; a package is publicly available code which can be found on pub.dev
class HomePage extends StatelessWidget {
  // Bring the HomePageController class into the view using Get.put
  final HomePageController c = Get.put(HomePageController());

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home Page")),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              onTap: (){
                Get.to(()=>DetailsPage(),arguments: c.product);
              },
              child: Container(
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      c.product['imageUrl'],
                      height: Get.height / 3,
                      width: Get.width / 2,
                      fit: BoxFit.fill,
                    ),
                    Text(
                      c.product["name"],
                      style: TextStyle(fontSize:22, fontWeight: FontWeight.w600),
              ),
              Text(
                c.product["category"],
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600,color:Colors.grey),
              ),
                    Text(
                      c.product['price'],
                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600,color:Colors.black),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
