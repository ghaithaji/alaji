
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:get/get.dart';

import '../core/class/status_request.dart';
import '../core/functions/handling_data.dart';
import '../core/services/services.dart';
import '../data/dataCource/remote/home/home_data.dart';


import 'package:package_info_plus/package_info_plus.dart';

abstract class HomeController extends GetxController{

  initialData();
  getData();

}

class HomeControllerImp extends HomeController {

  MyServices myServices = Get.find();
  HomeData homeData = HomeData(Get.find());
  int? userId ;
  int? userPrice;
  int? admin ;
  List productAppBar = [];
  List productOffers = [];
  List productMiscellaneous = [];
  List productNew = [];
  List productBestSeller = [];
  List versionList = [];
  bool versionBool = false;
  late StatusRequest statusRequest;

  @override
  initialData(){
    userId = myServices.sharedPreferences.getInt("id");
    userPrice = myServices.sharedPreferences.getInt("user_price");
    admin = myServices.sharedPreferences.getInt("admin");
  }



//معرفة اصدار التطبيق
  void getAppInfo()async{
    PackageInfo packageInfo = await PackageInfo.fromPlatform();
     myServices.sharedPreferences.setString('versionApp', packageInfo.version);
    if(versionList.isNotEmpty){
      myServices.sharedPreferences.setString('version', versionList[0]['version']);
      myServices.sharedPreferences.setString('versionUrl', versionList[0]['version_url']);
      if(myServices.sharedPreferences.getString('versionApp')!= myServices.sharedPreferences.getString('version')){
        versionBool = true;
      }else{
        versionBool = false;
      }
    }
  update();
  }


  // وضع مستخدم في مجموعة حسب صلاحية لارسال اشعار له
  void fb()async{
    if(admin == 2){
      await FirebaseMessaging.instance.subscribeToTopic('admin');
    }
    if(admin == 3){
      await FirebaseMessaging.instance.subscribeToTopic('delivery');
    }
    await FirebaseMessaging.instance.subscribeToTopic('user');
  }


  @override
  void onInit() {
    initialData();
    getData();
    //fb();
    super.onInit();
  }



  @override
  getData()async {
    statusRequest = StatusRequest.loading;
    var response = await homeData.getData(userId.toString());
    print(response);
    statusRequest = handlingData(response);
    if(StatusRequest.success == statusRequest){
      if(response['success']==1){
        productAppBar.addAll(response['data']['productsAppBar']);
         productOffers.addAll(response['data']['productOffers']);
         productMiscellaneous.addAll(response['data']['productMiscellaneous']);
         productNew.addAll(response['data']['productNew']);
         productBestSeller.addAll(response['data']['productBestSeller']);
         versionList.addAll(response['data']['version']);

        getAppInfo();
      }else{
        statusRequest = StatusRequest.failure;
      }
    }
    update();

  }
}