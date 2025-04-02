import 'package:ecommerce/core/constant/image_asset.dart';
import 'package:ecommerce/data/model/on_boarding_model.dart';

List<OnBoardingModel> onBoardingList = [
  OnBoardingModel(
    title: "Choose a product",
    body: "We Have a 100k Product, choose\nyour product from our shop",
    image: ImageAsset.onBoardingImageOne,
  ),
  OnBoardingModel(
    title: "Easy & Safe Payment",
    body: "Easy Checkout & Safe Payment\n method. Trusted by our Customers\n from all over the world",
    image: ImageAsset.onBoardingImageTwo,
  ),
  OnBoardingModel(
    title: "Track Your Order",
    body: "Best Tracker has been Used For\nTrack your order. You'll know where\nyour product is at the moment",
    image: ImageAsset.onBoardingImageThree,
  ),
  OnBoardingModel(
    title: "Fast Delivery",
    body: "Reliable And Fast Delivery. We\nDeliver your product the fastest\nway possible",
    image: ImageAsset.onBoardingImageFour,
  ),
];
