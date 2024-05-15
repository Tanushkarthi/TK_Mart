import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tk_mart/features/authentication/screens/password_configuration/forget_password.dart';
import 'package:tk_mart/features/authentication/screens/signup/signup.dart';
import 'package:tk_mart/navigation_menu.dart';
import 'package:tk_mart/utils/constants/colors.dart';
import 'package:tk_mart/utils/constants/sizes.dart';
import 'package:tk_mart/utils/constants/text_strings.dart';

class TKMartLoginForm extends StatelessWidget {

  const TKMartLoginForm({

    super.key,

  });

  @override
  Widget build(BuildContext context) {

    return Form(

      child: Padding(

        padding: const EdgeInsets.symmetric(vertical: TKMartSizes.spaceBtwSections),
        child: Column(

          children: [

            TextField(

              decoration: InputDecoration(

                prefixIcon: ShaderMask(

                  shaderCallback: (Rect bounds){

                    return const LinearGradient(

                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: <Color>[Colors.blueGrey,TKMartColors.primary ],

                    ).createShader(bounds);
                  },

                  child: const Icon(Iconsax.direct_right),

                ),

                labelText: TKMartTexts.email,

              ),
            ),

            const SizedBox(height: TKMartSizes.spaceBtwInputFields),
            TextFormField(

              decoration: InputDecoration(

                prefixIcon: ShaderMask(

                  shaderCallback: (Rect bounds) {

                    return const LinearGradient(

                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: <Color>[Colors.blueGrey,TKMartColors.primary],

                    ).createShader(bounds);
                  },

                  child: const Icon(Iconsax.password_check),

                ),

                suffixIcon: ShaderMask(

                  shaderCallback: (Rect bounds) {

                    return const LinearGradient(

                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: <Color>[Colors.blueGrey,TKMartColors.primary],

                    ).createShader(bounds);
                  },

                  child: const Icon(Iconsax.eye_slash),

                ),

                labelText: TKMartTexts.password,

              ),
            ),

            const SizedBox(height: TKMartSizes.spaceBtwInputFields / 2),
            Row(

              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                Row(

                    children: [

                      Checkbox(value: true,activeColor: TKMartColors.primary ,onChanged: (value){}),
                      const Text(TKMartTexts.rememberMe),

                    ]
                ),

                TextButton(onPressed: () => Get.to(() => const ForgetPassword()), child: const Text(TKMartTexts.forgetPassword)),

              ],
            ),

            const SizedBox(height: TKMartSizes.spaceBtwSections),
            SizedBox(

              width: double.infinity,
              child: ElevatedButton(

                onPressed: () => Get.to(() => const NavigationMenu()),
                style: ButtonStyle(

                  backgroundColor: MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {

                    return TKMartColors.primary;

                  }),

                  foregroundColor: MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {

                    if (Theme.of(context).brightness == Brightness.dark) {

                      return TKMartColors.white;

                    }

                    else {

                      return TKMartColors.black;

                    }
                  }),

                  side: MaterialStateProperty.resolveWith<BorderSide>((Set<MaterialState> states) {

                    return const BorderSide(color: TKMartColors.primary);

                  }),
                ),

                child: const Text(TKMartTexts.signIn),

              ),
            ),

            const SizedBox(height: TKMartSizes.spaceBtwItems),
            SizedBox(

              width: double.infinity,
              child: ElevatedButton(

                onPressed: () => Get.to(() => const SignupScreen()),
                style: ButtonStyle(

                  backgroundColor: MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {

                    if (Theme.of(context).brightness == Brightness.dark) {

                      return Colors.black;
                    }

                    return TKMartColors.white;

                    },
                  ),

                  foregroundColor: MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {

                    if (Theme.of(context).brightness == Brightness.dark) {

                      return TKMartColors.white;

                    }

                    return TKMartColors.dark;

                    },
                  ),

                  side: MaterialStateProperty.resolveWith<BorderSide>((Set<MaterialState> states) {

                    return const BorderSide(color: TKMartColors.darkGrey);

                    },
                  ),
                ),

                child: const Text(TKMartTexts.createAccount),

              ),
            ),

            const SizedBox(height: TKMartSizes.spaceBtwSections),

          ],
        ),
      ),
    );
  }
}