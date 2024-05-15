import 'package:flutter/material.dart';
import 'package:tk_mart/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:tk_mart/features/shop/screens/product_details/widgets/rating_share_widget.dart';
import 'package:tk_mart/utils/constants/sizes.dart';
import 'widgets/product_detail_image_slider.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return const Scaffold(

      body: SingleChildScrollView(

        child: Column(

          children: [

            TKMartProductImageSlider(),
            Padding(

              padding: EdgeInsets.only(right: TKMartSizes.defaultSpace, left: TKMartSizes.defaultSpace, bottom: TKMartSizes.defaultSpace),
              child: Column(

                children: [

                  TKMartRatingAndShare(),
                  TKMartProductMetaData(),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

