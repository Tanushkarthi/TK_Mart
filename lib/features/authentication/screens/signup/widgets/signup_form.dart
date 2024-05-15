import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tk_mart/features/authentication/screens/signup/verify_email.dart';
import 'package:tk_mart/features/authentication/screens/signup/widgets/terms_conditions_checkbox.dart';
import 'package:tk_mart/utils/constants/colors.dart';
import 'package:tk_mart/utils/constants/sizes.dart';
import 'package:tk_mart/utils/constants/text_strings.dart';

class TKMartSignupForm extends StatelessWidget {

  const TKMartSignupForm({

    super.key,

  });

  @override
  Widget build(BuildContext context) {

    return Form(

      child: Column(

        children: [

          Row(

            children: [

              Expanded(

                child: TextFormField(

                  expands: false,
                  decoration: InputDecoration(

                    labelText: TKMartTexts.firstName,
                    prefixIcon: ShaderMask(

                      shaderCallback: (Rect bounds) {

                        return const LinearGradient(

                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: <Color>[Colors.blueGrey,TKMartColors.primary],

                        ).createShader(bounds);
                      },

                      child: const Icon(Iconsax.user),

                    ),
                  ),
                ),
              ),

              const SizedBox(width: TKMartSizes.spaceBtwInputFields),
              Expanded(

                child: TextFormField(

                  expands: false,
                  decoration: InputDecoration(

                    labelText: TKMartTexts.lastName,
                    prefixIcon: ShaderMask(

                      shaderCallback: (Rect bounds) {

                        return const LinearGradient(

                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: <Color>[Colors.blueGrey,TKMartColors.primary],

                        ).createShader(bounds);
                      },

                      child: const Icon(Iconsax.user),

                    ),
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: TKMartSizes.spaceBtwInputFields),
          TextFormField(

            decoration: InputDecoration(

              labelText: TKMartTexts.username,
              prefixIcon: ShaderMask(

                shaderCallback: (Rect bounds) {

                  return const LinearGradient(

                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: <Color>[Colors.blueGrey,TKMartColors.primary],

                  ).createShader(bounds);
                },

                child: const Icon(Iconsax.user_edit),

              ),
            ),
          ),

          const SizedBox(height: TKMartSizes.spaceBtwInputFields),
          TextFormField(

            decoration: InputDecoration(

              labelText: TKMartTexts.email,
              prefixIcon: ShaderMask(

                shaderCallback: (Rect bounds) {

                  return const LinearGradient(

                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: <Color>[Colors.blueGrey,TKMartColors.primary],

                  ).createShader(bounds);
                },

                child: const Icon(Iconsax.direct),

              ),
            ),
          ),


          const SizedBox(height: TKMartSizes.spaceBtwInputFields),
          TextFormField(

            decoration: InputDecoration(

              labelText: TKMartTexts.phoneNo,
              prefixIcon: ShaderMask(

                shaderCallback: (Rect bounds) {

                  return const LinearGradient(

                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: <Color>[Colors.blueGrey,TKMartColors.primary],

                  ).createShader(bounds);
                },

                child: const Icon(Iconsax.call),

              ),
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

          const SizedBox(height: TKMartSizes.spaceBtwSections),
          const TKMartTermsAndConditionCheckBox(),

          const SizedBox(height: TKMartSizes.spaceBtwSections),
          SizedBox(

              width: double.infinity,
              child: ElevatedButton(

                  onPressed: () => Get.to(()=> const VerifyEmailScreen()),
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

                  child: const Text(TKMartTexts.createAccount))),
        ],
      ),
    );
  }
}
