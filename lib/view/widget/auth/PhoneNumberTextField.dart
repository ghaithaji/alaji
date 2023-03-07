import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

import '../../../controller/loginController.dart';
import '../../../controller/singUpController.dart';

class PhoneNumberTextField extends GetView<SingUpControllerTmp> {
  const PhoneNumberTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(SingUpControllerTmp());
    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        //  height: size.width / 8,

        width: size.width / 1.25,
        alignment: Alignment.center,
        padding: EdgeInsets.only(right: size.width / 30,left: 10),
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(.1),
          borderRadius: BorderRadius.circular(20),
          border: Border.all(   // Container حواف حول
            color:  Colors.black.withOpacity(.7), // لون الحواف
            width: 1, // سماكة الحواف
          ),
        ),
        child:  GetBuilder<
            LogInControllerTmp>(
          builder: (controllers) => InternationalPhoneNumberInput(
            onInputChanged: (PhoneNumber number) {
              //  print(number.phoneNumber);
              print('156');
              print(number.phoneNumber);
              print(number.dialCode);
              controller.dialCode = number.dialCode.toString();
            },
            onSaved: (PhoneNumber number) {
              print('15');
              print(number.dialCode);
              print(number.phoneNumber);
              controller.dialCode = number.dialCode.toString();

            },
            textFieldController: controllers.email,
            formatInput: false,
            selectorConfig: SelectorConfig(
              selectorType: PhoneInputSelectorType.DIALOG,
            ),
            initialValue:controller.number,
            errorMessage: "invalid phone number ",
            //autofillHints: ,
            inputDecoration: InputDecoration(
              hintText: 'EnterYourPhone'.tr,
              contentPadding: EdgeInsets.all(5),
              hintStyle: TextStyle(
                fontSize: 14,
                color: Colors.white.withOpacity(.5),
              ),
              // filled: true,

              border: InputBorder.none ,

              errorStyle: TextStyle(height: 0,),

            ),

          ),
        )
      ),
    );
  }
}
