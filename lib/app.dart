import 'package:flutter/material.dart';
import 'package:flutter_emboss_store/features/authentication/screens/onboarding/onboarding.dart';
import 'package:flutter_emboss_store/utils/theme/theme.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

// use this class to setup themes, initial bindings, any animations and much more
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      home: const OnBoardingScreen(),
    );
  }
}