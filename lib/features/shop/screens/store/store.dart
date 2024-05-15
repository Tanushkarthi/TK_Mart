import 'package:flutter/material.dart';
import 'package:tk_mart/common/widgets/appbar/appbar.dart';
import 'package:tk_mart/common/widgets/appbar/tabbar.dart';
import 'package:tk_mart/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:tk_mart/common/widgets/brands/brand_card.dart';
import 'package:tk_mart/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:tk_mart/common/widgets/texts/section_heading.dart';
import 'package:tk_mart/features/shop/screens/store/widgets/category_tab.dart';
import 'package:tk_mart/utils/constants/colors.dart';
import 'package:tk_mart/utils/constants/image_strings.dart';
import 'package:tk_mart/utils/constants/sizes.dart';
import 'package:tk_mart/utils/helpers/helper_functions.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({

    super.key,

  });

  @override
  Widget build(BuildContext context) {

    return DefaultTabController(

      length: 5,
      child: Scaffold(

        appBar: TKMartAppBar(

          title: Text('Store', style: Theme.of(context).textTheme.headlineMedium),
          actions: [TKMartCartCounterIcon(onPressed: (){})],

        ),

        body: NestedScrollView(headerSliverBuilder: (_, innerBoxIsScrolled){

          return [

            SliverAppBar(

              automaticallyImplyLeading: false,
              pinned: true,
              floating: true,
              backgroundColor: TKMartHelperFunctions.isDarkMode(context) ? TKMartColors.black : TKMartColors.white,
              expandedHeight: 440,

              flexibleSpace: Padding(

                padding: const EdgeInsets.all(TKMartSizes.defaultSpace),
                child: ListView(

                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  children: [

                    const SizedBox(height: TKMartSizes.spaceBtwItems),
                    const TKMartSearchContainer(text: 'Search in Store', showBorder: true, showBackground: false, padding: EdgeInsets.zero,),
                    const SizedBox(height: TKMartSizes.spaceBtwSections),
                    TKMartSectionHeading(title: 'Featured Brands', onPressed: (){}),
                    const SizedBox(height: TKMartSizes.spaceBtwItems / 1.5),
                    const TKMartBrandCard(showBorder: true),
                  ],
                ),
              ),

              bottom: const TKMartTabBar(tabs: [

                Tab(child: Text('Sports')),
                Tab(child: Text('Furniture')),
                Tab(child: Text('Electronics')),
                Tab(child: Text('Clothes')),
                Tab(child: Text('Cosmetics')),

              ],),
            )];
          },
          body: const TabBarView(

            children: [

              TKMartCategoryTab(

                imageLogo1: TKMartImages.nikeLogo,
                logoTitle1: 'Nike',
                count1: '256 products',
                imageLogo2: TKMartImages.adidasLogo,
                logoTitle2: 'Adidas',
                count2: '95 products',
                image1: TKMartImages.productImage1,
                image2: TKMartImages.productImage10,
                image3: TKMartImages.productImage19,
                image4: TKMartImages.productImage28,
                image5: TKMartImages.productImage29,
                image6: TKMartImages.productImage30,
                imageUrl: [TKMartImages.productImage1, TKMartImages.productImage10, TKMartImages.productImage19, TKMartImages.productImage20],
                discount: ['78%', '65%', '50%', '30%'],
                title: ['Green Nike Air Shoes', 'Nike Air Jordan Shoes', 'Nike Air Jordan 19 Blue', 'Nike Air Jordan 6 Orange'],
                brand: ['Nike', 'Nike', 'Nike', 'Nike'],
                price: ['5299', '1399', '4399', '8999'],

              ),

              TKMartCategoryTab(

                imageLogo1: TKMartImages.kenwoodLogo,
                logoTitle1: 'Kenwood',
                count1: '36 products',
                imageLogo2: TKMartImages.ikeaLogo,
                logoTitle2: 'IKEA',
                count2: '36 products',
                image1: TKMartImages.productImage32,
                image2: TKMartImages.productImage33,
                image3: TKMartImages.productImage34,
                image4: TKMartImages.productImage39,
                image5: TKMartImages.productImage40,
                image6: TKMartImages.productImage41,
                imageUrl: [TKMartImages.productImage32, TKMartImages.productImage33, TKMartImages.productImage34, TKMartImages.productImage35],
                discount: ['37%', '20%', '13%', '45%'],
                title: ['Pure Wooden Bed', 'Side Table Lamp', 'Bedroom Sofa', 'Wardrobe for Bedroom'],
                brand: ['Kenwood', 'Kenwood', 'Kenwood', 'Kenwood'],
                price: ['15999', '6999', '10999', '7999'],

              ),

              TKMartCategoryTab(

                imageLogo1: TKMartImages.appleLogo,
                logoTitle1: 'Apple',
                count1: '46 products',
                imageLogo2: TKMartImages.acerlogo,
                logoTitle2: 'Acer',
                count2: '50 products',
                image1: TKMartImages.productImage51,
                image2: TKMartImages.productImage52,
                image3: TKMartImages.productImage53,
                image4: TKMartImages.productImage56,
                image5: TKMartImages.productImage48,
                image6: TKMartImages.productImage49,
                imageUrl: [TKMartImages.productImage70, TKMartImages.productImage11, TKMartImages.productImage56, TKMartImages.productImage48],
                discount: ['16%', '13%', '20%', '10%'],
                title: ['Iphone 12, 4 Colors 128gb and 256gb', 'SAMSUNG Galaxy s9 (Pink, 64 GB) (4 GB RAM)', 'Acer Laptop (8 GB RAM, 512 GB SSD)', 'Acer Laptop (6 GB RAM, 1TB HDD)'],
                brand: ['Apple', 'Samsung', 'Acer', 'Acer'],
                price: ['46999', '12999', '74999', '59999'],

              ),

              TKMartCategoryTab(

                imageLogo1: TKMartImages.zaraLogo,
                logoTitle1: 'ZARA',
                count1: '30 products',
                imageLogo2: TKMartImages.nikeLogo,
                logoTitle2: 'Nike',
                count2: '256 products',
                image1: TKMartImages.productImage69,
                image2: TKMartImages.productImage64,
                image3: TKMartImages.productImage61,
                image4: TKMartImages.productImage24,
                image5: TKMartImages.productImage25,
                image6: TKMartImages.productImage26,
                imageUrl: [TKMartImages.productImage62, TKMartImages.productImage69, TKMartImages.productImage64, TKMartImages.productImage27],
                discount: ['78%', '14%', '80%', '28%'],
                title: ['Green Color T-Shirt dry fit', 'Blue T-Shirt for all ages', 'Leather brown Jacket', 'Nike Sportswear Tech Fleece Windrunner'],
                brand: ['ZARA', 'ZARA', 'ZARA', 'Nike'],
                price: ['1899', '1199', '3699', '2799'],

              ),

              TKMartCategoryTab(

                imageLogo1: TKMartImages.lakmelogo,
                logoTitle1: 'Lakme',
                count1: '80 products',
                imageLogo2: TKMartImages.zaraLogo,
                logoTitle2: 'ZARA',
                count2: '30 products',
                image1: TKMartImages.productImage78,
                image2: TKMartImages.productImage79,
                image3: TKMartImages.productImage80,
                image4: TKMartImages.productImage83,
                image5: TKMartImages.productImage84,
                image6: TKMartImages.productImage85,
                imageUrl: [TKMartImages.productImage78, TKMartImages.productImage81, TKMartImages.productImage84, TKMartImages.productImage87],
                discount: ['21%', '14%', '47%', '62%'],
                title: ['Gardenia ZARA Bloom 30ml and Orchid ZARA Bloom 30ml', 'ZARA 100ml 2 Night Pour Home', 'Lakme Lip Love Mask', 'Lakme Sun Expert Lotion'],
                brand: ['ZARA', 'ZARA', 'Lakme', 'Lakme'],
                price: ['899', '789', '579', '779'],

              ),
            ]
          )
        ),
      ),
    );
  }
}