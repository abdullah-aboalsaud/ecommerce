import 'package:ecommerce/core/class/status_request.dart';
import 'package:ecommerce/core/constant/image_asset.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class HandlingDataView extends StatelessWidget {
  final StatusRequest statusRequest;
  final Widget widget;
  const HandlingDataView(
      {super.key, required this.statusRequest, required this.widget});

  @override
  Widget build(BuildContext context) {
    return statusRequest == StatusRequest.loading
        ?   Center(child: Lottie.asset(AppImageAsset.loadingLottie , width: 250 , height: 250))
        : statusRequest == StatusRequest.offlineFailure
        ? Center(child: Lottie.asset(AppImageAsset.offline , width: 250 , height: 250))
        : statusRequest == StatusRequest.serverFailure
        ?Center(child: Lottie.asset(AppImageAsset.server , width: 250 , height: 250))
        : statusRequest == StatusRequest.failure
        ? Center(child: Lottie.asset(AppImageAsset.noData , width: 250 , height: 250 , repeat: true  ))
        : widget;
  }
}