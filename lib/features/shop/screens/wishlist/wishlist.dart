import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tk_mart/common/widgets/appbar/appbar.dart';
import 'package:tk_mart/common/widgets/icons/circular_icon.dart';
import 'package:tk_mart/common/widgets/products/products_cards/product_card_vertical.dart';
import 'package:tk_mart/utils/constants/sizes.dart';

class FavouriteScreen extends StatelessWidget {

  const FavouriteScreen({

    super.key,

  });

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: TKMartAppBar(

        title: Text('Wishlist', style: Theme.of(context).textTheme.headlineMedium),
        actions: const [

          TKMartCircularIcon(icon: Iconsax.add),

        ],
      ),

      body: const SingleChildScrollView(

        child: Padding(

          padding: EdgeInsets.all(TKMartSizes.defaultSpace),
          child: Column(

            children: [

              TKMartProductCardVertical(),

            ],
          ),
        ),
      ),
    );
  }
}