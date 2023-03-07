import 'package:alaji_new/core/class/status_request.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../constant/imageAsset.dart';

class HandlingDataView extends StatelessWidget {
  final StatusRequest statusRequest;
  final Widget widget;
  final Widget loading;
  const HandlingDataView({Key? key, required this.statusRequest, required this.widget, required this.loading}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      statusRequest == StatusRequest.loading ?
      Center(child: loading): // Lottie.asset(AppImageAsset.loading,width: 250,height: 250)
      statusRequest == StatusRequest.offLineFailure?
      Center(child: Lottie.asset(AppImageAsset.offline,width: 250,height: 250)):
      statusRequest == StatusRequest.serverFailure?
      Center(child: Lottie.asset(AppImageAsset.server,width: 250,height: 250)):
      statusRequest == StatusRequest.failure?
      Center(child: Lottie.asset(AppImageAsset.noData,width: 250,height: 250)):
          widget;
  }
}

class HandlingDataRequest extends StatelessWidget {
  final StatusRequest statusRequest;
  final Widget widget;
  const HandlingDataRequest({Key? key, required this.statusRequest, required this.widget}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      statusRequest == StatusRequest.loading ?
      Center(child:  CircularProgressIndicator()):
      statusRequest == StatusRequest.offLineFailure?
      Center(child:  CircularProgressIndicator()):
      statusRequest == StatusRequest.serverFailure?
      Center(child:  CircularProgressIndicator()):
      statusRequest == StatusRequest.failure?
      Center(child:  CircularProgressIndicator()):
      widget;
  }
}