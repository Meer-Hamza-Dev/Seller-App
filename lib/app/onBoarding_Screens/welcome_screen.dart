// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seller_app/routes/app_pages.dart';
import 'package:seller_app/utils/app_buttons/app_buttons.dart';
import 'package:seller_app/utils/app_colors/app_color.dart';
import 'package:seller_app/utils/app_constants/const_images.dart';
import 'package:seller_app/utils/app_text/app_text.dart';

class welcomeScreen extends StatelessWidget {
  const welcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.WhiteColor,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: Get.height / 1.5 - 10,
              width: Get.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    ImageConst.welcomeImage,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AppText(
                  title: "MR".tr,
                  fontWeight: FontWeight.w700,
                  size: 24,
                  gradient: AppColors.commonGradient,
                ),
                SizedBox(width: 7),
                Container(
                  height: 25,
                  width: 3,
                  decoration: BoxDecoration(
                    gradient: AppColors.commonGradient,
                  ),
                ),
                SizedBox(width: 7),
                AppText(
                  title: "Corporation".tr,
                  fontWeight: FontWeight.w500,
                  size: 24,
                  gradient: AppColors.commonGradient,
                ),
              ],
            ),
            SizedBox(height: 32),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 36),
              child: AppText(
                title: "WelcomeDescription".tr,
                textAlign: TextAlign.center,
                color: AppColors.grey2,
              ),
            ),
            SizedBox(height: 24),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: AppButton(
                buttonName: "Getstarted".tr,
                onTap: () {
                  Get.toNamed(Routes.loginRoute);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
