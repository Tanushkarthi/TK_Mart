import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tk_mart/features/authentication/screens/login/login.dart';
import 'package:tk_mart/features/authentication/screens/password_configuration/forget_password.dart';
import 'package:tk_mart/utils/constants/colors.dart';
import 'package:tk_mart/utils/constants/image_strings.dart';
import 'package:tk_mart/utils/constants/sizes.dart';
import 'package:tk_mart/utils/constants/text_strings.dart';
import 'package:tk_mart/utils/helpers/helper_functions.dart';

class ResetPassword extends StatelessWidget {

  const ResetPassword({

    super.key,

  });

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(

        automaticallyImplyLeading: false,
        actions: [

          IconButton(onPressed: () => Get.back(), icon: const Icon(CupertinoIcons.clear))

        ],
      ),

      body: SingleChildScrollView(

        child: Padding(

          padding: const EdgeInsets.all(TKMartSizes.defaultSpace),
          child: Column(

            children: [

              Image(image: const AssetImage(TKMartImages.deliveredEmailIllustration), width: TKMartHelperFunctions.screenWidth() * 0.6),
              const SizedBox(height: TKMartSizes.spaceBtwSections),
              Text(TKMartTexts.changeYourPasswordTitle, style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center),
              const SizedBox(height: TKMartSizes.spaceBtwItems),
              Text(TKMartTexts.changeYourPasswordSubTitle, style: Theme.of(context).textTheme.labelMedium, textAlign: TextAlign.center),
              const SizedBox(height: TKMartSizes.spaceBtwSections),
              SizedBox(

                width: double.infinity,
                child: SizedBox(

                  width: double.infinity,
                  child: ElevatedButton(

                    onPressed: () => Get.off(() => const LoginScreen()),
                    style: ButtonStyle(

                      backgroundColor: MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {

                        return TKMartColors.primary;

                        },
                      ),

                      foregroundColor: MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {

                        return TKMartColors.white;

                        },
                      ),

                      side: MaterialStateProperty.resolveWith<BorderSide>((Set<MaterialState> states) {

                        return const BorderSide(color: TKMartColors.primary);

                        },
                      ),
                    ),

                    child: const Text(TKMartTexts.done),

                  ),
                ),
              ),

              const SizedBox(height: TKMartSizes.spaceBtwItems),
              SizedBox(

                width: double.infinity,
                child: TextButton(onPressed: () => Get.to(() => const ForgetPassword()), child: const Text(TKMartTexts.resendEmail)),

              ),
            ],
          ),
        ),
      ),
    );
  }
}