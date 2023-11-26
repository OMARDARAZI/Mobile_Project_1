import 'dart:async';

import 'package:cool_alert/cool_alert.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../nav_bar/view.dart';

class LoginLogic extends GetxController {
  static List<String> emailList = ["admin"];
  static List<String> passwordList = ["123"];
  static List<String> Names = ["Admin"];

  bool isLoading = false;
  bool isObscure = true;

  changeObscure() {
    isObscure = !isObscure;
    update();
  }

  Future login(String email, String password, BuildContext context) async {
    isLoading = true;
    update();
    for (int i = 0; i < emailList.length; i++) {
      print(emailList[i]);
      print(passwordList[i]);

      if (email == emailList[i] && password == passwordList[i]) {
        await Future.delayed(Duration(seconds: 2), () {
          print("After 2 seconds");
        });

        Get.offAll(()=>NavBarPage());
        isLoading = false;
        update();
      }
      else{
        await Future.delayed(Duration(seconds: 2), () {
          print("After 2 seconds");
        });

        isLoading = false;
        update();

        CoolAlert.show(
          context: context,
          type: CoolAlertType.error,
          text: "Wrong Email or password!",
        );
      }
    }

    print("Login failed. Invalid email or password.");
  }
}
