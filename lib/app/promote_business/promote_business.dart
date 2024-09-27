// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:seller_app/app/setting/setting.dart';
import 'package:seller_app/routes/app_pages.dart';
import 'package:seller_app/utils/app_bars/main_appbar.dart';
import 'package:seller_app/utils/app_buttons/app_buttons.dart';
import 'package:seller_app/utils/app_colors/app_color.dart';
import 'package:seller_app/utils/app_constants/const_images.dart';
import 'package:seller_app/utils/app_text/app_text.dart';
import 'package:seller_app/utils/app_text_field.dart';

class Promotr_Business extends StatelessWidget {
  const Promotr_Business({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        surfaceTintColor: AppColors.transperentColor,
        automaticallyImplyLeading: false,
        title: MainAppBar(
          title: "promotebusiness".tr,
          size: 20,
          color: AppColors.blackColor,
          leadingWidget: GestureDetector(
            onTap: () {
              Get.back();
            },
            child: SvgPicture.asset(ImageConst.backBtn),
          ),
          imageSuffix2: SvgPicture.asset(ImageConst.info),
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
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 20, 16, 20),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xffB67EE2),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(17),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                AppText(
                                  title: "PROMOTEBUSINESS".tr,
                                  fontWeight: FontWeight.w700,
                                  size: 18,
                                  color: AppColors.WhiteColor,
                                ),
                                SizedBox(height: 9),
                                AppButton(
                                  buttonHeight: 45,
                                  buttonWidth: 146,
                                  buttonName: "Createadd".tr,
                                  isShowGradient: false,
                                  buttonColor: AppColors.WhiteColor,
                                  textColor: Color(0xffB67EE2),
                                  onTap: () {
                                    Get.bottomSheet(
                                      isScrollControlled: true,
                                      Container(
                                        height: Get.height * .8,
                                        decoration: BoxDecoration(
                                          color: AppColors.WhiteColor,
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(20),
                                            topRight: Radius.circular(20),
                                          ),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              16, 6, 16, 40),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Center(
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                      height: 5.43,
                                                      width: 139.36,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            Color(0xff5E6875),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                      ),
                                                    ),
                                                    SizedBox(height: 36),
                                                    AppText(
                                                      title: "Createadd".tr,
                                                      color: AppColors.grey3,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      size: 20,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              SizedBox(height: 48),
                                              Container(
                                                width: double.infinity,
                                                decoration: BoxDecoration(
                                                    color: AppColors.WhiteColor,
                                                    border: Border.all(
                                                        color: AppColors
                                                            .borderColor),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8)),
                                                child: Padding(
                                                  padding: const EdgeInsets
                                                      .symmetric(vertical: 36),
                                                  child: Column(
                                                    children: [
                                                      SvgPicture.asset(
                                                        ImageConst.img,
                                                        width: 30,
                                                        height: 30,
                                                        fit: BoxFit.cover,
                                                        color:
                                                            Color(0xffDADADA),
                                                      ),
                                                      SizedBox(height: 19),
                                                      AppText(
                                                        title:
                                                            "uploadaddimage".tr,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        size: 16,
                                                        color: AppColors.grey3,
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              SizedBox(height: 20),
                                              AppText(
                                                title: "addTitle".tr,
                                                fontWeight: FontWeight.w500,
                                              ),
                                              SizedBox(height: 6),
                                              appField(
                                                  context: context,
                                                  hint: "Typehere".tr),
                                              SizedBox(height: 28),
                                              Row(
                                                children: [
                                                  SvgPicture.asset(
                                                    ImageConst.locationPin,
                                                    color: AppColors.blackColor,
                                                    fit: BoxFit.cover,
                                                  ),
                                                  SizedBox(width: 12.38),
                                                  AppText(
                                                    title: "addLocation".tr,
                                                    fontWeight: FontWeight.w600,
                                                    size: 16,
                                                  )
                                                ],
                                              ),
                                              SizedBox(height: 30),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  AppText(
                                                    title: "selectdays".tr,
                                                    fontWeight: FontWeight.w500,
                                                    color: AppColors.grey3,
                                                  ),
                                                  Container(
                                                    decoration: BoxDecoration(
                                                      border: Border.all(
                                                          color: AppColors
                                                              .borderColor),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12),
                                                    ),
                                                    child: Padding(
                                                      padding: const EdgeInsets
                                                          .symmetric(
                                                          vertical: 9,
                                                          horizontal: 36),
                                                      child: AppText(
                                                        title: '5 days',
                                                        color: AppColors.grey3,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                              SizedBox(height: 20),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  AppText(
                                                    title: "selectBudget".tr,
                                                    fontWeight: FontWeight.w500,
                                                    color: AppColors.grey3,
                                                  ),
                                                  Container(
                                                    decoration: BoxDecoration(
                                                      border: Border.all(
                                                          color: AppColors
                                                              .borderColor),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12),
                                                    ),
                                                    child: Padding(
                                                      padding: const EdgeInsets
                                                          .symmetric(
                                                          vertical: 9,
                                                          horizontal: 31),
                                                      child: AppText(
                                                        title: r'$120.00',
                                                        color: AppColors.grey3,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                              SizedBox(height: 20),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  AppText(
                                                    title: "walletBalance".tr,
                                                  ),
                                                  AppText(
                                                    title: r"$1200".tr,
                                                    fontWeight: FontWeight.w500,
                                                    gradient: AppColors
                                                        .commonGradient,
                                                  ),
                                                ],
                                              ),
                                              SizedBox(height: 48),
                                              AppButton(
                                                buttonName: "publishAdd".tr,
                                                onTap: () {},
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ],
                            ),
                            Image.asset(ImageConst.mic),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: AppColors.WhiteColor,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                    ),
                    child: SafeArea(
                      minimum: EdgeInsets.fromLTRB(15, 35, 15, 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AppText(
                            title: "Myads".tr,
                            size: 20,
                            fontWeight: FontWeight.w600,
                          ),
                          SizedBox(height: 20),
                          Row(
                            children: [
                              AppButton(
                                buttonName: "Active".tr,
                                buttonHeight: 32,
                                buttonWidth: 84,
                                isShowShadow: false,
                                buttonRadius: BorderRadius.circular(36),
                                onTap: () {},
                              ),
                              SizedBox(width: 15),
                              AppButton(
                                buttonName: "History".tr,
                                isShowGradient: false,
                                borderColor: AppColors.grey2,
                                isShowShadow: false,
                                textColor: AppColors.grey2,
                                buttonColor: AppColors.WhiteColor,
                                buttonHeight: 32,
                                buttonWidth: 84,
                                buttonRadius: BorderRadius.circular(36),
                                onTap: () {},
                              ),
                            ],
                          ),
                          SizedBox(height: 20),
                          GestureDetector(
                            onTap: () {
                              Get.toNamed(Routes.addDetailsRoute);
                            },
                            child: RestaurantAdd(),
                          ),
                          SizedBox(height: 18),
                          GestureDetector(
                            onTap: () {
                              Get.toNamed(Routes.addDetailsRoute);
                            },
                            child: RestaurantAdd(),
                          ),
                          SizedBox(height: 18),
                          GestureDetector(
                            onTap: () {
                              Get.toNamed(Routes.addDetailsRoute);
                            },
                            child: RestaurantAdd(),
                          ),
                          SizedBox(height: 20),
                          AppButton(
                            isShowGradient: false,
                            isShowShadow: false,
                            buttonColor: AppColors.WhiteColor,
                            borderColor: AppColors.grey3,
                            textColor: AppColors.grey3,
                            buttonName: "share".tr,
                            onTap: () {},
                          ),
                          SizedBox(height: 20),
                          Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Color(0xff25D366),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 13),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SvgPicture.asset(ImageConst.whatsapp),
                                  SizedBox(width: 14),
                                  Container(
                                    height: 20,
                                    width: 1,
                                    color: AppColors.WhiteColor,
                                  ),
                                  SizedBox(width: 14),
                                  AppText(
                                    title: "sHAREWHATSAPP".tr,
                                    color: AppColors.WhiteColor,
                                    fontWeight: FontWeight.w600,
                                    size: 12,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
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

  Container RestaurantAdd() {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xffFAFAFA),
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: AppColors.blackColor.withOpacity(0.1),
            blurRadius: 7,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(56),
              child: Image.asset(
                ImageConst.platter,
                height: 56,
                fit: BoxFit.cover,
                width: 56,
              ),
            ),
            SizedBox(width: 9),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppText(
                        title: "Restaurantadd".tr,
                        size: 17,
                        fontWeight: FontWeight.w600,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: AppColors.greyMain),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(7),
                          child: Row(
                            children: [
                              Container(
                                height: 10,
                                width: 10,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color(0xff26A033),
                                ),
                              ),
                              SizedBox(width: 5),
                              AppText(
                                title: "Active".tr,
                                color: AppColors.greyMain,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Icon(
                        Icons.thumb_up_alt_outlined,
                        size: 15,
                        color: AppColors.greyMain,
                      ),
                      SizedBox(width: 8),
                      AppText(
                        title: '6k',
                        size: 12,
                        fontWeight: FontWeight.w500,
                        color: AppColors.grey3,
                      ),
                      SizedBox(width: 36),
                      Icon(Icons.analytics_outlined,
                          size: 15, color: AppColors.greyMain),
                      SizedBox(width: 8),
                      AppText(
                        title: '20k',
                        size: 12,
                        fontWeight: FontWeight.w500,
                        color: AppColors.grey3,
                      ),
                    ],
                  ),
                  SizedBox(height: 7),
                  DottedLine(
                    direction: Axis.horizontal,
                    dashColor: AppColors.borderColor,
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      AppText(
                        title: "Published".tr,
                        size: 12,
                        color: AppColors.grey3,
                      ),
                      SizedBox(width: 16),
                      Icon(
                        Icons.access_time,
                        color: AppColors.greyMain,
                        size: 19,
                      ),
                      SizedBox(width: 7),
                      AppText(
                        title: "daysago5".tr,
                        size: 12,
                        color: AppColors.grey3,
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
