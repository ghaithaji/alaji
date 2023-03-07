import 'dart:ui';
import '../../../controller/singUpController.dart';
import '../../../core/class/handling_data_view.dart';
import '../../../core/constant/appRoute.dart';
import '../../../core/functions/valid_input.dart';
import '../../widget/auth/PhoneNumberTextField.dart';
import '../../widget/auth/buttonAuth.dart';
import '../../widget/auth/imageAuthThemeLight.dart';
import '../../widget/auth/text_field_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SingUp extends StatelessWidget {
  const SingUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => SingUpControllerTmp());
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: WillPopScope(
        onWillPop:()async{
          Get.offNamed(AppRoute.login);
          return false;
          },
        child: GetBuilder<SingUpControllerTmp>(
          builder: (SingUpController)=>
              HandlingDataRequest(
                statusRequest: SingUpController.statusRequest,
                widget: Form(
                  key: SingUpController.scaffoldKey,
                  child: ScrollConfiguration(
                    behavior: MyBehavior(),
                    child: SingleChildScrollView(
                      child: SizedBox(
                        height: size.height,
                        child: Stack(
                          children: [
                            // (themeProvider.themeMode.name =='light')?
                            // imageAuthThemeLight() :
                            // imageAuthThemeDark(),

                            imageAuthThemeLight(),
                            Center(
                              child: Column(
                                children: [
                                  Expanded(
                                    child: SizedBox(),
                                  ),
                                  Expanded(
                                    flex: 7,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(30),
                                      child: BackdropFilter(
                                        filter: ImageFilter.blur(sigmaY: 25, sigmaX: 25),
                                        child: SizedBox(
                                            width: size.width * .9,
                                            child: ListView(
                                              children: [
                                                Column(
                                                  mainAxisAlignment:
                                                  MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                        top: size.width * .15,
                                                        bottom: size.width * .1,
                                                      ),
                                                      child: Text(
                                                        'SingIn'.tr,
                                                        style: TextStyle(
                                                          fontSize: 25,
                                                          fontWeight: FontWeight.w600,
                                                          color: Colors.white
                                                              .withOpacity(.8),
                                                        ),
                                                      ),
                                                    ),
                                                    PhoneNumberTextField(),
                                                    TextFieldAuth(
                                                      iconData: Icons.supervised_user_circle_rounded,
                                                      hintText: 'name'.tr,
                                                      textEditingController: SingUpController.name,
                                                      showPasswordIcon: false,
                                                      validator: (val){
                                                        return validInput(val!, 3, 30, "username");
                                                      },
                                                    ),
                                                     GetBuilder<
                                                            SingUpControllerTmp>(
                                                          builder: (SingUpController) =>
                                                              TextFieldAuth(
                                                                iconData: Icons.lock_outline,
                                                                isPassword: SingUpController.isShowPassword,
                                                                hintText: 'password'.tr,
                                                                textEditingController: SingUpController.password,
                                                                onTapIcon: () {
                                                                  SingUpController.showPassword();
                                                                },
                                                                showPasswordIcon: true,
                                                                validator: (val){
                                                                  return validInput(val!, 4, 30, "password");
                                                                },
                                                              ),
                                                        ),
                                                    GetBuilder<
                                                        SingUpControllerTmp>(
                                                      builder: (SingUpController) =>
                                                          TextFieldAuth(
                                                            iconData: Icons.lock_outline,
                                                            isPassword: SingUpController.isShowConfirmPassword,
                                                            hintText: 'confirmPassword'.tr,
                                                            textEditingController: SingUpController.confirmPassword,
                                                            onTapIcon: () {
                                                              SingUpController.ShowConfirmPassword();
                                                            },
                                                            showPasswordIcon: true,
                                                            validator: (val){
                                                              return validInput(val!, 4, 30, "confirmPassword");
                                                            },
                                                          ),
                                                    ),

                                                    SizedBox(height: size.width * .3),
                                                    ButtonAuth(
                                                        text: 'createAccount'.tr,
                                                        onTap: () {
                                                          SingUpController.SingUp();
                                                        }),
                                                  ],
                                                ),
                                              ],
                                            )),
                                      ),
                                    ),
                                  ),

                                  Expanded(
                                    child: SizedBox(),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
        ),
      ),
    );
  }
}

class MyBehavior extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
      BuildContext context,
      Widget child,
      AxisDirection axisDirection,
      ) {
    return child;
  }
}
