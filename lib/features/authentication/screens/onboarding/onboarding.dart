import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:tk_mart/features/authentication/controllers/onboarding_controller.dart';
import 'package:tk_mart/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:tk_mart/features/authentication/screens/onboarding/widgets/onboarding_next_button.dart';
import 'package:tk_mart/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:tk_mart/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:tk_mart/utils/constants/image_strings.dart';
import 'package:tk_mart/utils/constants/text_strings.dart';

class OnBoardingScreen extends StatelessWidget{

  const OnBoardingScreen({

    super.key

  });

  @override
  Widget build(BuildContext context){

    final controller = Get.put(OnBoardingController());
    return Scaffold(

      body: Stack(

        children: [

          PageView(

            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [

              OnBoardingPage(image: TKMartImages.onBoardingImage1, title: TKMartTexts.onBoardingTitle1, subTitle: TKMartTexts.onBoardingSubTitle1),
              OnBoardingPage(image: TKMartImages.onBoardingImage2, title: TKMartTexts.onBoardingTitle2, subTitle: TKMartTexts.onBoardingSubTitle2),
              OnBoardingPage(image: TKMartImages.onBoardingImage3, title: TKMartTexts.onBoardingTitle2, subTitle: TKMartTexts.onBoardingSubTitle3),

            ],
          ),

          const OnBoardingSkip(),
          const OnBoardingDotNavigation(),
          const OnBoardingNextButton(),

        ],
      ),
    );
  }
}
