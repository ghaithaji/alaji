import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../controller/bottom_bar_controller.dart';
import '../../../core/constant/appRoute.dart';
import '../../../core/constant/imageAsset.dart';

class BottomNavigation extends StatelessWidget{

  final int index;

  BottomNavigation({ required this.index });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BottomBarController>(

      builder: (bottomBarController)=> AnimatedOpacity(
        duration: Duration(milliseconds: 250),
        opacity: 1,//( state.showMenuHome ) ? 1 : 0,
        child: Container(
          height: 60,
          width: 320,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15.0),
              boxShadow: [
                BoxShadow(color: Colors.black38, blurRadius: 10, spreadRadius: -5)
              ]
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _ItemButton(
                i: 2,
                index: bottomBarController.pageIndex,
                iconString: AppImageAsset.imageHome,
                onPressed: () {
                 // Get.offAllNamed(AppRoute.homePage);
                  bottomBarController.pageInt(2);
               bottomBarController.showPage = bottomBarController.pageChooser(bottomBarController.pageIndex);
                },
              ),
              _ItemButton(
                i: 3,
                index: bottomBarController.pageIndex,
                iconString: AppImageAsset.imageFavorite,
                onPressed: () {
                //  Get.offAllNamed(AppRoute.Favorite);
                  bottomBarController.pageInt(3);
                  bottomBarController.showPage = bottomBarController.pageChooser(bottomBarController.pageIndex);
                },
              ),
              CenterIcon(
                index: bottomBarController.pageIndex,
                iconString: AppImageAsset.imageBolso,
                onPressed: () {
                 // Get.offAllNamed(AppRoute.Cart);
                  bottomBarController.pageInt(1);
                  bottomBarController.showPage = bottomBarController.pageChooser(bottomBarController.pageIndex);
                },
              ),
              _ItemButton(
                i: 4,
                index: bottomBarController.pageIndex,
                iconString: AppImageAsset.imageSearch,
                onPressed: () {
                  bottomBarController.pageInt(4);
                  bottomBarController.showPage = bottomBarController.pageChooser(bottomBarController.pageIndex);
                },
              ),
              _ItemProfile(onPressed: (){
                bottomBarController.pageInt(4);
                bottomBarController.showPage = bottomBarController.pageChooser(bottomBarController.pageIndex);
              },)
            ],
          ),
        ),
      ),
    );
  }
}

class _ItemProfile extends StatelessWidget {
  final Function() onPressed;
  const _ItemProfile({
  Key? key,
  required this.onPressed});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onPressed,
      child:  CircleAvatar(
          radius: 18,
          backgroundImage: AssetImage(AppImageAsset.imageProfile ),
          child: CircularProgressIndicator(strokeWidth: 2)
      )

    );
  }
}

class CenterIcon extends StatelessWidget {

  final int index;
  final String iconString;
  final Function() onPressed;

  const CenterIcon({
    Key? key,
    required this.index,
    required this.iconString,
    required this.onPressed
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: CircleAvatar(
        backgroundColor: Color(0xff006cf2),
        radius: 26,
        child: SvgPicture.asset( iconString , height: 26, color: index == 1 ? Colors.white : Colors.black87 ),
      ),
    );
  }
}


class _ItemButton extends StatelessWidget {

  final int i;
  final int index;
  final String iconString;
  final Function() onPressed;

  const _ItemButton({
    Key? key,
    required this.i,
    required this.index,
    required this.onPressed,
    required this.iconString
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
          child:  SvgPicture.asset(
              iconString,
              height: 25,
              color: ( i == index ) ? Color(0xff006cf2) : Colors.black87
          )
      ),
    );
  }
}