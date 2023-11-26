import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:project_1/widgets/loading.dart';
import 'package:sizer/sizer.dart';

import '../register/view.dart';
import 'logic.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginLogic>(
        init: LoginLogic(),
        builder: (logic) {
          return Scaffold(
            backgroundColor: Colors.grey[200],
            body: ListView(
              shrinkWrap: true,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(
                      height: MediaQuery.sizeOf(context).height * 0.2,
                    ),
                    Text(
                      'Login',
                      style: TextStyle(
                          fontSize: 30.sp, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: MediaQuery.sizeOf(context).height * 0.1,
                    ),
                    Container(
                      height: MediaQuery.sizeOf(context).height * 0.6,
                      decoration: const BoxDecoration(
                        color: Color(0xff262626),
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(50),
                          topLeft: Radius.circular(50),
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Form(
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 25),
                              child: Column(
                                children: [
                                  TextFormField(
                                    controller: emailController,
                                    decoration: const InputDecoration(
                                        hintText: 'Email',
                                        fillColor: Colors.white,
                                        filled: true,
                                        border: OutlineInputBorder(
                                            borderSide: BorderSide.none)),
                                  ),
                                  const SizedBox(
                                    height: 30,
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
                                            ? const Icon(Iconsax.eye_slash)
                                            : const Icon(Iconsax.eye),
                                      ),
                                      fillColor: Colors.white,
                                      filled: true,
                                      border: const OutlineInputBorder(
                                        borderSide: BorderSide.none,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      GestureDetector(
                                        onTap: () {},
                                        child: const Text(
                                          'Forgot Password?',
                                          style: TextStyle(color: Colors.red),
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          GestureDetector(
                            onTap: () {
                              logic.login(
                                emailController.text.trim().toLowerCase(),
                                passwordController.text.trim(),
                                context,
                              );
                            },
                            child: Container(
                              width: MediaQuery.sizeOf(context).width * .7,
                              height: MediaQuery.sizeOf(context).height * 0.07,
                              decoration: BoxDecoration(
                                color: const Color(0xfffee400),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Center(
                                  child: logic.isLoading
                                      ? const Center(
                                          child: Loading(),
                                        )
                                      : Text(
                                          'Login',
                                          style: TextStyle(
                                            fontSize: 17.sp,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        )),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text('Don\'t Have an Account?',style: TextStyle(color: Colors.white),),
                              const SizedBox(
                                width: 5,
                              ),
                              GestureDetector(
                                  onTap: () {
                                    Get.to(() => RegisterPage());
                                  },
                                  child: const Text(
                                    'Register here.',
                                    style: TextStyle(color: Colors.red),
                                  ))
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          );
        });
  }
}
