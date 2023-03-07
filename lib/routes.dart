import 'package:alaji_new/core/middleware/my_middleware.dart';
import 'package:alaji_new/view/bottom_bar_home/bottom_bar.dart';
import 'package:alaji_new/view/screen/SettingScreen/setting.dart';
import 'package:alaji_new/view/screen/auth/singup.dart';
import 'package:alaji_new/view/screen/cart/cart.dart';
import 'package:alaji_new/view/screen/categories/categories.dart';
import 'package:alaji_new/view/screen/favorite/favorite.dart';
import 'package:alaji_new/view/screen/homPage/home_page.dart';
import 'package:alaji_new/view/test_view.dart';

import '../../core/constant/appRoute.dart';
import 'package:get/get.dart';
import 'view/screen/auth/login.dart';

List  <GetPage<dynamic>>? routes =[
  GetPage(name: "/", page: ()=> LogIn(),middlewares: [
    MyMiddleware(),
  ]), // بداية تشغيل تطبيق هنا
  GetPage(name: AppRoute.login, page: ()=> LogIn()),
  GetPage(name: AppRoute.singUp, page: ()=> SingUp()),
  GetPage(name: AppRoute.homePage, page: ()=> HomePage()),
  GetPage(name: AppRoute.bottomBar, page: ()=> BottomBar()),
  GetPage(name: AppRoute.Cart, page: ()=> Cart()),
  GetPage(name: AppRoute.Categories, page: ()=> Categories()),
  GetPage(name: AppRoute.Favorite, page: ()=> Favorite()),
  GetPage(name: AppRoute.SettingScreen, page: ()=> SettingScreen()),
];

