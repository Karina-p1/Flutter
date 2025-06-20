import 'package:get/get.dart';
//controllers are helper class which help us tp render data in the view
//variable declaration
//logic work
//api calls
//try catch error handling we will do in controller
class HomePageController extends GetxController{
//for making the variable observable
  RxInt count=0.obs;
  RxBool isLiked=true.obs;

  void toggleLikeStatus(){
    isLiked.value=!isLiked.value;//if isLiked value is true at first then it will be false and vice versa
  }
  // RxString
  void increaseCount(){
    count =count + 1;
    print("the count is ${count}");
  }
  void decreaseCount(){
    count =count - 1;
    print("the count is ${count}");
}

  void resetCount() {
    count.value = 0;
    print("the count is ${count}");
  }
}