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

class DiscountOffer extends StatelessWidget {
  const DiscountOffer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        surfaceTintColor: AppColors.transperentColor,
        title: MainAppBar(
          title: "discountoffer".tr,
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
                padding: const EdgeInsets.fromLTRB(16, 20, 16, 16),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              gradient: AppColors.commonGradient,
                              borderRadius: BorderRadius.circular(8),
                              border:
                                  Border.all(color: AppColors.transperentColor),
                              boxShadow: [
                                BoxShadow(
                                    color:
                                        AppColors.blackColor.withOpacity(0.02),
                                    blurRadius: 2,
                                    offset: Offset(0, 4)),
                              ],
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(6.5, 10, 6.5, 10),
                              child: AppText(
                                title: "Percentage".tr,
                                color: AppColors.WhiteColor,
                                fontWeight: FontWeight.w500,
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 11),
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                                color: AppColors.transperentColor,
                                borderRadius: BorderRadius.circular(8),
                                boxShadow: [
                                  BoxShadow(
                                      color: AppColors.blackColor
                                          .withOpacity(0.02),
                                      blurRadius: 2,
                                      offset: Offset(0, 4)),
                                ],
                                border: Border.all(color: AppColors.grey2)),
                            child: Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(6.5, 10, 6.5, 10),
                              child: AppText(
                                title: "Fixedamount".tr,
                                color: AppColors.grey2,
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 11),
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                                color: AppColors.transperentColor,
                                borderRadius: BorderRadius.circular(8),
                                boxShadow: [
                                  BoxShadow(
                                      color: AppColors.blackColor
                                          .withOpacity(0.02),
                                      blurRadius: 2,
                                      offset: Offset(0, 4)),
                                ],
                                border: Border.all(color: AppColors.grey2)),
                            child: Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(6.5, 10, 6.5, 10),
                              child: AppText(
                                title: "Buy1Get1".tr,
                                color: AppColors.grey2,
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    GestureDetector(
                      onTap: () {
                        Get.toNamed(Routes.holidayOfferRoute);
                      },
                      child: HolidayOffer(),
                    ),
                    SizedBox(height: 20),
                    HolidayOffer(),
                    SizedBox(height: 20),
                    HolidayOffer(),
                    SizedBox(height: 20),
                    HolidayOffer(),
                    SizedBox(height: 20),
                    HolidayOffer(),
                    SizedBox(height: 48),
                    AppButton(
                      buttonName: "createoffer".tr,
                      isShowShadow: false,
                      onTap: () {
                        Get.toNamed(Routes.createNewOfferRoute);
                      },
                    ),
                    SizedBox(height: 32),
                    AppButton(
                      buttonName: "productlist".tr,
                      borderColor: AppColors.commonColor,
                      buttonColor: AppColors.transperentColor,
                      isShowGradient: false,
                      isShowShadow: false,
                      textColor: AppColors.commonColor,
                      onTap: () {
                        Get.toNamed(Routes.createProductRoute);
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
}

Container HolidayOffer() {
  return Container(
    decoration: BoxDecoration(
      color: AppColors.WhiteColor,
      boxShadow: [
        BoxShadow(
          color: AppColors.blackColor.withOpacity(.02),
          blurRadius: 2,
          offset: Offset(0, 4),
        ),
      ],
      borderRadius: BorderRadius.circular(16),
    ),
    child: Padding(
      padding: const EdgeInsets.fromLTRB(16, 14, 16, 14),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Color(0xffEEEEEE),
              borderRadius: BorderRadius.circular(40),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: SvgPicture.asset(
                ImageConst.icon,
              ),
            ),
          ),
          SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppText(
                  title: "holidayOffer".tr,
                  size: 16,
                  fontWeight: FontWeight.w600,
                  color: AppColors.itemNameClor,
                ),
                SizedBox(height: 5),
                AppText(
                  title: "minimumOrder".tr,
                  color: AppColors.grey2,
                  size: 12,
                  fontWeight: FontWeight.w400,
                ),
                SizedBox(height: 5),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Offerapplied".tr,
                        style: TextStyle(
                          color: AppColors.grey2,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      TextSpan(text: ' '),
                      TextSpan(
                        text: "Products12".tr,
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: AppColors.grey3,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SvgPicture.asset(ImageConst.off40)
        ],
      ),
    ),
  );
}
