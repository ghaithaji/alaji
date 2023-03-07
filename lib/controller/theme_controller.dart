import 'package:flutter/material.dart';
import 'package:get/get.dart';

bool darkMode = false;

class ThemeController extends GetxController{

  ThemeMode themeMode = darkMode ? ThemeMode.dark : ThemeMode.light;


  void toggleTheme(bool value){
    themeMode = value ? ThemeMode.light : ThemeMode.dark;
    update();
  }

}