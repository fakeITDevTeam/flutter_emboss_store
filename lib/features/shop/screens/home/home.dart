import 'package:flutter/material.dart';
import 'package:flutter_emboss_store/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:flutter_emboss_store/features/shop/screens/home/widgets/home_categories.dart';
import 'package:flutter_emboss_store/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:flutter_emboss_store/utils/constants/image_strings.dart';
import 'package:flutter_emboss_store/utils/constants/sizes.dart';

import '../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../../common/widgets/custom_shapes/containers/search_container.dart';
import '../../../../common/widgets/layouts/grid_layout.dart';
import '../../../../common/widgets/products/product_cards/product_card_vertical.dart';
import '../../../../common/widgets/texts/section_heading.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const TPrimaryHeaderContainer(
              child: Column(
                children: [
                  /// home appbar
                  THomeAppBar(),
                  SizedBox(height: TSizes.spaceBtwSections,),

                  /// searchbar
                  TSearchContainer(text: 'Search in Store',),
                  SizedBox(height: TSizes.spaceBtwSections,),

                  /// categories
                  Padding(
                    padding: EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      children: [

                        /// heading
                        TSectionHeading(title: 'Popular Categories', showActionButton: false, textColor: Colors.white,),
                        SizedBox(height: TSizes.spaceBtwItems,),

                        /// categories
                        THomeCategories(),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            /// body
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  /// promo slider
                  const TPromoSlider(banners: [TImages.promoBanner1, TImages.promoBanner2, TImages.promoBanner3],),
                  const SizedBox(height: TSizes.spaceBtwSections,),

                  /// heading
                  TSectionHeading(title: 'Popular Products', onPressed: () {},),
                  const SizedBox(height: TSizes.spaceBtwItems,),

                  /// popular products
                  TGridLayout(
                    itemCount: 4,
                    itemBuilder: (_, index) => const TProductCardVertical(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
