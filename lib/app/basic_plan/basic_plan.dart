// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:dotted_line/dotted_line.dart';
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

class BasicPlan extends StatelessWidget {
  const BasicPlan({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: MainAppBar(
          title: "basicplan".tr,
          size: 20,
          color: AppColors.WhiteColor,
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
          Container(
            height: 450,
            color: Color(0xffFB6D72),
            child: Image.asset(ImageConst.basicPlan),
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
                      padding: const EdgeInsets.fromLTRB(16, 0, 16, 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              AppText(
                                title: "basicplan".tr,
                                color: AppColors.grey3,
                                size: 20,
                                fontWeight: FontWeight.w600,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  AppText(
                                    title: r'$660',
                                    size: 20,
                                    fontWeight: FontWeight.w700,
                                  ),
                                  AppText(
                                    title: '/mo',
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.grey2,
                                  ),
                                ],
                              ),
                            ],
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
                              SvgPicture.asset(ImageConst.note),
                              SizedBox(width: 6),
                              AppText(
                                title: '2k Orders',
                                color: AppColors.greyMain,
                                fontWeight: FontWeight.w500,
                                size: 12,
                              ),
                            ],
                          ),
                          SizedBox(height: 12),
                          DottedLine(
                            dashColor: AppColors.greyMain,
                          ),
                          SizedBox(height: 16),
                          AppText(
                            title: "plandescription".tr,
                            color: AppColors.grey3,
                            size: 20,
                            fontWeight: FontWeight.w600,
                          ),
                          SizedBox(height: 6),
                          AppText(
                            title: "descplan".tr,
                            size: 12,
                            color: AppColors.grey1,
                          ),
                          SizedBox(height: 12),
                          DottedLine(
                            dashColor: AppColors.greyMain,
                          ),
                          SizedBox(height: 16),
                          AppText(
                            title: "meals".tr,
                            color: AppColors.grey3,
                            size: 24,
                            fontWeight: FontWeight.w600,
                          ),
                          SizedBox(height: 6),
                          Row(
                            children: [
                              Container(
                                height: 14,
                                width: 14,
                                decoration: BoxDecoration(
                                  color: Color(0xff2F80ED),
                                  borderRadius: BorderRadius.circular(14),
                                ),
                                child: Center(
                                  child: Icon(
                                    Icons.done,
                                    size: 8,
                                    color: AppColors.WhiteColor,
                                  ),
                                ),
                              ),
                              SizedBox(width: 8),
                              AppText(
                                title: "breakfast".tr,
                                fontWeight: FontWeight.w500,
                                size: 12,
                                color: AppColors.grey2,
                              ),
                            ],
                          ),
                          SizedBox(height: 8),
                          Row(
                            children: [
                              Container(
                                height: 14,
                                width: 14,
                                decoration: BoxDecoration(
                                  color: Color(0xff2F80ED),
                                  borderRadius: BorderRadius.circular(14),
                                ),
                                child: Center(
                                  child: Icon(
                                    Icons.done,
                                    size: 8,
                                    color: AppColors.WhiteColor,
                                  ),
                                ),
                              ),
                              SizedBox(width: 8),
                              AppText(
                                title: "lunch".tr,
                                fontWeight: FontWeight.w500,
                                size: 12,
                                color: AppColors.grey2,
                              ),
                            ],
                          ),
                          SizedBox(height: 8),
                          Row(
                            children: [
                              Container(
                                height: 14,
                                width: 14,
                                decoration: BoxDecoration(
                                  color: Color(0xff2F80ED),
                                  borderRadius: BorderRadius.circular(14),
                                ),
                                child: Center(
                                  child: Icon(
                                    Icons.done,
                                    size: 8,
                                    color: AppColors.WhiteColor,
                                  ),
                                ),
                              ),
                              SizedBox(width: 8),
                              AppText(
                                title: "dinner".tr,
                                fontWeight: FontWeight.w500,
                                size: 12,
                                color: AppColors.grey2,
                              ),
                            ],
                          ),
                          SizedBox(height: 12),
                          DottedLine(
                            dashColor: AppColors.greyMain,
                          ),
                          SizedBox(height: 16),
                          AppText(
                            title: "customizationOptions".tr,
                            color: AppColors.grey3,
                            size: 20,
                            fontWeight: FontWeight.w600,
                          ),
                          SizedBox(height: 6),
                          AppText(
                            title: "Breakfast".tr,
                            color: AppColors.grey3,
                            size: 14,
                            fontWeight: FontWeight.w600,
                          ),
                          SizedBox(height: 10),
                          AppText(
                            title: "aaluprantha".tr,
                            size: 12,
                            fontWeight: FontWeight.w500,
                            color: AppColors.grey2,
                          ),
                          SizedBox(height: 6),
                          AppText(
                            title: "gobhiprantha".tr,
                            size: 12,
                            fontWeight: FontWeight.w500,
                            color: AppColors.grey2,
                          ),
                          SizedBox(height: 16),
                          AppText(
                            title: "Lunch".tr,
                            color: AppColors.grey3,
                            size: 14,
                            fontWeight: FontWeight.w600,
                          ),
                          SizedBox(height: 10),
                          AppText(
                            title: "coffee".tr,
                            size: 12,
                            fontWeight: FontWeight.w500,
                            color: AppColors.grey2,
                          ),
                          SizedBox(height: 6),
                          AppText(
                            title: "coke".tr,
                            size: 12,
                            fontWeight: FontWeight.w500,
                            color: AppColors.grey2,
                          ),
                          SizedBox(height: 16),
                          AppText(
                            title: "Dinner".tr,
                            color: AppColors.grey3,
                            size: 14,
                            fontWeight: FontWeight.w600,
                          ),
                          SizedBox(height: 10),
                          AppText(
                            title: "sweetdish".tr,
                            size: 12,
                            fontWeight: FontWeight.w500,
                            color: AppColors.grey2,
                          ),
                          SizedBox(height: 6),
                          AppText(
                            title: "halwa".tr,
                            size: 12,
                            fontWeight: FontWeight.w500,
                            color: AppColors.grey2,
                          ),
                          SizedBox(height: 12),
                          DottedLine(
                            dashColor: AppColors.greyMain,
                          ),
                          SizedBox(height: 16),
                          AppText(
                            title: "Review".tr,
                            color: AppColors.grey3,
                            size: 20,
                            fontWeight: FontWeight.w600,
                          ),
                          SizedBox(height: 20),
                          Container(
                            decoration: BoxDecoration(
                              color: AppColors.WhiteColor,
                              borderRadius: BorderRadius.circular(8),
                              boxShadow: [
                                BoxShadow(
                                  color: AppColors.blackColor.withOpacity(0.02),
                                  blurRadius: 2,
                                  offset: Offset(0, 4),
                                ),
                              ],
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Row(
                                children: [
                                  Image.asset(ImageConst.john),
                                  SizedBox(width: 12),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            AppText(
                                              title: "john".tr,
                                              color: AppColors.grey3,
                                              size: 16,
                                              fontWeight: FontWeight.w600,
                                            ),
                                            Container(
                                              decoration: BoxDecoration(
                                                color: AppColors.commonColor
                                                    .withOpacity(0.32),
                                                borderRadius:
                                                    BorderRadius.circular(2),
                                              ),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(4),
                                                child: Row(
                                                  children: [
                                                    AppText(
                                                      title:
                                                          "N45".tr,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      size: 10,
                                                      color:
                                                          AppColors.commonColor,
                                                    ),
                                                    SizedBox(width: 2),
                                                    Icon(
                                                      Icons.star,
                                                      color:
                                                          AppColors.commonColor,
                                                      size: 8,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 4),
                                        AppText(
                                          title: "jhonReview".tr,
                                          size: 10,
                                          height: 1.5,
                                          color: Color(0xff898989),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                          Center(
                            child: TextButton(
                              onPressed: () {},
                              child: AppText(
                                title: "checkreviews".tr,
                                color: Color(0xff2F80ED),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          SizedBox(height: 32),
                          Row(
                            children: [
                              Expanded(
                                child: AppButton(
                                  buttonName: "delete".tr,
                                  isShowGradient: false,
                                  isShowShadow: false,
                                  borderColor: AppColors.grey1,
                                  textColor: AppColors.grey1,
                                  onTap: () {},
                                ),
                              ),
                              SizedBox(width: 18),
                              Expanded(
                                child: AppButton(
                                  buttonName: "editPlan".tr,
                                  isShowGradient: false,
                                  buttonColor: AppColors.WhiteColor,
                                  isShowShadow: false,
                                  borderColor: AppColors.commonColor,
                                  textColor: AppColors.commonColor,
                                  onTap: () {
                                    Get.toNamed(Routes.createEditPlanRoute);
                                  },
                                ),
                              ),
                            ],
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
