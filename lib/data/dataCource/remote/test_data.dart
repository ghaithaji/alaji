
import '../../../api.dart';
import '../../../core/class/RequestApiCrud.dart';

class TestData{

  Crud crud ;
  TestData(this.crud);
   
  getData()async{
    var response = await crud.getData(AppApi.home, {}, '');
   return response.fold((l) => l, (r) => r);
  }
   
}