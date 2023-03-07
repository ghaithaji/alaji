
import 'package:alaji_new/core/constant/appRoute.dart';
import 'package:alaji_new/core/services/services.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

import '../core/class/status_request.dart';
import '../core/functions/handling_data.dart';
import '../data/dataCource/remote/auth/login_data.dart';

abstract class LogInController extends GetxController{

  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  GlobalKey<FormState> scaffoldKey = GlobalKey<FormState>();

  PhoneNumber number = PhoneNumber(isoCode: 'SY');

  MyServices myServices =Get.find();
}

class LogInControllerTmp extends LogInController{


  //لاظهار كلمات واخفائها في حقل باسسورد
  bool isShowPassword = true;
  showPassword(){
    isShowPassword = isShowPassword ==true ?false:true;
    update();
  }

  late StatusRequest statusRequest = StatusRequest.none;
  LoginData loginData = LoginData(Get.find());

  login()async{
    print(email.text);
    print(password.text);
    var formData = scaffoldKey.currentState;
    if(formData!.validate()){
      statusRequest = StatusRequest.loading;
      update();
      var responseSingIn = await loginData.postData(email: email.text, password: password.text);
      statusRequest = handlingData(responseSingIn);
      if(StatusRequest.success == statusRequest){
        if(responseSingIn['message'] == "ERROR Password"){
          return Get.defaultDialog(title: "تنبيه" , middleText: "wrongPassword".tr);
        }
        if(responseSingIn['data'] == "Invalid email"){
          return Get.defaultDialog(title: "تنبيه" , middleText: "AccountNotAvailable".tr);
        }
        if(responseSingIn['success']==1){
          myServices.sharedPreferences.setInt('id', responseSingIn['data']['id']);
          myServices.sharedPreferences.setString('username', responseSingIn['data']['username']);
          myServices.sharedPreferences.setString('email', responseSingIn['data']['email']);
          myServices.sharedPreferences.setInt('admin', responseSingIn['data']['admin']);
          myServices.sharedPreferences.setInt('user_price', responseSingIn['data']['user_price']);
          myServices.sharedPreferences.setString('tokenFb', responseSingIn['data']['token']);
          myServices.sharedPreferences.setString('tokenUser', responseSingIn['token']);
          myServices.sharedPreferences.setString('onBoarding', '1');
          Get.offAllNamed(AppRoute.homePage);
        }
      }
      update();


    }else{
      print('no');
    }
  }

  toSingIn(){
  Get.offNamed(AppRoute.singUp);
  }



}