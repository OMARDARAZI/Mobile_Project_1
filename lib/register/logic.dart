import 'package:get/get.dart';

class RegisterLogic extends GetxController {
  bool isObscure = true;

  changeObscure() {
    isObscure = !isObscure;
    update();
  }
}
