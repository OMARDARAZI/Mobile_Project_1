import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import 'logic.dart';

class CategoryPage extends StatelessWidget {
  CategoryPage({Key? key}) : super(key: key);

  final logic = Get.put(CategoryLogic());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text('Categories',style: TextStyle(color: Colors.black),),
        elevation: 0,
        centerTitle: true,
      ),
      backgroundColor: const Color(0xffE5E5E5),
      body: GridView(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
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
                    width: 60,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Dogs',
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
                    'assets/images/cat.png',
                    width: 60,
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
                    width: 60,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Birds',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
