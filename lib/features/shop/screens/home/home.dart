import 'package:flutter/material.dart';
import 'package:tk_mart/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:tk_mart/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:tk_mart/common/widgets/products/products_cards/product_card_vertical.dart';
import 'package:tk_mart/common/widgets/texts/section_heading.dart';
import 'package:tk_mart/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:tk_mart/features/shop/screens/home/widgets/home_categories.dart';
import 'package:tk_mart/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:tk_mart/utils/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: SingleChildScrollView(

        child: Column(

          children: [

            const TKMartPrimaryHeaderContainer(

             child: Column(

               children: [

                 TKMartHomeAppBar(),
                 SizedBox(height: TKMartSizes.spaceBtwSections),
                 TKMartSearchContainer(text: 'Search in Store',),
                 SizedBox(height: TKMartSizes.spaceBtwSections),
                 Padding(

                   padding: EdgeInsets.only(left: TKMartSizes.defaultSpace),
                   child: Column(

                     children: [

                       TKMartSectionHeading(title: 'Popular Categories', showActionButton: false, textColor: Colors.white),
                       SizedBox(height: TKMartSizes.spaceBtwItems),

                       TKMartHomeCategories()
                     ],
                   ),
                 ),

                 SizedBox(height: TKMartSizes.spaceBtwSections),

               ],
             ),
            ),

            Padding(

              padding: const EdgeInsets.all(TKMartSizes.defaultSpace),
              child: Column(

                children: [

                  const TKMartPromoSlider(),
                  const SizedBox(height: TKMartSizes.spaceBtwSections),
                  TKMartSectionHeading(title: 'Popular Products', onPressed: (){},),
                  const SizedBox(height: TKMartSizes.spaceBtwItems),
                  const TKMartProductCardVertical(),

                ],
              )
            )
          ],
        ),
      ),
    );
  }
}