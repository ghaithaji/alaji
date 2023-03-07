


import '../../../../api.dart';
import '../../../../core/class/RequestApiCrud.dart';

class LoginData{

  Crud crud ;
  LoginData(this.crud);

  postData({
    required String email,
    required String password,
  })async{
    var response = await crud.postData(url:AppApi.login.toString(),
        data:{
          "email":email,
          "password":password,
          "token":'',
        },
        token:'');
    return response.fold((l) => l, (r) => r);
  }

}