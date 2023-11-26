import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sizer/sizer.dart';

import 'logic.dart';

class Pet_DetailsPage extends StatelessWidget {
  Pet_DetailsPage(
      {Key? key,
      required this.image,
      required this.name,
      required this.description})
      : super(key: key);

  String image;
  String name;
  String description;
  final logic = Get.put(Pet_DetailsLogic());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Container(
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: double.infinity,
                  width: MediaQuery.sizeOf(context).width * 0.8,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Color(0xffffe501),
                  ),
                  child: Center(child: Text('Contact Owner',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.sp),)),
                )
              ],
            ),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Image at the top
            Stack(
              children: [

                Image.network(
                  '${image}',
                  width: double.infinity,
                  height: MediaQuery.sizeOf(context).height *
                      0.5, // Adjust the height as needed
                  fit: BoxFit.cover,
                ),
                Positioned(
                  top: 20,
                  left: 20,
                  child: IconButton(onPressed: () {
                    Navigator.pop(context);
                  }, icon: Icon(Icons.arrow_back_ios,color: Colors.white,)),
                ),
              ],
            ),
            // Description in the middle
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                '${name}',
                style: TextStyle(fontSize: 18),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                '${description}',
                style: TextStyle(fontSize: 18, color: Colors.grey),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
