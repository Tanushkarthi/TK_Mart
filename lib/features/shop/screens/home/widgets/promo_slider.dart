import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tk_mart/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:tk_mart/common/widgets/images/tk_rounded_image.dart';
import 'package:tk_mart/features/shop/controllers/home_controller.dart';
import 'package:tk_mart/utils/constants/colors.dart';
import 'package:tk_mart/utils/constants/lists.dart';
import 'package:tk_mart/utils/constants/sizes.dart';

class TKMartPromoSlider extends StatelessWidget {
  const TKMartPromoSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    final controller = Get.put(HomeController());
    return Column(

      children: [

        CarouselSlider(

          options: CarouselOptions(

            height: 220,
            aspectRatio: 16/9,
            viewportFraction: 1.3,
            initialPage: 0,
            enableInfiniteScroll: true,
            reverse: false,
            onPageChanged: (index, _) => controller.updatePageIndicator(index),
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 3),
            autoPlayAnimationDuration: const Duration(milliseconds: 500),
            autoPlayCurve: Curves.fastOutSlowIn,
            enlargeCenterPage: true,
            scrollDirection: Axis.horizontal,

          ),

          items: banners.map((url) => TKMartRoundedImages(imageUrl: url)).toList(),

        ),

        const SizedBox(height: TKMartSizes.spaceBtwItems),
        Center(

          child: Obx(()=> Row(


            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              for(int i = 0; i < banners.length; i++)

                TKMartRoundedContainer(

                  width: 20,
                  height: 4,
                  margin: const EdgeInsets.only(right: 10),
                  backgroundColor: controller.carousalCurrentIndex.value == i ? TKMartColors.primary : TKMartColors.grey,

                )
            ],
          ),),
        )
      ],
    );
  }
}