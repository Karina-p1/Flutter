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
              Text("this is the count"),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:[
                ElevatedButton(onPressed: (){c.decreaseCount();}, child: Text("Decrease")),
                ElevatedButton(onPressed: (){c.resetCount();}, child: Text("Reset")),
                ElevatedButton(onPressed: (){c.increaseCount();}, child: Text("Increase")),
              ],
              ),
              SizedBox(
                height: 50,
              ),
              InkWell(//Inkwell helps us to make obx widget tappable
                onTap: (){
                  c.toggleLikeStatus();
                },
                child: Obx((){
                  if(c.isLiked.value==true){
                    return  Icon(Icons.favorite,color: Colors.red,);
                  }else{
                    return  Icon(Icons.favorite_border,color: Colors.red);
                  }
                }),
              ),
            SizedBox(
              height: 50,
            ),
              Container(
                height: Get.width/4,
                width: Get.width/5,
              ),
              ElevatedButton(onPressed: (){
                Get.snackbar("title", "This is a snackbar", backgroundColor: Colors.blue);
              }, child: Text("Press for snackbar"),
              ),
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
