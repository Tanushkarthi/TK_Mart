import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tk_mart/features/authentication/screens/password_configuration/reset_password.dart';
import 'package:tk_mart/utils/constants/colors.dart';
import 'package:tk_mart/utils/constants/sizes.dart';
import 'package:tk_mart/utils/constants/text_strings.dart';

class ForgetPassword extends StatelessWidget {

  const ForgetPassword({

    super.key

  });

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(),
      body: Padding(

        padding: const EdgeInsets.all(TKMartSizes.defaultSpace),
        child: Column(

          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Text(TKMartTexts.forgetPasswordTitle, style: Theme.of(context).textTheme.headlineMedium),
            const SizedBox(height: TKMartSizes.spaceBtwItems),
            Text(TKMartTexts.forgetPasswordSubTitle, style: Theme.of(context).textTheme.labelMedium),
            const SizedBox(height: TKMartSizes.spaceBtwSections * 2),

            TextField(

              decoration: InputDecoration(

                prefixIcon: ShaderMask(

                  shaderCallback: (Rect bounds){

                    return const LinearGradient(

                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: <Color>[Colors.blueGrey,TKMartColors.primary],

                    ).createShader(bounds);
                  },

                  child: const Icon(Iconsax.direct_right),

                ),

                labelText: TKMartTexts.email,

              ),
            ),

            const SizedBox(height: TKMartSizes.spaceBtwSections),
            SizedBox(

              width: double.infinity,
              child: ElevatedButton(

                onPressed: () => Get.off(() => const ResetPassword()),
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

                child: const Text(TKMartTexts.submit),

              ),
            ),
          ],
        ),
      ),
    );
  }
}