import 'package:alaji_new/controller/test_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../core/class/handling_data_view.dart';
import '../core/constant/imageAsset.dart';

class TestView extends StatelessWidget {
  const TestView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(TestController());
    return Scaffold(
      body: GetBuilder<TestController>(
        builder: (controller){
          return HandlingDataView(
            statusRequest:controller.statusRequest ,
              loading: Lottie.asset(AppImageAsset.loading,width: 250,height: 250),
              widget: ListView.builder(
                  itemCount: controller.data.length,
                  itemBuilder: (context,index){
                    return Text("${controller.data}");
                  }),
          );
        },
      ),
    );
  }
}
