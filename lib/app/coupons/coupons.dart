// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:seller_app/app/coupons/coupons_controller.dart';
import 'package:seller_app/app/setting/setting.dart';
import 'package:seller_app/routes/app_pages.dart';
import 'package:seller_app/utils/app_bars/main_appbar.dart';
import 'package:seller_app/utils/app_buttons/app_buttons.dart';
import 'package:seller_app/utils/app_colors/app_color.dart';
import 'package:seller_app/utils/app_constants/const_images.dart';
import 'package:seller_app/utils/app_text/app_text.dart';

class Coupons extends StatelessWidget {
  Coupons({super.key});
  final CouponsController controller = CouponsController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        surfaceTintColor: AppColors.transperentColor,
        automaticallyImplyLeading: false,
        title: MainAppBar(
          title: "coupons".tr,
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
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(16, 20, 16, 20),
                child: Obx(
                  () {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            AppText(
                              title: "receiveRequest".tr,
                              fontWeight: FontWeight.w600,
                              size: 20,
                              color: AppColors.itemNameClor,
                            ),
                            AppText(
                              title: "Viewall".tr,
                              fontWeight: FontWeight.w500,
                              size: 12,
                              color: AppColors.commonColor,
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        GestureDetector(
                          onTap: () {
                            Get.toNamed(Routes.receiveRequestRoute);
                          },
                          child: ABC_Store(),
                        ),
                        SizedBox(height: 20),
                        AppText(
                          title: "Activecoupons".tr,
                          fontWeight: FontWeight.w600,
                          size: 20,
                          color: AppColors.itemNameClor,
                        ),
                        SizedBox(height: 18),
                        Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                controller.updateselectedValyeType('coupons');
                              },
                              child: Container(
                                decoration: controller
                                            .selectedValueType.value ==
                                        'coupons'
                                    ? BoxDecoration(
                                        gradient: AppColors.commonGradient,
                                        borderRadius: BorderRadius.circular(8),
                                        boxShadow: [
                                          BoxShadow(
                                            color: AppColors.blackColor
                                                .withOpacity(.1),
                                            blurRadius: 2,
                                            offset: Offset(0, 4),
                                          )
                                        ],
                                      )
                                    : BoxDecoration(
                                        color: AppColors.WhiteColor,
                                        borderRadius: BorderRadius.circular(8),
                                        boxShadow: [
                                          BoxShadow(
                                            color: AppColors.blackColor
                                                .withOpacity(.1),
                                            blurRadius: 2,
                                            offset: Offset(0, 4),
                                          )
                                        ],
                                      ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 8.5, horizontal: 16.5),
                                  child: AppText(
                                    title: "Mycoupons".tr,
                                    color: controller.selectedValueType.value ==
                                            'coupons'
                                        ? AppColors.WhiteColor
                                        : AppColors.blackColor,
                                    size: 14,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 14),
                            GestureDetector(
                              onTap: () {
                                controller.updateselectedValyeType('request');
                              },
                              child: Container(
                                decoration: controller
                                            .selectedValueType.value ==
                                        'request'
                                    ? BoxDecoration(
                                        gradient: AppColors.commonGradient,
                                        borderRadius: BorderRadius.circular(8),
                                        boxShadow: [
                                          BoxShadow(
                                            color: AppColors.blackColor
                                                .withOpacity(.1),
                                            blurRadius: 2,
                                            offset: Offset(0, 4),
                                          )
                                        ],
                                      )
                                    : BoxDecoration(
                                        color: AppColors.WhiteColor,
                                        borderRadius: BorderRadius.circular(8),
                                        boxShadow: [
                                          BoxShadow(
                                            color: AppColors.blackColor
                                                .withOpacity(.1),
                                            blurRadius: 2,
                                            offset: Offset(0, 4),
                                          )
                                        ],
                                      ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 8.5, horizontal: 16.5),
                                  child: AppText(
                                      title: "requested".tr,
                                      size: 14,
                                      fontWeight: FontWeight.w600,
                                      color:
                                          controller.selectedValueType.value ==
                                                  'request'
                                              ? AppColors.WhiteColor
                                              : AppColors.blackColor),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        controller.selectedValueType.value == 'coupons'
                            ? Column(
                                children: [
                                  ABC_Store(),
                                  SizedBox(height: 20),
                                  ABC_Store(),
                                  SizedBox(height: 20),
                                  ABC_Store(),
                                  SizedBox(height: 20),
                                  ABC_Store(),
                                  SizedBox(height: 48),
                                  AppButton(
                                    buttonName: "sendcoupons".tr,
                                    onTap: () {
                                      Get.toNamed(Routes.couponRequestRoute);
                                    },
                                  ),
                                ],
                              )
                            : Column(
                                children: [
                                  ABC_Store(),
                                  SizedBox(height: 20),
                                  ABC_Store(),
                                  SizedBox(height: 20),
                                  ABC_Store(),
                                  SizedBox(height: 20),
                                  ABC_Store(),
                                  SizedBox(height: 48),
                                  AppButton(
                                    buttonName: "sendcoupons".tr,
                                    onTap: () {
                                      Get.toNamed(Routes.couponRequestRoute);
                                    },
                                  ),
                                ],
                              ),
                      ],
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Container ABC_Store() {
  return Container(
    decoration: BoxDecoration(
      color: AppColors.WhiteColor.withOpacity(0.7),
      boxShadow: [
        BoxShadow(
          color: AppColors.blackColor.withOpacity(0.02),
          blurRadius: 2,
          offset: Offset(0, 4),
        ),
      ],
    ),
    child: Padding(
      padding: const EdgeInsets.all(15),
      child: Row(
        children: [
          Container(
            height: 72,
            width: 72,
            decoration: BoxDecoration(
              color: Color(0xffEEEEEE),
              borderRadius: BorderRadius.circular(72),
            ),
            child: Center(
              child: SvgPicture.asset(ImageConst.icon),
            ),
          ),
          SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppText(
                title: "Flat10off".tr,
                fontWeight: FontWeight.w600,
                size: 16,
                color: AppColors.itemNameClor,
              ),
              AppText(
                title: "minimumOrder".tr,
                size: 12,
                color: AppColors.grey2,
              ),
              SizedBox(height: 11),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Sentby".tr,
                      style: TextStyle(
                        fontSize: 12,
                        color: AppColors.grey2,
                      ),
                    ),
                    TextSpan(text: ' '),
                    TextSpan(
                      text: "dAGroceryStore".tr,
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                        color: AppColors.grey2,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
