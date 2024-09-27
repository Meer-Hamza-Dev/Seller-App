// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:seller_app/app/store_view/store_view.dart';
import 'package:seller_app/utils/app_buttons/app_buttons.dart';
import 'package:seller_app/utils/app_colors/app_color.dart';
import 'package:seller_app/utils/app_constants/const_images.dart';
import 'package:seller_app/utils/app_text/app_text.dart';

class Store_Page extends StatelessWidget {
  const Store_Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Color(0xffFB6D72),
            height: 250,
            child: Padding(
              padding: const EdgeInsets.only(left: 16, top: 39),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: SvgPicture.asset(ImageConst.backBtn),
                  ),
                  SizedBox(width: 55),
                  Image.asset(
                    ImageConst.bigManraj,
                  ),
                ],
              ),
            ),
          ),
          DraggableScrollableSheet(
            initialChildSize: 0.6,
            minChildSize: 0.6,
            maxChildSize: 0.6,
            builder: (BuildContext context, ScrollController scrollController) {
              return Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20.0),
                    topLeft: Radius.circular(20.0),
                  ),
                ),
                child: ListView(
                  controller: scrollController,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(16, 32, 16, 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AppText(
                            title: "manRajSweet".tr,
                            color: AppColors.itemNameClor,
                            size: 24,
                            fontWeight: FontWeight.w600,
                          ),
                          SizedBox(height: 4),
                          Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [
                                      Color(0xffF33F41).withOpacity(0.1),
                                      Color(0xffFB6D72).withOpacity(0.1),
                                    ],
                                  ),
                                  borderRadius: BorderRadius.circular(32),
                                ),
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(4, 5, 4, 5),
                                  child: Icon(
                                    Icons.star,
                                    color: AppColors.commonColor,
                                    size: 16,
                                  ),
                                ),
                              ),
                              SizedBox(width: 6),
                              AppText(
                                title: '234 reviews',
                                color: AppColors.greyMain,
                                fontWeight: FontWeight.w500,
                                size: 12,
                              ),
                              SizedBox(width: 20),
                              Container(
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [
                                      Color(0xffF33F41).withOpacity(0.1),
                                      Color(0xffFB6D72).withOpacity(0.1),
                                    ],
                                  ),
                                  borderRadius: BorderRadius.circular(32),
                                ),
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(4, 5, 4, 5),
                                  child: Icon(
                                    Icons.location_on_outlined,
                                    color: AppColors.commonColor,
                                    size: 16,
                                  ),
                                ),
                              ),
                              SizedBox(width: 6),
                              AppText(
                                title: '2.5 km',
                                color: AppColors.greyMain,
                                fontWeight: FontWeight.w500,
                                size: 12,
                              ),
                            ],
                          ),
                          SizedBox(height: 14),
                          Row(
                            children: [
                              Icon(
                                Icons.thumb_up_off_alt,
                                size: 18,
                                color: AppColors.greyMain,
                              ),
                              SizedBox(width: 8),
                              AppText(
                                title: "6k",
                                size: 12,
                                color: AppColors.grey3,
                              ),
                              SizedBox(width: 36),
                              Icon(
                                Icons.bookmark_outline_outlined,
                                size: 18,
                                color: AppColors.greyMain,
                              ),
                              SizedBox(width: 8),
                              AppText(
                                title: "4k",
                                size: 12,
                                color: AppColors.grey3,
                              ),
                            ],
                          ),
                          SizedBox(height: 20),
                          AppText(
                            title: "about".tr,
                            color: AppColors.itemNameClor,
                            size: 20,
                            fontWeight: FontWeight.w600,
                          ),
                          SizedBox(height: 6),
                          AppText(
                            title: "aboutdesc".tr,
                            color: AppColors.grey1,
                          ),
                          SizedBox(height: 48),
                          Row(
                            children: [
                              overviewStore(
                                gradient: AppColors.commonGradient,
                                imagePath: ImageConst.user,
                                priceText: "4k",
                                text: "customer".tr,
                              ),
                              SizedBox(width: 18),
                              overviewStore(
                                gradient: AppColors.linearGreen,
                                imagePath: ImageConst.list,
                                priceText: '100+',
                                text: "staff".tr,
                              ),
                            ],
                          ),
                          SizedBox(height: 20),
                          Row(
                            children: [
                              overviewStore(
                                gradient: AppColors.linearOrange,
                                imagePath: ImageConst.brown,
                                priceText: '10k',
                                text: "storeWishlisted".tr,
                              ),
                              SizedBox(width: 18),
                              overviewStore(
                                gradient: AppColors.linearPurple,
                                imagePath: ImageConst.purpule,
                                priceText: '20k',
                                text: "productsWishlisted".tr,
                              ),
                            ],
                          ),
                          SizedBox(height: 48),
                          JohnReview(),
                          SizedBox(height: 16),
                          JohnReview(),
                          SizedBox(height: 16),
                          JohnReview(),
                          SizedBox(height: 32),
                          AppButton(
                            buttonName: "edit".tr,
                            isShowGradient: false,
                            isShowShadow: false,
                            buttonColor: AppColors.WhiteColor,
                            borderColor: AppColors.commonColor,
                            textColor: AppColors.commonColor,
                            onTap: () {},
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
