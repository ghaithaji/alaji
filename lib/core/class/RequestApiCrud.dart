import 'dart:convert';
import 'package:alaji_new/core/class/status_request.dart';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;

// عمليات الحذف والاضافة والتعديل على قاعدة البيانات
class Crud {

  Future<Either<StatusRequest,Map>> getData(String url ,Map data,String token)async{
  try{
    //if (await checkInternet()){
      var response = await http.get(Uri.parse(url),
          headers: {
            'Content-Type':'application/json',
            "token":token,
          },

          );
      if(response.statusCode == 200 || response.statusCode == 201){
        Map responseBody = jsonDecode(response.body);
        return right(responseBody);
      }else{
        print(response.statusCode);
        return left(StatusRequest.serverFailure);
      }

    // }else{
    //   return left(StatusRequest.offLineFailure);
    // }

  }catch(_){
   print('12');
    return left(StatusRequest.serverFailure);
  }

  }


  Future<Either<StatusRequest,Map>> postData(
      {required String url, required Map data, required String token})async{
    try{
      //if (await checkInternet()){
      var response = await http.post(Uri.parse(url),
          headers: {
            'Content-Type':'application/json',
            "token":token,
          },
      body: jsonEncode(data),
      );

      if(response.statusCode == 200 || response.statusCode == 201){
        Map responseBody = jsonDecode(response.body);
        return right(responseBody);
      }else{
        print(response.statusCode);
        return left(StatusRequest.serverFailure);
      }

      // }else{
      //   return left(StatusRequest.offLineFailure);
      // }

    }catch(_){
      print('12');

      return left(StatusRequest.serverFailure);
    }

  }
}