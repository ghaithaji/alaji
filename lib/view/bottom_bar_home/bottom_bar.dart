import 'package:badges/badges.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

import '../../controller/bottom_bar_controller.dart';
import '../../controller/home_controller.dart';
import '../widget/Home/bottom_navigation.dart';
class BottomBar extends StatelessWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size =  MediaQuery.of(context).size;
    return  GetBuilder<BottomBarController>(
      builder: (bottomBarController)=>
     Scaffold(
        body: Stack(
          children: [
            Container(
              color: Colors.blue,
              child: Center(
                child: bottomBarController.showPage,
              ),
            ),
            Positioned(
              bottom: 20,
              child: Container(
                  width: size.width,
                  child: Align(
                      alignment: Alignment.center,
                      child: BottomNavigation(index: bottomBarController.pageIndex)
                  )
              ),
            ),
          ],
        ),
      ),
    );
  }
}
