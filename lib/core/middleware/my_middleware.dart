import 'package:alaji_new/core/constant/appRoute.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../services/services.dart';

// لحفظ تسجيل الدخول للمستخدم والثيم
class MyMiddleware extends GetMiddleware{

  @override
  int? get priority => 1;

  MyServices myServices =Get.find();


  @override
  RouteSettings? redirect(String? route){
    if(myServices.sharedPreferences.getString("onBoarding") =="1"){
      return RouteSettings(name: AppRoute.bottomBar);
    }
  }
}