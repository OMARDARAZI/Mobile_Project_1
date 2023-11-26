import 'package:flutter/material.dart';
import 'package:flutter_touch_ripple/flutter_touch_ripple.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:project_1/login/view.dart';
import 'package:sizer/sizer.dart';

import 'logic.dart';

class NavBarPage extends StatelessWidget {
  NavBarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<NavBarLogic>(
      init: NavBarLogic(),
      builder: (logic) {
        return Scaffold(
          key: logic.scaffoldKey,
          drawer: SafeArea(
            child: Container(
              width: MediaQuery.sizeOf(context).width * 0.75,
              color: Colors.white,
              child: Column(
                children: [
                  const SizedBox(
                    height: 90,
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width: 30,
                      ),
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(150),
                          color: Colors.grey,
                        ),
                        child: const Center(
                          child: Text(
                            'O',
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Admin'),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'admin@gmail.com',
                            style: TextStyle(color: Colors.grey),
                          )
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  SizedBox(
                    height: 50,
                    child: Center(
                      child: TouchRipple(
                        onTap: () {},
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Row(

                              children: [
                                const SizedBox(
                                  width: 20,
                                ),
                                Icon(Iconsax.category),
                                const SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  'Categories',
                                  style: TextStyle(fontSize: 16.sp),
                                ),
                              ],
                            ),
                            const Divider(
                              color: Colors.grey,
                              thickness: 1,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  SizedBox(
                    height: 50,
                    child: Center(
                      child: TouchRipple(
                        onTap: () {},
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Row(

                              children: [
                                const SizedBox(
                                  width: 20,
                                ),
                                Icon(Iconsax.user),
                                const SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  'Profile',
                                  style: TextStyle(fontSize: 16.sp),
                                ),
                              ],
                            ),
                            const Divider(
                              color: Colors.grey,
                              thickness: 1,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  SizedBox(
                    height: 50,
                    child: Center(
                      child: TouchRipple(
                        onTap: () {
                          Get.offAll(()=>LoginPage(),transition: Transition.downToUp);
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Row(

                              children: [
                                const SizedBox(
                                  width: 20,
                                ),
                                Icon(Iconsax.logout,color: Colors.red,),
                                const SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  'Logout',
                                  style: TextStyle(fontSize: 16.sp,color: Colors.red),
                                ),
                              ],
                            ),
                            const Divider(
                              color: Colors.grey,
                              thickness: 1,
                            )
                          ],
                        ),
                      ),
                    ),
                  )

                ],
              ),
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: Colors.black,
            backgroundColor: const Color(0xffE5E5E5),
            mouseCursor: SystemMouseCursors.click,
            currentIndex: logic.index,
            onTap: (value) => logic.changeIndex(index: value),
            elevation: 0,
            showUnselectedLabels: false,
            selectedLabelStyle:
                GoogleFonts.adventPro(fontWeight: FontWeight.bold),
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Iconsax.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Iconsax.category),
                label: 'Category',
              ),
              BottomNavigationBarItem(
                icon: Icon(Iconsax.user),
                label: 'Profile',
              ),
            ],
          ),
          body: logic.pages[logic.index],
        );
      },
    );
  }
}
