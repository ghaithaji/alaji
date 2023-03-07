import 'dart:ui';
import '../../../core/class/handling_data_view.dart';
import '../../../core/functions/valid_input.dart';
import '../../../core/functions/alert_exit_app.dart';
import '../../widget/auth/PhoneNumberTextField.dart';
import '../../widget/auth/buttonAuth.dart';
import '../../widget/auth/imageAuthThemeLight.dart';
import '../../widget/auth/registerButtonAuth.dart';
import '../../widget/auth/text_field_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controller/loginController.dart';

class LogIn extends StatelessWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => LogInControllerTmp());
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: WillPopScope(
        onWillPop: alertExitApp,
        child: GetBuilder<LogInControllerTmp>(
          builder: (controller)=>
              HandlingDataRequest(
                statusRequest: controller.statusRequest,
                widget: Form(
              key: controller.scaffoldKey,
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
                                                GetBuilder<
                                                        LogInControllerTmp>(
                                                      builder: (controller) =>
                                                          TextFieldAuth(
                                                        iconData: Icons.lock_outline,
                                                        isPassword: controller.isShowPassword,
                                                        hintText: 'password'.tr,
                                                        textEditingController: controller.password,
                                                        onTapIcon: () {
                                                          controller.showPassword();
                                                        },
                                                        showPasswordIcon: true,
                                                        validator: (val){
                                                          return validInput(val!, 4, 30, "passwordSingIn");
                                                        },
                                                      ),
                                                    ),
                                                Row(
                                                  children: [
                                                    RegisterAuth(
                                                        text: 'RegisterNow'.tr,
                                                        onTap: () {
                                                          controller.toSingIn();
                                                        }),
                                                  ],
                                                ),
                                                SizedBox(height: size.width * .3),
                                                ButtonAuth(
                                                    text: 'SingIn'.tr,
                                                    onTap: () {
                                                      controller.login();
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
