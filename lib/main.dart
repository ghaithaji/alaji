import 'package:alaji_new/binding.dart';
import 'package:alaji_new/controller/theme_controller.dart';

import '../core/services/services.dart';
import '../view/screen/auth/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'core/constant/apptheme.dart';
import 'core/localLization/changelocal.dart';
import 'core/localLization/translation.dart';
import 'routes.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices(); // تشغيل مكتبات المهمة في بداية التطبيق
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    localController controller =   Get.put(localController()); //اللغة
    ThemeController themeController =   Get.put(ThemeController()); //theme
    return GetMaterialApp(
      locale: controller.language, //اللغة
      translations: MyTranslation(), // اللغة
      themeMode: themeController.themeMode,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      //home: const LogIn(),
      getPages: routes,
      initialBinding: initialBinding(),
    );
  }
}


