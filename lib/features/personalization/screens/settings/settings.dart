import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tk_mart/common/widgets/appbar/appbar.dart';
import 'package:tk_mart/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:tk_mart/common/widgets/list_tiles/settings_menu_tile.dart';
import 'package:tk_mart/common/widgets/list_tiles/user_profile_tile.dart';
import 'package:tk_mart/common/widgets/texts/section_heading.dart';
import 'package:tk_mart/features/personalization/screens/profile/profile.dart';
import 'package:tk_mart/utils/constants/colors.dart';
import 'package:tk_mart/utils/constants/sizes.dart';

class SettingsScreen extends StatelessWidget {
  
  const SettingsScreen({

    super.key,

  });

  @override
  Widget build(BuildContext context) {

    bool isSwitch = true;
    return Scaffold(

      body: SingleChildScrollView(

        child: Column(

          children: [

            TKMartPrimaryHeaderContainer(

                child: Column(

                  children: [

                    TKMartAppBar(title: Text('Account', style: Theme.of(context).textTheme.headlineMedium!.apply(color: TKMartColors.white))),
                    TKMartUserProfileTile(onPressed: () => Get.to(() => const ProfileScreen()),),
                    const SizedBox(height: TKMartSizes.spaceBtwSections),

                  ],
                )
            ),

            Padding(

              padding: const EdgeInsets.all(TKMartSizes.defaultSpace),
              child: Column(
                
                children: [
                  
                  const TKMartSectionHeading(title: 'Account Settings', showActionButton: false),
                  const SizedBox(height: TKMartSizes.spaceBtwItems),
                  const TKMartSettingsMenuTile(icon: Iconsax.safe_home, title: 'My Address', subTitle: 'Set shopping delivery address'),
                  const TKMartSettingsMenuTile(icon: Iconsax.shopping_cart, title: 'My Cart', subTitle: 'Add, remove products and move to checkout'),
                  const TKMartSettingsMenuTile(icon: Iconsax.bag_tick, title: 'My Orders', subTitle: 'In-progress and Completed Orders'),
                  const TKMartSettingsMenuTile(icon: Iconsax.bank, title: 'Bank Account', subTitle: 'Withdraw balance to registered bank account'),
                  const TKMartSettingsMenuTile(icon: Iconsax.discount_shape, title: 'My Coupons',subTitle: 'List of all the discounted coupons'),
                  const TKMartSettingsMenuTile(icon: Iconsax.notification, title: 'Notifications', subTitle: 'Set any kind of notification message'),
                  const TKMartSettingsMenuTile(icon: Iconsax.security_card, title: 'Account Privacy', subTitle: 'Manage data usage and connected accounts'),
                  const SizedBox(height: TKMartSizes.spaceBtwSections),
                  const TKMartSectionHeading(title: 'App Settings', showActionButton: false),
                  const SizedBox(height: TKMartSizes.spaceBtwItems),
                  const TKMartSettingsMenuTile(icon: Iconsax.document_upload, title: 'Load Data', subTitle: 'Upload Data to your Cloud Firebase'),
                  TKMartSettingsMenuTile(

                      icon: Iconsax.location,
                      title: 'Geolocation',
                      subTitle: 'Set recommendation based on location',
                      trailing: Switch(value: isSwitch, onChanged: (value) {}, activeColor: TKMartColors.primary)

                  ),

                  TKMartSettingsMenuTile(

                      icon: Iconsax.security_user,
                      title: 'Safe Mode',
                      subTitle: 'Search result is safe for all ages',
                      trailing: Switch(value: false, onChanged: (value) {}, activeColor: TKMartColors.primary,)

                  ),

                  TKMartSettingsMenuTile(

                      icon: Iconsax.image,
                      title: 'HD Image Quality',
                      subTitle: 'Set image quality to be seen',
                      trailing: Switch(value: false, onChanged: (value) {}, activeColor: TKMartColors.primary)

                  ),

                  const SizedBox(height: TKMartSizes.spaceBtwSections),
                  SizedBox(

                      width: double.infinity,
                      child: OutlinedButton(

                          onPressed: (){},
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

                          child: const Text('Logout')

                      )
                  ),

                  const SizedBox(height: TKMartSizes.spaceBtwSections * 2.5),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}