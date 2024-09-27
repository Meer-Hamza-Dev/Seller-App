// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seller_app/app/onBoarding_Screens/welcome_screen.dart';
import 'package:seller_app/utils/app_colors/app_color.dart';
import 'package:seller_app/utils/app_constants/const_images.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3), () {
      Get.to(() => welcomeScreen());
    });
    return Scaffold(
      backgroundColor: AppColors.WhiteColor,
      body: Center(
        child: Image.asset(
          ImageConst.splashImage,
          height: 164,
          width: 214,
        ),
      ),
    );
  }
}
