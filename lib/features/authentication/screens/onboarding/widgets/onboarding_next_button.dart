import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tk_mart/features/authentication/controllers/onboarding_controller.dart';
import 'package:tk_mart/utils/constants/colors.dart';
import 'package:tk_mart/utils/constants/sizes.dart';
import 'package:tk_mart/utils/device/device_utility.dart';

class OnBoardingNextButton extends StatelessWidget {

  const OnBoardingNextButton({

    super.key,

  });

  @override
  Widget build(BuildContext context) {

    return Positioned(

        right: TKMartSizes.defaultSpace,
        bottom: TKMartDeviceUtils.getBottomNavigationBarHeight(),
        child: ElevatedButton(

          onPressed: () => OnBoardingController.instance.nextPage(),
          style: ElevatedButton.styleFrom(

              backgroundColor: Theme.of(context).brightness == Brightness.light ? TKMartColors.dark : TKMartColors.primary,
              side: BorderSide(color: Theme.of(context).brightness == Brightness.light ? TKMartColors.dark : TKMartColors.primary),
              shape: const CircleBorder()

          ),

          child: const Icon(Iconsax.arrow_right_3),

        )
    );
  }
}