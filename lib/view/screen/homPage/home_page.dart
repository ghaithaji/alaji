import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';


import '../../../controller/home_controller.dart';
import '../../../core/class/handling_data_view.dart';
import '../../../core/constant/imageAsset.dart';
import '../../widget/Home/app_bar_home.dart';
import '../../widget/Home/bottom_navigation.dart';
import '../../widget/Home/product_home.dart';
import '../../widget/Home/title_home.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     Get.put(HomeControllerImp());
    return GetBuilder<HomeControllerImp>(
      builder: (controller)=>
         HandlingDataView(
            statusRequest:controller.statusRequest ,
            loading: Lottie.asset(AppImageAsset.loading,width: 250,height: 250),
            widget: SingleChildScrollView(
                physics: const ScrollPhysics(),
                child:Column(
                  children: [
                    AppbarCarouselWidget(),
                    TitleHome(
                      title: "offers".tr,
                      onPressed: (){
                        //4
                      },
                    ),
                    ProductHome(productList: controller.productOffers),
                    TitleHome(
                      title: "Miscellaneous".tr,
                      onPressed: (){
                        //5
                      },
                    ),
                    ProductHome(productList: controller.productMiscellaneous),
                    TitleHome(
                      title: "mostWanted".tr,
                      onPressed: (){
                        //6
                      },
                    ),
                    ProductHome(productList: controller.productBestSeller),
                    TitleHome(
                      title: "New".tr,
                      onPressed: (){
                        //7
                      },
                    ),
                    ProductHome(productList: controller.productNew),


                  ],
                )
            ),
          ),
    );
  }
}
