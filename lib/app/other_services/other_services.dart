// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:seller_app/app/home/homePage.dart';
import 'package:seller_app/app/setting/setting.dart';
import 'package:seller_app/routes/app_pages.dart';
import 'package:seller_app/utils/app_bars/main_appbar.dart';
import 'package:seller_app/utils/app_buttons/app_buttons.dart';
import 'package:seller_app/utils/app_colors/app_color.dart';
import 'package:seller_app/utils/app_constants/const_images.dart';
import 'package:seller_app/utils/app_text/app_text.dart';

class OtherServices extends StatelessWidget {
  const OtherServices({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        surfaceTintColor: AppColors.transperentColor,
        automaticallyImplyLeading: false,
        title: MainAppBar(
          title: "otherservices".tr,
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
          Background(),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16, 20, 16, 16),
              child: Column(
                children: [
                  ManrajSweets(
                    imageprefix: ImageConst.zaikaIndia,
                    imagesuffix: ImageConst.pakorey,
                  ),
                  SizedBox(height: 20),
                  GestureDetector(
                    onTap: () {
                      Get.toNamed(Routes.tiffinServicesRoute);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xff70C3FF),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 23, horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                AppText(
                                  title: "tiffinNServices".tr,
                                  color: AppColors.WhiteColor,
                                  fontWeight: FontWeight.w700,
                                  size: 20,
                                ),
                                SizedBox(height: 16),
                                AppButton(
                                  buttonName: "viewdetails".tr,
                                  buttonWidth: 106,
                                  buttonHeight: 32,
                                  isShowGradient: false,
                                  fontWeight: FontWeight.w500,
                                  textSize: 11,
                                  isShowShadow: false,
                                  buttonColor: AppColors.WhiteColor,
                                  textColor: Color(0xff70C3FF),
                                  onTap: () {},
                                ),
                              ],
                            ),
                            Stack(
                              alignment: Alignment.centerRight,
                              clipBehavior: Clip.none,
                              children: [
                                Positioned(
                                    right: 65,
                                    child: Image.asset(ImageConst.greenCream)),
                                Positioned(
                                  child: Image.asset(ImageConst.tiffin),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  GestureDetector(
                    onTap: () {
                      Get.toNamed(Routes.cateringServicesRoute);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xffF387FC),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 23, horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                AppText(
                                  title: "cateringNServices".tr,
                                  color: AppColors.WhiteColor,
                                  fontWeight: FontWeight.w700,
                                  size: 20,
                                ),
                                SizedBox(height: 16),
                                AppButton(
                                  buttonName: "viewdetails".tr,
                                  buttonWidth: 106,
                                  buttonHeight: 32,
                                  isShowGradient: false,
                                  fontWeight: FontWeight.w500,
                                  textSize: 11,
                                  isShowShadow: false,
                                  buttonColor: AppColors.WhiteColor,
                                  textColor: Color(0xffF387FC),
                                  onTap: () {},
                                ),
                              ],
                            ),
                            Image.asset(ImageConst.table),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
