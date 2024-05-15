import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tk_mart/common/widgets/appbar/appbar.dart';
import 'package:tk_mart/common/widgets/images/tk_circular_image.dart';
import 'package:tk_mart/common/widgets/texts/section_heading.dart';
import 'package:tk_mart/features/personalization/screens/profile/widgets/profile_menu.dart';
import 'package:tk_mart/utils/constants/image_strings.dart';
import 'package:tk_mart/utils/constants/sizes.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: const TKMartAppBar(showBackArrow: true, title: Text('Profile')),
      body: SingleChildScrollView(

        child: Padding(

          padding: const EdgeInsets.all(TKMartSizes.defaultSpace),
          child: Column(

            children: [

              SizedBox(

                width: double.infinity,
                child: Column(

                  children: [

                    const TKMartCircularImage(image: TKMartImages.user, width: 100, height: 100),
                    TextButton(onPressed: (){}, child: const Text('Change Profile Picture')),

                  ],

                ),
              ),

              const SizedBox(height: TKMartSizes.spaceBtwItems),
              const Divider(),
              const SizedBox(height: TKMartSizes.spaceBtwItems),
              const TKMartSectionHeading(title: 'Profile Information', showActionButton: false),
              const SizedBox(height: TKMartSizes.spaceBtwItems),
              TKMartProfileMenu(title: 'Name', value: 'Tanush Karthikeyan', onPressed: (){}),
              TKMartProfileMenu(title: 'Username', value: 'tanush_karthikeyan', onPressed: (){}),
              const SizedBox(height: TKMartSizes.spaceBtwItems),
              const Divider(),
              const SizedBox(height: TKMartSizes.spaceBtwItems),
              const TKMartSectionHeading(title: 'Personal Information', showActionButton: false),
              const SizedBox(height: TKMartSizes.spaceBtwItems),
              TKMartProfileMenu(title: 'User ID', value: '48452', icon: Iconsax.copy, onPressed: (){}),
              TKMartProfileMenu(title: 'E-mail', value: 'tanushkarthikeyan@tkmart.com', onPressed: (){}),
              TKMartProfileMenu(title: 'Phone Number', value: '+919876543210', onPressed: (){}),
              TKMartProfileMenu(title: 'Gender', value: 'Male', onPressed: (){}),
              TKMartProfileMenu(title: 'Date of Birth', value: '14 Aug 2003', onPressed: (){}),
              const Divider(),
              const SizedBox(height: TKMartSizes.spaceBtwItems),
              Center(

                child: TextButton(

                  onPressed: () {},
                  child: const Text('Close Account', style: TextStyle(color: Colors.red)),

                ),

              ),
            ],
          ),
        ),
      ),
    );
  }
}