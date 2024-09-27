// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:seller_app/routes/app_pages.dart';
import 'package:seller_app/utils/app_bars/main_appbar.dart';
import 'package:seller_app/utils/app_buttons/app_buttons.dart';
import 'package:seller_app/utils/app_colors/app_color.dart';
import 'package:seller_app/utils/app_constants/const_images.dart';
import 'package:seller_app/utils/app_text/app_text.dart';

class Flyers extends StatelessWidget {
  const Flyers({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        surfaceTintColor: AppColors.transperentColor,
        automaticallyImplyLeading: false,
        title: MainAppBar(
          title: "Flyers".tr,
          size: 20,
          color: AppColors.blackColor,
          leadingWidget: GestureDetector(
            onTap: () {
              Get.back();
            },
            child: SvgPicture.asset(ImageConst.backBtn),
          ),
        ),
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      extendBodyBehindAppBar: true,
      extendBody: true,
      body: Stack(
        children: [
          SvgPicture.asset(
            ImageConst.bgImage,
            height: Get.height,
            width: Get.width,
            fit: BoxFit.cover,
          ),
          SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(16, 20, 16, 20),
                child: Column(
                  children: [
                    ZaikaOffer(),
                    SizedBox(height: 20),
                    ZaikaOffer(),
                    SizedBox(height: 40),
                    AppButton(
                      buttonName: "createFlyer".tr,
                      onTap: () {
                        Get.toNamed(Routes.createFlyerRoute);
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container ZaikaOffer() {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.WhiteColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 10, 12, 10),
            child: Row(
              children: [
                Image.asset(ImageConst.zaikaLogo),
                SizedBox(width: 15),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppText(
                      title: "Zaika".tr,
                      fontWeight: FontWeight.w600,
                      size: 20,
                      color: AppColors.itemNameClor,
                    ),
                    SizedBox(height: 3),
                    AppText(
                      title: "daysleft24".tr,
                      size: 12,
                      color: AppColors.grey1,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Image.asset(
            ImageConst.post,
            fit: BoxFit.cover,
            width: Get.width,
          ),
        ],
      ),
    );
  }
}
