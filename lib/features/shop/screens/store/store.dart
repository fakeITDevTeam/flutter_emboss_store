import 'package:flutter/material.dart';
import 'package:flutter_emboss_store/common/widgets/appbar/appbar.dart';
import 'package:flutter_emboss_store/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:flutter_emboss_store/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:flutter_emboss_store/common/widgets/layouts/grid_layout.dart';
import 'package:flutter_emboss_store/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:flutter_emboss_store/common/widgets/texts/brand_title_text_with_verified_icon.dart';
import 'package:flutter_emboss_store/common/widgets/texts/section_heading.dart';
import 'package:flutter_emboss_store/utils/constants/enums.dart';
import 'package:flutter_emboss_store/utils/constants/image_strings.dart';
import 'package:flutter_emboss_store/utils/constants/sizes.dart';
import 'package:flutter_emboss_store/utils/helpers/helper_functions.dart';

import '../../../../common/widgets/images/circular_image.dart';
import '../../../../utils/constants/colors.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title: Text('Store', style: Theme.of(context).textTheme.headlineMedium,),
        actions: [
          TCartCounterIcon(iconColor: TColors.dark, onPressed: () {},)
        ],
      ),
      body: NestedScrollView(
        headerSliverBuilder: (_, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              automaticallyImplyLeading: false,
              pinned: true,
              floating: true,
              backgroundColor: THelperFunctions.isDarkMode(context) ? TColors.black : TColors.white,
              expandedHeight: 440,
              flexibleSpace: Padding(
                padding: const EdgeInsets.all(TSizes.defaultSpace),
                child: ListView(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    /// search bar
                    const SizedBox(height: TSizes.spaceBtwItems,),
                    const TSearchContainer(text: 'Search in Store', showBorder: true, showBackground: false, padding: EdgeInsets.zero,),
                    const SizedBox(height: TSizes.spaceBtwSections,),

                    /// featured brands
                    TSectionHeading(title: 'Featured Brands', onPressed: () {},),
                    const SizedBox(height: TSizes.spaceBtwItems / 1.5,),

                    TGridLayout(itemCount: 4, mainAxisExtent: 80, itemBuilder: (_, index) {
                      return GestureDetector(
                        onTap: () {},
                        child: TRoundedContainer(
                          padding: const EdgeInsets.all(TSizes.sm),
                          showBorder: true,
                          backgroundColor: Colors.transparent,
                          child: Row(
                            children: [
                              /// icon
                              Flexible(
                                child: TCircularImage(
                                  isNetworkImage: false,
                                  image: TImages.clothIcon,
                                  backgroundColor: Colors.transparent,
                                  overlayColor: THelperFunctions.isDarkMode(context) ? TColors.white : TColors.black,
                                ),
                              ),
                              const SizedBox(width: TSizes.spaceBtwItems / 2,),

                              /// text
                              Expanded(
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const TBrandTitleTextWithVerifiedIcon(title: 'Nike', brandTextSize: TextSizes.large,),
                                    Text('256 products with many compliments', overflow: TextOverflow.ellipsis, style: Theme.of(context).textTheme.labelMedium,),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
                  ],
                ),
              ),
            ),
          ];
        },
        body: Container()
      ),
    );
  }
}
