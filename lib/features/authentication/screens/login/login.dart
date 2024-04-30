import 'package:flutter/material.dart';
import 'package:flutter_emboss_store/common/styles/spacing_styles.dart';
import 'package:flutter_emboss_store/common/widgets/login_signup/form_divider.dart';
import 'package:flutter_emboss_store/common/widgets/login_signup/social_buttons.dart';
import 'package:flutter_emboss_store/features/authentication/screens/login/widgets/login_form.dart';
import 'package:flutter_emboss_store/features/authentication/screens/login/widgets/login_header.dart';
import 'package:flutter_emboss_store/utils/constants/sizes.dart';
import 'package:flutter_emboss_store/utils/constants/text_strings.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              /// logo, title & sub-title
              const TLoginHeader(),

              /// form
              const TLoginForm(),

              /// divider
              TFormDivider(dividerText: TTexts.orSignInWith.capitalize!),
              const SizedBox(height: TSizes.spaceBtwSections,),

              /// footer
              const TSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
