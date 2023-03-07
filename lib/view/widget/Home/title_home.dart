
import 'package:get/get.dart';
import 'package:flutter/material.dart';


class TitleHome extends StatelessWidget {
  final String title;
  final Function()? onPressed;
  const TitleHome({Key? key, required this.title,required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const double KdeFaultPadding = 20.0;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: KdeFaultPadding),
      child: Row(children: <Widget>[
        TitleWithCustomUnderline(text: title),
        const Spacer(),
        ElevatedButton(
          style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
              ),
            ),
            backgroundColor:
            MaterialStateProperty.all<Color>(Theme.of(context).disabledColor),
          ),
          onPressed: onPressed,
          child: Text(
            "More".tr,

          ),
        ),
      ]),
    );
  }
}


class TitleWithCustomUnderline extends StatelessWidget {
  const TitleWithCustomUnderline({
    Key? key,
    this.text,
  }) : super(key: key);

  final String? text;

  @override
  Widget build(BuildContext context) {
    const double KdeFaultPadding = 20.0;
    return SizedBox(
      height: 35,
      child: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: KdeFaultPadding / 4),
            child: Text(
              text!,
              style: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              margin: const EdgeInsets.only(right: KdeFaultPadding / 4),
              height: 7,
            ),
          )
        ],
      ),
    );
  }
}
