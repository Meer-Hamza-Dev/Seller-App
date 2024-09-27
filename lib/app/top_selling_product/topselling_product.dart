// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:seller_app/app/discount_offer/discount_offer.dart';
import 'package:seller_app/utils/app_bars/main_appbar.dart';
import 'package:seller_app/utils/app_colors/app_color.dart';
import 'package:seller_app/utils/app_constants/const_images.dart';
import 'package:seller_app/utils/app_text/app_text.dart';

class TopsellingProduct extends StatelessWidget {
  const TopsellingProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        surfaceTintColor: AppColors.transperentColor,

        automaticallyImplyLeading: false,
        toolbarHeight: 70,
        title: MainAppBar(
          title: "Topselling".tr,
          size: 20,
          color: AppColors.blackColor,
          leadingWidget: SvgPicture.asset(ImageConst.backBtn),
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
                    HolidayOffer(),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            gradient: AppColors.commonGradient,
                            boxShadow: [
                              BoxShadow(
                                color: AppColors.blackColor.withOpacity(.03),
                                blurRadius: 2,
                                offset: Offset(0, 4),
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(7, 6.5, 7, 6.5),
                            child: Row(
                              children: [
                                AppText(
                                  title: "categories".tr,
                                  color: AppColors.WhiteColor,
                                ),
                                SizedBox(width: 4),
                                Icon(
                                  Icons.keyboard_arrow_down_outlined,
                                  size: 20,
                                  color: AppColors.WhiteColor,
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 14),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: AppColors.grey2),
                            borderRadius: BorderRadius.circular(8),
                            color: AppColors.WhiteColor,
                            boxShadow: [
                              BoxShadow(
                                color: AppColors.blackColor.withOpacity(.03),
                                blurRadius: 2,
                                offset: Offset(0, 4),
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(7, 6.5, 7, 6.5),
                            child: AppText(
                              title: "Popular".tr,
                              color: AppColors.grey2,
                            ),
                          ),
                        ),
                        SizedBox(width: 14),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: AppColors.grey2),
                            borderRadius: BorderRadius.circular(8),
                            color: AppColors.WhiteColor,
                            boxShadow: [
                              BoxShadow(
                                color: AppColors.blackColor.withOpacity(.03),
                                blurRadius: 2,
                                offset: Offset(0, 4),
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(7, 6.5, 7, 6.5),
                            child: AppText(
                              title: "Topselling".tr,
                              color: AppColors.grey2,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    TopSellingProducts(ImagePath: ImageConst.annar),
                    SizedBox(height: 20),
                    TopSellingProducts(ImagePath: ImageConst.apple),
                    SizedBox(height: 20),
                    TopSellingProducts(ImagePath: ImageConst.annar),
                    SizedBox(height: 20),
                    TopSellingProducts(ImagePath: ImageConst.apple),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Container TopSellingProducts({required String ImagePath}) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.WhiteColor,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: AppColors.blackColor.withOpacity(.03),
            blurRadius: 2,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 14, 15, 14),
        child: Row(
          children: [
            Image.asset(
              ImagePath,
              height: 70,
              fit: BoxFit.cover,
            ),
            SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppText(
                        title: "pomegranate".tr,
                        fontWeight: FontWeight.w600,
                        size: 16,
                        color: Color(0xff434343),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Color(0xffF33F41).withOpacity(0.32),
                          borderRadius: BorderRadius.circular(2),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 4, vertical: 2.5),
                          child: Row(
                            children: [
                              AppText(
                                title: "N45".tr,
                                fontWeight: FontWeight.w600,
                                size: 12,
                                color: AppColors.commonColor,
                              ),
                              Icon(
                                Icons.star,
                                size: 12,
                                color: AppColors.commonColor,
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 2),
                  AppText(
                    title: "Fruits".tr,
                    size: 12,
                    color: AppColors.grey2,
                  ),
                  SizedBox(height: 3),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppText(
                        title: r"$3".tr,
                        size: 20,
                        fontWeight: FontWeight.w600,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          gradient: AppColors.commonGradient,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(3),
                          child: Icon(
                            Icons.add,
                            color: AppColors.WhiteColor,
                          ),
                        ),
                      ),
                    ],
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
