
import 'package:get/get.dart';

import 'core/services/services.dart';

class AppApi{

 static const String server = "http://192.168.191.1:3000";
 // const String server = "https://alaji-syria.com/nodejsapp";


 //======================== Image ==========================
 static const String imageProductUrl = "$server/image/product/";//رابط منتجات الصور


 // ====================== Auth ===============================

 static const String auth = "$server/api/users/";
 static const String login = "$server/api/users/login/";


 // ========================== home ==============================

 static const String home = "$server/api/product/getDataHome/";
}