import 'package:flutter/material.dart';
import '../../../core/constant/imageAsset.dart';

class imageAuthThemeLight extends StatelessWidget {
  const imageAuthThemeLight({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      decoration: BoxDecoration(
        image:  DecorationImage(
            image: AssetImage(AppImageAsset.imageLogin), fit: BoxFit.cover),
        color: Theme.of(context).primaryColor,
      ),
    );
  }
}
