import 'package:flutter/material.dart';

import '../../../core/constant/imageAsset.dart';

class imageAuthThemeDark extends StatelessWidget {
  const imageAuthThemeDark({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      decoration: BoxDecoration(
        image:  DecorationImage(
            image: AssetImage(AppImageAsset.imageLogin2), fit: BoxFit.cover),
        gradient: LinearGradient(
            colors: [Colors.green[400]!, Colors.blue],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter),
      ),
    );
  }
}
