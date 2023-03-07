
import '../../../../api.dart';
import '../../../../core/class/RequestApiCrud.dart';


class HomeData{

  Crud crud ;
  HomeData(this.crud);

  getData(String id)async{
    var response = await crud.getData(AppApi.home + id, {}, '');
    return response.fold((l) => l, (r) => r);
  }

}