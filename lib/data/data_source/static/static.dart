import 'package:ecommerce/core/constant/app_strings.dart';
import 'package:ecommerce/core/constant/image_asset.dart';
import 'package:ecommerce/data/model/on_boarding_model.dart';
import 'package:get/get.dart';

List<OnBoardingModel> onBoardingList = [
  OnBoardingModel(
    title: AppStrings.chooseProduct.tr,
    body: AppStrings.chooseYourProductFrom.tr,
    image: AppImageAsset.onBoardingImageOne,
  ),
  OnBoardingModel(
    title: AppStrings.easySafePayment.tr,
    body: AppStrings.easySafePaymentExplain.tr,
    image: AppImageAsset.onBoardingImageTwo,
  ),
  OnBoardingModel(
    title: AppStrings.trackYourOrder.tr,
    body: AppStrings.bestTrackerExplain.tr,
    image: AppImageAsset.onBoardingImageThree,
  ),
  OnBoardingModel(
    title: AppStrings.fastDelivery.tr,
    body: AppStrings.fastDeliveryExplain.tr,
    image: AppImageAsset.onBoardingImageFour,
  ),
];
