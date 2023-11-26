import 'package:get/get.dart';

class OnBoardingLogic extends GetxController {

  int currentPage=0;

  changePage(int nb){
    currentPage=nb;
    update();
  }
}
