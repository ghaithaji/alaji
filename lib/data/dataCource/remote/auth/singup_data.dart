


import '../../../../api.dart';
import '../../../../core/class/RequestApiCrud.dart';

class SignupData{

  Crud crud ;
  SignupData(this.crud);

  postData({
    required String email,
    required String password,
    required String username,
    required String? dialCode,
  })async{
    var response = await crud.postData(url:AppApi.auth.toString(),
        data:{
          "email":email,
          "password":password,
          "username":username,
          "dialCode":dialCode,
        },
     token:'');
    return response.fold((l) => l, (r) => r);
  }

}