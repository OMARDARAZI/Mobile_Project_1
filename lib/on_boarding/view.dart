import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:lottie/lottie.dart';
import 'package:project_1/login/view.dart';
import 'package:project_1/register/view.dart';
import 'package:sizer/sizer.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'logic.dart';

class OnBoardingPage extends StatelessWidget {
  OnBoardingPage({Key? key}) : super(key: key);

  final controller = PageController(viewportFraction: 0.8, keepPage: true);
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnBoardingLogic>(
      init: OnBoardingLogic(),
      builder: (logic) {
        return Scaffold(
          floatingActionButton: logic.currentPage == 3
              ? Container()
              : FloatingActionButton(
                  backgroundColor: const Color(0xffffe501),
                  child: const Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    _pageController.nextPage(
                      duration: const Duration(milliseconds: 700),
                      curve: Curves.easeInSine,
                    );
                  },
                ),
          body: Stack(
            children: [
              PageView(
                onPageChanged: (value) {
                  logic.changePage(value);
                },
                physics: const AlwaysScrollableScrollPhysics(),
                controller: _pageController,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Lottie.asset('assets/lottie/walking dog with person.json',
                          width: MediaQuery.of(context).size.width * 0.6),
                      const SizedBox(
                        height: 50,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Welcome to Petty!',
                            style: TextStyle(
                                fontSize: 20.sp, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                              width: MediaQuery.sizeOf(context).width * 0.7,
                              child: Text(
                                'Discover your perfect companion and make a difference in a pet\'s life. Swipe, match, and find your new furry family member today!',
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 12.sp),
                              ))
                        ],
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Lottie.asset('assets/lottie/hugging dog and cat.json',
                          width: 300),
                      const SizedBox(
                        height: 50,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: MediaQuery.sizeOf(context).width,
                            child: Text(
                              'Snuggle Time Awaits! 🤗🐾',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 20.sp, fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: MediaQuery.sizeOf(context).width * 0.7,
                            child: Text(
                              'Swipe, match, and start a lifetime of cuddles. Find your perfect furry companion today!',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 12.sp),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Lottie.asset('assets/lottie/pet location.json',
                          width: 300),
                      const SizedBox(
                        height: 50,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: MediaQuery.sizeOf(context).width * 0.7,
                            child: Text(
                              'Discover Pets Near You! 📍🐾',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 20.sp, fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: MediaQuery.sizeOf(context).width * 0.8,
                            child: Text(
                              'Our location-based feature connects you with furry friends in your area. Swipe to find pets ready for adoption nearby and bring the joy of companionship to your doorstep!',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 12.sp),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Lottie.asset('assets/lottie/user-interface.json',
                          width: 300),
                      const SizedBox(
                        height: 50,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: MediaQuery.sizeOf(context).width * 0.7,
                            child: Text(
                              'Lets Get Started!',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 20.sp, fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.offAll(() => LoginPage());
                        },
                        child: Container(
                          width: MediaQuery.sizeOf(context).width * 0.8,
                          height: 60,
                          decoration: BoxDecoration(
                              color: Colors.transparent,
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(10)),
                          child: Center(
                            child: Text(
                              'Login',
                              style: TextStyle(
                                  fontSize: 16.sp, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.offAll(() => RegisterPage());
                        },
                        child: Container(
                          width: MediaQuery.sizeOf(context).width * 0.8,
                          height: 60,
                          decoration: BoxDecoration(
                              color: const Color(0xffffe501),
                              borderRadius: BorderRadius.circular(10)),
                          child: Center(
                            child: Text(
                              'Register',
                              style: TextStyle(
                                fontSize: 16.sp,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Positioned(
                bottom: 30,
                width: MediaQuery.sizeOf(context).width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AnimatedSmoothIndicator(
                      onDotClicked: (index) {
                        logic.changePage(index);
                        _pageController.animateToPage(
                          index,
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.ease,
                        );
                      },
                      count: 4,
                      axisDirection: Axis.horizontal,
                      effect: const SlideEffect(
                        paintStyle: PaintingStyle.stroke,
                        dotColor: Colors.grey,
                        activeDotColor: Color(0xffffe501),
                      ),
                      activeIndex: logic.currentPage,
                    ),
                  ],
                ),
              ),
              logic.currentPage == 3
                  ? Container()
                  : Positioned(
                      bottom: 30,
                      left: 25,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {
                              _pageController.animateToPage(3,
                                  duration: const Duration(milliseconds: 1000),
                                  curve: Curves.easeInSine);
                            },
                            child: const Text(
                              'Skip',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ),
                        ],
                      ),
                    ),
            ],
          ),
        );
      },
    );
  }
}
