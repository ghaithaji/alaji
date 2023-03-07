
enum StatusRequest{
  none,
  loading, //انتظار
  success, // نجاح
  failure, //فشل مثل اذا كان بريد مكرر او كلمة السر خطأ
  serverFailure , // فشل سيرفر
  offLineFailure , // لايوجد نت

}