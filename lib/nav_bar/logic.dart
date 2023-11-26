import 'package:get/get.dart';
import 'package:project_1/categories/view.dart';
import 'package:project_1/profile/view.dart';
import 'package:flutter/material.dart';
import '../home/view.dart';

class NavBarLogic extends GetxController {
  int index = 0;
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();


  final List<Map<String, String>> pets = [
    {
      'name': 'Whiskers',
      'image': 'https://placekitten.com/200/300',
      'description': 'A playful and curious cat with a fluffy coat.',
    },
    {
      'name': 'Mittens',
      'image': 'https://placekitten.com/201/300',
      'description': 'A sweet-natured cat with cute mittens on its paws.',
    },
    {
      'name': 'Whisper',
      'image': 'https://placekitten.com/202/300',
      'description': 'A quiet and gentle cat that enjoys cozy naps.',
    },
    {
      'name': 'Lucky',
      'image': 'https://placekitten.com/203/300',
      'description': 'A fortunate pet with a charming personality.',
    },
    {
      'name': 'Noodle',
      'image': 'https://placekitten.com/204/300',
      'description': 'A playful and flexible cat with a long and slender body.',
    },
    {
      'name': 'Cinnamon',
      'image': 'https://placekitten.com/205/300',
      'description': 'A warm and cuddly cat with a cinnamon-colored coat.',
    },
    {
      'name': 'Smokey',
      'image': 'https://placekitten.com/206/300',
      'description': 'A mysterious and elegant cat with a smoky-colored fur.',
    },
    {
      'name': 'Shadow',
      'image': 'https://placekitten.com/207/300',
      'description': 'A sleek and agile cat that moves like a shadow.',
    },
    {
      'name': 'Tiger',
      'image': 'https://placekitten.com/208/300',
      'description': 'A bold and adventurous cat with tiger-like stripes.',
    },
    {
      'name': 'Olive',
      'image': 'https://placekitten.com/209/300',
      'description': 'A charming and playful cat with olive-green eyes.',
    },
    {
      'name': 'Sunny',
      'image': 'https://placekitten.com/210/300',
      'description': 'A cheerful and sunny cat that brightens up your day.',
    },
    {
      'name': 'Pumpkin',
      'image': 'https://placekitten.com/211/300',
      'description': 'An orange and fluffy cat with a pumpkin-like charm.',
    },
    {
      'name': 'Mango',
      'image': 'https://placekitten.com/212/300',
      'description': 'A tropical and vibrant cat with a mango-colored fur.',
    },
    {
      'name': 'Cupcake',
      'image': 'https://placekitten.com/213/300',
      'description': 'A sweet and adorable cat with a cupcake-like cuteness.',
    },
    {
      'name': 'Berry',
      'image': 'https://placekitten.com/214/300',
      'description': 'A playful and fruity cat with a berry-colored coat.',
    },
    {
      'name': 'Midnight',
      'image': 'https://placekitten.com/215/300',
      'description': 'A mysterious and elegant cat with a midnight-black fur.',
    },
    {
      'name': 'Snowflake',
      'image': 'https://placekitten.com/216/300',
      'description': 'A white and delicate cat with a snowflake-like charm.',
    },
    {
      'name': 'Peaches',
      'image': 'https://placekitten.com/217/300',
      'description': 'A peachy and sweet cat with a gentle disposition.',
    },
    {
      'name': 'Oreo',
      'image': 'https://placekitten.com/218/300',
      'description': 'A black and white cat with a cookie-like appearance.',
    },
    {
      'name': 'Oreo',
      'image': 'https://placekitten.com/218/300',
      'description': 'A black and white cat with a cookie-like appearance.',
    },
  ];


  List pages = [
    HomePage(),
    CategoryPage(),
    ProfilePage(),
  ];

  changeIndex({required int index}) {
    this.index = index;
    update();
  }
}
