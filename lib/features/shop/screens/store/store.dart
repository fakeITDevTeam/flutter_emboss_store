import 'package:flutter/material.dart';
import 'package:flutter_emboss_store/common/widgets/appbar/appbar.dart';
import 'package:flutter_emboss_store/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:flutter_emboss_store/common/widgets/layouts/grid_layout.dart';
import 'package:flutter_emboss_store/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:flutter_emboss_store/common/widgets/texts/section_heading.dart';
import 'package:flutter_emboss_store/features/shop/screens/store/widgets/category_tab.dart';
import 'package:flutter_emboss_store/utils/constants/sizes.dart';
import 'package:flutter_emboss_store/utils/helpers/helper_functions.dart';

import '../../../../common/widgets/appbar/tabbar.dart';
import '../../../../common/widgets/brands/brand_card.dart';
import '../../../../utils/constants/colors.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
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

                      /// brands GRID
                      TGridLayout(itemCount: 4, mainAxisExtent: 80, itemBuilder: (_, index) {
                        return const TBrandCard(showBorder: false,);
                      }),
                    ],
                  ),
                ),
      
                /// tabs - scrollable tabs
                bottom: const TTabBar(
                  tabs: [
                    Tab(child: Text('Sports'),),
                    Tab(child: Text('Furniture'),),
                    Tab(child: Text('Electronics'),),
                    Tab(child: Text('Clothes'),),
                    Tab(child: Text('Cosmetics'),),
                  ],
                ),
              ),
            ];
          },

          /// body
          body: const TabBarView(
            children: [
              TCategoryTab(),
              TCategoryTab(),
              TCategoryTab(),
              TCategoryTab(),
            ]
          ),
        ),
      ),
    );
  }
}