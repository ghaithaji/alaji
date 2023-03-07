import 'package:flutter/material.dart';

class ButtonAuth extends StatelessWidget {
  final String text ;
  final void Function() onTap;
  const ButtonAuth({Key? key, required this.text, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return  InkWell(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(
          bottom: size.width * .05,
        ),
        height: size.width / 8,
        width: size.width / 1.25,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(.1),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
