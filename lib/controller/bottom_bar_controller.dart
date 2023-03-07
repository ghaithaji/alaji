
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../data/dataCource/remote/test_data.dart';
import '../view/screen/SettingScreen/setting.dart';
import '../view/screen/cart/cart.dart';
import '../view/screen/categories/categories.dart';
import '../view/screen/favorite/favorite.dart';
import '../view/screen/homPage/home_page.dart';

class BottomBarController extends GetxController{



  int pageIndex = 2;
  late Widget showPage = HomePage();

  final HomePage _home = const HomePage();
  final Categories _categories =  const Categories();
  final Favorite _favoriteBorder1 =  const Favorite();
  final Cart _hopping =  const Cart();
  final SettingScreen _perm2 =  const SettingScreen();


  Widget pageChooser(int page) {
    switch (page) {
      case 0:
        update();
        return _categories;

      case 1:
        update();
        return _hopping;

      case 2:
        update();
        return _home;

      case 3:
        update();
        return _favoriteBorder1;

      case 4:
        update();
        return _perm2;

      default:
        return  const Center(
          child:  Text('no page found by page '),
        );

    }
  }

  void pageInt(int pageInt){
    if(pageInt == null){
      showPage =  const HomePage();
    }
    if(pageInt == 1){
      pageIndex=pageInt;
      showPage =  const Cart();
    }
    if(pageInt == 2){
      pageIndex=pageInt;
      showPage =  const HomePage();
    }
    if(pageInt == 3){
      pageIndex=pageInt;
      showPage =  const Favorite();
    }
    if(pageInt == 4){
      pageIndex=pageInt;
      showPage =  const SettingScreen();
    }
  }

  @override
  void onInit() {

    super.onInit();
  }

}