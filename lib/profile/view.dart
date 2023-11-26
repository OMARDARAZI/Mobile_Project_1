import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sizer/sizer.dart';

import 'logic.dart';

class ProfilePage extends StatelessWidget {
  ProfilePage({Key? key}) : super(key: key);

  final logic = Get.put(ProfileLogic());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text('Profile',style: TextStyle(color: Colors.black),),
        elevation: 0,
        centerTitle: true,
      ),
      backgroundColor: const Color(0xffE5E5E5),
      body: ListView(
        children: [
          Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              Container(
                width: 110,
                height: 110,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(150),
                  color: Colors.grey,
                ),
                child: const Center(
                  child: Text(
                    'A',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Admin',
                    style: TextStyle(fontSize: 30),
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),

              Text('Email: Admin@gmail.com',style: TextStyle(color: Colors.grey,fontSize: 12.sp),),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 200,
                height: 50,
                decoration: BoxDecoration(
                    color: Color(0xffffe501 ),
                    borderRadius: BorderRadius.circular(30)),
                child: Center(
                  child: Text(
                    'Edit Profile',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15.sp,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Divider(color: Colors.grey,thickness: .7,),
              ),
              SizedBox(height: 40,),
              Container(
                width: MediaQuery.sizeOf(context).width*0.8,
                height: 70,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Iconsax.setting,size: 30),
                        SizedBox(width: 20,),
                        Text('Settings',style: TextStyle(fontSize: 15.sp),)
                      ],
                    ),
                    Icon(Iconsax.arrow_right)
                   
                  ],
                ),
              ),
              Container(
                width: MediaQuery.sizeOf(context).width*0.8,
                height: 70,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Iconsax.message,size: 30),
                        SizedBox(width: 20,),
                        Text('Messages',style: TextStyle(fontSize: 15.sp),)
                      ],
                    ),
                    Icon(Iconsax.arrow_right)

                  ],
                ),
              ),
              Container(
                width: MediaQuery.sizeOf(context).width*0.8,
                height: 70,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Iconsax.heart,size: 30),
                        SizedBox(width: 20,),
                        Text('Favorites',style: TextStyle(fontSize: 15.sp),)
                      ],
                    ),
                    Icon(Iconsax.arrow_right)

                  ],
                ),
              ),

            ],
          )
        ],
      ),
    );
  }
}
