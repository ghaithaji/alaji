import 'package:flutter/material.dart';
import 'package:get/get.dart';
var password ;
validInput(String val,int min,int max,String type){


  if(type == "password"){
    password = val;
    return;
  }

  if(type == "confirmPassword"){
    if(password != val){
      return "passwordDoesNotMatch".tr;
    }
  }

  if(val.length < min){
    return " لايمكن ان تكون القيمة اصغر من$min";
  }

  if(val.length > max){
    return " لايمكن ان تكون القيمة اكبر من $max";
  }

  if(val.isEmpty){
    return "لايمكن الحقل ان يكون فارغ";
  }
}
