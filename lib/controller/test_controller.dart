
import 'package:get/get.dart';

import '../core/class/status_request.dart';
import '../core/functions/handling_data.dart';
import '../data/dataCource/remote/test_data.dart';

class TestController extends GetxController{

  TestData testData = TestData(Get.find());  //   يتم حقن كلاس Crud عن طريق استداء  الكلاس من البايدنك الموجودة فيها الكلاس

  List data = [];

  late StatusRequest statusRequest;

  getData()async{
    statusRequest = StatusRequest.loading;
    var response = await testData.getData();
    print(response);
    statusRequest = handlingData(response);
    if(StatusRequest.success == statusRequest){
      if(response['success']==1){
        data.addAll(response['data']);
      }else{
        statusRequest = StatusRequest.failure;
      }
    }
    update();
  }

  @override
  void onInit() {
    getData();
    super.onInit();
  }

}