import 'package:flutter/material.dart';
import 'package:tk_mart/common/widgets/brands/brand_show_case.dart';
import 'package:tk_mart/common/widgets/texts/section_heading.dart';
import 'package:tk_mart/utils/constants/sizes.dart';
import 'package:tk_mart/common/widgets/layouts/grid_layout.dart';
import 'package:tk_mart/common/widgets/products/products_cards/tab_bar_section.dart';

class TKMartCategoryTab extends StatelessWidget {
  const TKMartCategoryTab({

    super.key,
    required this.imageLogo1,
    required this.logoTitle1,
    required this.count1,
    required this.image1,
    required this.image2,
    required this.image3,
    required this.imageLogo2,
    required this.logoTitle2,
    required this.count2,
    required this.image4,
    required this.image5,
    required this.image6,
    required this.imageUrl,
    required this.discount,
    required this.title,
    required this.brand,
    required this.price,


  });

  final String imageLogo1;
  final String logoTitle1;
  final String count1;
  final String image1;
  final String image2;
  final String image3;
  final String imageLogo2;
  final String logoTitle2;
  final String count2;
  final String image4;
  final String image5;
  final String image6;
  final List <String> imageUrl;
  final List <String> discount;
  final List <String> title;
  final List <String> brand;
  final List <String> price;


  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: SingleChildScrollView(

        child: ListView(

            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            children: [

              Padding(

                padding: const EdgeInsets.all(TKMartSizes.defaultSpace),
                child: Column(

                  children: [

                    TKMartBrandShowCase(

                      image: imageLogo1,
                      titleName: logoTitle1,
                      titleCount: count1,
                      image1: image1,
                      image2: image2,
                      image3: image3,

                    ),

                    TKMartBrandShowCase(

                      image: imageLogo2,
                      titleName: logoTitle2,
                      titleCount: count2,
                      image1: image4,
                      image2: image5,
                      image3: image6,

                    ),

                    const SizedBox(height: TKMartSizes.spaceBtwItems),
                    TKMartSectionHeading(title: 'You might like', showActionButton: true, onPressed: () {}),
                    const SizedBox(height: TKMartSizes.spaceBtwItems),
                    TKMartGridLayout(itemCount: 4, itemBuilder: (_,index){

                      return TKMartCategorySection(imageUrl: imageUrl[index], discount: discount[index], title: title[index], brand: brand[index], price: price[index]);

                    }),
                  ],
                ),
              ),
            ]
        ),
      ),
    );
  }
}