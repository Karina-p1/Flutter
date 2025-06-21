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
      body: Center(
        child: Column(
          children: [
            Obx((){
              return ListView.builder(
                shrinkWrap: true,
                itemCount: c.fruits.length,
                itemBuilder: (context, index) {
                  String fruit = c.fruits[index];
                  return ListTile(
                    title: Text(fruit),
                    leading: Icon(Icons.abc),
                    trailing: InkWell(
                        onTap: (){
                          c.deleteFruits(index);
                        },
                  child: Icon(Icons.delete)),
                  );
                },
              );
            }),

            SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                Get.bottomSheet(//function provided by flutter
                  Container(
                    height: Get.height / 2,
                    width: Get.width,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: EdgeInsets.all(16),
                     child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Text(
                           "Add a fruit",
                           style: TextStyle(
                               fontSize: 22,
                             fontWeight: FontWeight.w700,
                           ),
                         ),
                         SizedBox(
                           height: 16,
                         ),
                         TextField(
                           controller: c.fruitName,//widget used for taking user input
                           decoration: InputDecoration(
                             enabledBorder: OutlineInputBorder(
                               borderSide: BorderSide(color: Colors.black)
                             ),
                               focusedBorder: OutlineInputBorder(
                           borderSide: BorderSide(color: Colors.black)
                         )
                           ),
                         ),
                         SizedBox(
                           height: 16,
                         ),
                         ElevatedButton(onPressed: (){
                        // print(c.fruitName.text);
                              c.addFruits();
                         }, child: Text("Save"))
                       ],
                     ),
                  ),
                );
              },
              child: Text("Press me"),
            ),
          ],
        ),
      ),
    );
  }
}
