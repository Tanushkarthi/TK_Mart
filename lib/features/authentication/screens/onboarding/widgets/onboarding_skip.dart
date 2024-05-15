import 'package:flutter/material.dart';
import 'package:tk_mart/features/authentication/screens/login/login.dart';
import 'package:tk_mart/utils/constants/sizes.dart';
import 'package:tk_mart/utils/device/device_utility.dart';

class OnBoardingSkip extends StatelessWidget {

  const OnBoardingSkip({

    super.key,

  });

  @override
  Widget build(BuildContext context) {

    return Positioned(

        top: TKMartDeviceUtils.getAppBarHeight(),
        right: TKMartSizes.defaultSpace,
        child: TextButton(

            onPressed: () {

              Navigator.push(context,MaterialPageRoute(builder: (context) => const LoginScreen()));

              },

            child: const Text('skip'),

        )
    );
  }
}