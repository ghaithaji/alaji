import 'package:flutter/material.dart';

class TextFieldAuth extends StatelessWidget {
  final String hintText;
  final IconData iconData;
  final TextEditingController textEditingController;
  final bool? isPassword ;
  final bool? showPasswordIcon;
  final Function()? onTapIcon;
  final String? Function(String?) validator;
  const TextFieldAuth({Key? key,this.onTapIcon, required this.hintText, required this.iconData, required this.textEditingController,  this.isPassword, this.showPasswordIcon, required this.validator}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    bool boolPassword = isPassword==null||isPassword==false  ? false:true;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: size.width / 1.25,
        alignment: Alignment.center,
        child: TextFormField(
          style: TextStyle(
            color: Colors.white.withOpacity(.9),
          ),
          controller: textEditingController,
          obscureText: boolPassword ,
          keyboardType:  TextInputType.text,
          validator: validator,
          decoration: InputDecoration(
            contentPadding:  EdgeInsets.symmetric(vertical: 5,horizontal: 15),
            border: OutlineInputBorder(
              borderSide:  BorderSide(color: Colors.black.withOpacity(.1),),
              borderRadius: BorderRadius.circular(20),
            ),
            errorStyle:TextStyle(
              fontSize: 14,
              color: Colors.red,
            ),
            prefixIcon: Icon(
              iconData,
              color: Colors.white.withOpacity(.8),
            ),

            //  border: InputBorder.none,
            hintMaxLines: 1,
            hintText: hintText,
            filled: true,
           // errorStyle: TextStyle(height: 0),
            suffixIcon:showPasswordIcon??false? Padding(
              padding: const EdgeInsets.all(2),
              child: GestureDetector(
                onTap: onTapIcon,
                child: Icon(boolPassword ? Icons.visibility_off_rounded:Icons.visibility_rounded),

              ),
            ):Container(width: 0,),
            hintStyle: TextStyle(
              fontSize: 14,
              color: Colors.white.withOpacity(.5),
            ),
          ),
        ),
      ),
    );
  }
}
