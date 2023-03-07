import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterAuth extends StatelessWidget {
  final String text ;
  final void Function() onTap;
  const RegisterAuth({Key? key, required this.text, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 25),
      child: InkWell(
        onTap: onTap,
          child:
          Text('RegisterNow'.tr,
            textAlign: TextAlign.start,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold
            ),)
      ),
    );
  }
}
