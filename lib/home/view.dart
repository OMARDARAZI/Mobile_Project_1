import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:project_1/pet__details/view.dart';
import 'package:sizer/sizer.dart';

import '../nav_bar/logic.dart';
import 'logic.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<NavBarLogic>(
      init: NavBarLogic(),
      builder: (logic) {
        return Scaffold(
          backgroundColor: const Color(0xffE5E5E5),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView(
              children: [
                Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 10,
                        ),
                        IconButton(
                          onPressed: () {
                            logic.scaffoldKey.currentState?.openDrawer();
                          },
                          icon: const Icon(Iconsax.menu_1),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 30,
                        ),
                        Text(
                          'Search a Pet:',
                          style: TextStyle(fontSize: 16.sp),
                        ),
                      ],
                    ),

                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 15),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 300,
                            child: TextFormField(
                              onTapOutside: (event) {
                                FocusScope.of(context).requestFocus(FocusNode());
                              },
                              decoration: const InputDecoration(
                                filled: true,
                                fillColor: Color(0xffd7d7d7),
                                hintText: 'Search',
                                border: OutlineInputBorder(borderSide: BorderSide.none),
                              ),
                            ),
                          ),
                          SizedBox(width: 10,),
                          Container(
                            width: 60,
                            height: 55,
                          child: Center(
                            child: Icon(Iconsax.search_normal,color: Colors.white,),
                          ),
                          decoration: BoxDecoration(
                            color: Color(0xff272727),
                            borderRadius: BorderRadius.circular(10)
                          ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15, right: 10),
                        child: Row(
                          children: [
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.15,
                              child: GridView(
                                shrinkWrap: true,
                                scrollDirection: Axis.horizontal,
                                gridDelegate:
                                    const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 1,
                                ),
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: const Color(0xffffe501),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Image.asset(
                                            'assets/images/dog.png',
                                            width: 50,
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          const Text(
                                            'Dogs',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: const Color(0xffffe501),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Image.asset(
                                            'assets/images/cat.png',
                                            width: 50,
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          const Text(
                                            'Cats',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: const Color(0xffffe501),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Image.asset(
                                            'assets/images/bird.png',
                                            width: 50,
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          const Text(
                                            'Birds',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: const Color(0xffffe501),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: const Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(Iconsax.category, size: 40),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            'Other',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GridView.builder(
                        shrinkWrap: true,
                        itemCount: 19,
                        physics: const NeverScrollableScrollPhysics(),
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                        ),
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: GestureDetector(
                              onTap: () {
                                Get.to(()=>Pet_DetailsPage(description: logic.pets[index]['description'].toString(),name: logic.pets[index]['name'].toString(),image:logic.pets[index]['image'].toString() ,));
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.white70,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Column(
                                  children: [
                                    Image.network(
                                      '${logic.pets[index]['image']}',
                                      fit: BoxFit.cover,
                                      width: double.infinity,
                                      height: 130,
                                    ),
                                    const SizedBox(height: 10),
                                    Row(
                                      children: [
                                        const SizedBox(width: 10),
                                        Text('${logic.pets[index]['name']}'),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 3,
                                    ),
                                    Row(
                                      children: [
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          '${logic.pets[index]['description'].toString().substring(0, 23)}...',
                                          style:
                                              const TextStyle(color: Colors.grey),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
