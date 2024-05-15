import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:tk_mart/features/authentication/controllers/onboarding_controller.dart';
import 'package:tk_mart/utils/constants/colors.dart';
import 'package:tk_mart/utils/constants/sizes.dart';
import 'package:tk_mart/utils/device/device_utility.dart';
import 'package:tk_mart/utils/helpers/helper_functions.dart';

class OnBoardingDotNavigation extends StatelessWidget {

  const OnBoardingDotNavigation({

    super.key,

  });

  @override
  Widget build(BuildContext context) {

    final dark = TKMartHelperFunctions.isDarkMode(context);
    final controller = OnBoardingController.instance;
    return Positioned(

        bottom: TKMartDeviceUtils.getBottomNavigationBarHeight() + 25,
        left: TKMartSizes.defaultSpace,
        child: SmoothPageIndicator(controller: controller.pageController, onDotClicked: controller.dotNavigationClick, count: 3,effect: ExpandingDotsEffect(activeDotColor: dark ? TKMartColors.light : TKMartColors.dark, dotHeight: 6)),

    );
  }
}