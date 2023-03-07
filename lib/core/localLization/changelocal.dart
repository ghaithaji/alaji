import 'package:alaji_new/core/services/services.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';



// اللغة
class localController extends GetxController{
  Locale? language;

  MyServices myServices =Get.find();



  changeLang(String codeLang){
    Locale locale = Locale(codeLang);
    myServices.sharedPreferences.setString("lang", codeLang);

    Get.updateLocale(locale);
  }

  @override
  // sharedPreferences تخزين في
  void onInit() {
    String ? sharedPrefLang = myServices.sharedPreferences.getString("lang");
    if(sharedPrefLang =="ar"){
      language = const Locale("ar");
    }else if(sharedPrefLang =="en"){
      language = const Locale("en");
    }else{
      language=Locale(Get.deviceLocale!.languageCode);
    }
    super.onInit();
  }
}