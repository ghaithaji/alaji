import 'package:alaji_new/core/class/RequestApiCrud.dart';
import 'package:get/get.dart';

import 'controller/bottom_bar_controller.dart';

class initialBinding extends Bindings{
  @override
  void dependencies() {
    Get.put(Crud());
    Get.put(BottomBarController());
  }


}
