import 'package:flutter/material.dart';
import 'package:flutter_emboss_store/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:flutter_emboss_store/features/shop/screens/home/widgets/home_categories.dart';
import 'package:flutter_emboss_store/utils/constants/sizes.dart';

import '../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../../common/widgets/custom_shapes/containers/search_container.dart';
import '../../../../common/widgets/texts/section_heading.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TPrimaryHeaderContainer(
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
          ],
        ),
      ),
    );
  }
}
