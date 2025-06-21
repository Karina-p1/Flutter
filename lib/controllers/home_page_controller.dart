import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../image_paths.dart';

class HomePageController extends GetxController {
  //making the fruit list observable
  RxList<String>fruits=['mango','banana','apple','peach'].obs;
  //When we have to use and access Text field data
  TextEditingController fruitName=TextEditingController();

  void addFruits(){
    if(fruitName.text.isNotEmpty){
      fruits.add(fruitName.text);
    }
  }
  void deleteFruits(int index){
    if(index<fruits.length){
      fruits.removeAt(index);
    }
  }
}