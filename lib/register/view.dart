import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:project_1/login/view.dart';
import 'package:sizer/sizer.dart';

import 'logic.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({Key? key}) : super(key: key);

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  DateTime selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<RegisterLogic>(
        init: RegisterLogic(),
        builder: (logic) {
          return Scaffold(
            backgroundColor: Colors.grey[200],
            body: ListView(
              children: [
                Container(
                  width: MediaQuery.sizeOf(context).width,
                  height: 150,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(50),
                      bottomLeft: Radius.circular(50),
                    ),
                    color: Color(0xff292929),
                  ),
                  child: Center(
                    child: Text(
                      'Register',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Column(
                    children: [
                      SizedBox(
                        height: MediaQuery.sizeOf(context).height * 0.15,
                      ),
                      Form(
                        child: Column(
                          children: [
                            TextFormField(
                              decoration: const InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                                hintText: 'Name',
                                border: OutlineInputBorder(
                                    borderSide: BorderSide.none),
                              ),
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            TextFormField(
                              onTap: () async {
                                final DateTime? picked = await showDatePicker(
                                  context: context,
                                  initialDate: selectedDate,
                                  firstDate: DateTime(1900),
                                  lastDate: DateTime.now(),
                                );
                                if (picked != null && picked != selectedDate) {
                                  selectedDate = picked;
                                }
                              },
                              decoration: const InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                                hintText: 'Date of Birth',
                                border: OutlineInputBorder(
                                    borderSide: BorderSide.none),
                              ),
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            TextFormField(
                              decoration: const InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                                hintText: 'Email',
                                border: OutlineInputBorder(
                                    borderSide: BorderSide.none),
                              ),
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            TextFormField(
                              obscureText: logic.isObscure,
                              controller: passwordController,
                              decoration: InputDecoration(
                                hintText: 'Password',
                                suffixIcon: IconButton(
                                  onPressed: () {
                                    logic.changeObscure();
                                  },
                                  icon: logic.isObscure
                                      ? Icon(Iconsax.eye_slash)
                                      : Icon(Iconsax.eye),
                                ),
                                fillColor: Colors.white,
                                filled: true,
                                border: const OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 35,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          width: MediaQuery.sizeOf(context).width * .7,
                          height: MediaQuery.sizeOf(context).height * 0.07,
                          decoration: BoxDecoration(
                              color: const Color(0xffffe501),
                              borderRadius: BorderRadius.circular(5)),
                          child: Center(
                            child: Text(
                              'Register',
                              style: TextStyle(
                                fontSize: 17.sp,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text('Already Have an Account?'),
                          const SizedBox(
                            width: 5,
                          ),
                          GestureDetector(
                              onTap: () {
                                Get.offAll(() => LoginPage());
                              },
                              child: const Text(
                                'Login here.',
                                style: TextStyle(color: Colors.red),
                              ))
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          );
        });
  }
}
