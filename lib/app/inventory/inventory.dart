// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:seller_app/app/home/homePage.dart';
import 'package:seller_app/app/setting/setting.dart';
import 'package:seller_app/routes/app_pages.dart';
import 'package:seller_app/utils/app_bars/main_appbar.dart';
import 'package:seller_app/utils/app_buttons/app_buttons.dart';
import 'package:seller_app/utils/app_colors/app_color.dart';
import 'package:seller_app/utils/app_constants/const_images.dart';
import 'package:seller_app/utils/app_text/app_text.dart';

class Inventory extends StatelessWidget {
  const Inventory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        surfaceTintColor: AppColors.transperentColor,
        automaticallyImplyLeading: false,
        title: MainAppBar(
          title: "inventory".tr,
          size: 20,
          color: AppColors.blackColor,
          leadingWidget: GestureDetector(
            onTap: () {
              Get.back();
            },
            child: SvgPicture.asset(ImageConst.backBtn),
          ),
          imageSuffix: SvgPicture.asset(ImageConst.search),
          imageSuffix2: Icon(Icons.mic, size: 20),
          sizedBoxWidth: 12,
          imageSuffix3: SvgPicture.asset(ImageConst.notification),
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
                padding: const EdgeInsets.fromLTRB(16, 24, 16, 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ManrajSweets(
                      imageprefix: ImageConst.manraj,
                      imagesuffix: ImageConst.gulabJamun,
                    ),
                    SizedBox(height: 20),
                    GestureDetector(
                      onTap: () {
                        Get.toNamed(Routes.storepageRoute);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: AppColors.WhiteColor,
                          boxShadow: [
                            BoxShadow(
                              color: AppColors.blackColor.withOpacity(0.14),
                            ),
                          ],
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(6),
                          child: Row(
                            children: [
                              Image.asset(ImageConst.restaurant),
                              SizedBox(width: 8),
                              Expanded(
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        AppText(
                                          title: "restaurantName".tr,
                                          fontWeight: FontWeight.w600,
                                          size: 16,
                                          color: AppColors.grey3,
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                            color: Color(0xff3F8242),
                                            borderRadius:
                                                BorderRadius.circular(2),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                4, 3, 4, 3),
                                            child: Row(
                                              children: [
                                                AppText(
                                                  title: "N45".tr,
                                                  fontWeight: FontWeight.w600,
                                                  size: 12,
                                                  color: AppColors.WhiteColor,
                                                ),
                                                SizedBox(width: 2),
                                                Icon(
                                                  Icons.star,
                                                  size: 9,
                                                  color: Color(0xffFFE074),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 6),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.thumb_up_outlined,
                                          color: Color(0xffAEAEAE),
                                          size: 17,
                                        ),
                                        SizedBox(width: 4),
                                        AppText(
                                          title: '8k',
                                          size: 12,
                                        ),
                                        SizedBox(width: 36),
                                        Icon(
                                          Icons.bookmark_border_rounded,
                                          color: Color(0xffAEAEAE),
                                          size: 17,
                                        ),
                                        SizedBox(width: 4),
                                        AppText(
                                          title: '4k',
                                          size: 12,
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 13),
                                    Row(
                                      children: [
                                        SvgPicture.asset(
                                          ImageConst.locationPin,
                                          height: 14,
                                          width: 12,
                                        ),
                                        SizedBox(width: 5),
                                        AppText(
                                          title: "storeLocatHere".tr,
                                          size: 10,
                                          color: AppColors.grey1,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        overview(
                          gradient: AppColors.commonGradient,
                          imagePath: ImageConst.burger,
                          text: "Products".tr,
                          priceText: '84',
                        ),
                        SizedBox(width: 18),
                        overview(
                          gradient: AppColors.linearGreen,
                          imagePath: ImageConst.notePad,
                          priceText: '27',
                          text: "employees".tr,
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppText(
                          title: "Notification".tr,
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
                    Cookies(),
                    SizedBox(height: 16),
                    Cookies(),
                    SizedBox(height: 20),
                    AppText(
                      title: "salesOverview".tr,
                      fontWeight: FontWeight.w600,
                      size: 20,
                    ),
                    SizedBox(height: 12),
                    Stack(
                      children: [
                        Image.asset(
                          ImageConst.graph,
                          width: Get.width,
                          fit: BoxFit.cover,
                        ),
                        Positioned(
                          top: 29,
                          left: 24,
                          child: Row(
                            children: [
                              AppButton(
                                buttonName: '7 days'.tr,
                                buttonHeight: 34,
                                buttonWidth: 76,
                                isShowShadow: false,
                                onTap: () {},
                              ),
                              SizedBox(width: 10),
                              AppButton(
                                buttonName: '30 days'.tr,
                                textColor: AppColors.blackColor,
                                isShowGradient: false,
                                fontWeight: FontWeight.w400,
                                buttonColor: Color(0xffF7F7F7),
                                buttonHeight: 34,
                                buttonWidth: 76,
                                isShowShadow: false,
                                onTap: () {},
                              ),
                              SizedBox(width: 10),
                              AppButton(
                                buttonName: '90 days'.tr,
                                textColor: AppColors.blackColor,
                                isShowGradient: false,
                                fontWeight: FontWeight.w400,
                                buttonColor: Color(0xffF7F7F7),
                                buttonHeight: 34,
                                buttonWidth: 76,
                                isShowShadow: false,
                                onTap: () {},
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          bottom: 26,
                          left: 60,
                          right: 23,
                          child: Row(
                            children: [
                              AppText(
                                title: '28th Oct',
                                fontWeight: FontWeight.w500,
                                color: Color(0xffAEAEAE),
                              ),
                              SizedBox(width: 42),
                              AppText(
                                title: '29th Oct',
                                fontWeight: FontWeight.w500,
                                color: Color(0xffAEAEAE),
                              ),
                              SizedBox(width: 42),
                              AppText(
                                title: '30th Oct',
                                fontWeight: FontWeight.w500,
                                color: Color(0xffAEAEAE),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 12),
                    Container(
                      decoration: BoxDecoration(
                        color: AppColors.WhiteColor,
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [
                          BoxShadow(
                            color: AppColors.blackColor.withOpacity(.02),
                            blurRadius: 2,
                            offset: Offset(0, 4),
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(21, 10, 21, 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AppText(
                              title: "profitLoss".tr,
                              fontWeight: FontWeight.w600,
                              size: 20,
                            ),
                            SizedBox(height: 22),
                            Row(
                              children: [
                                AppButton(
                                  buttonName: '7 days'.tr,
                                  buttonHeight: 34,
                                  buttonWidth: 76,
                                  isShowShadow: false,
                                  onTap: () {},
                                ),
                                SizedBox(width: 16),
                                AppButton(
                                  buttonName: '30 days'.tr,
                                  textColor: AppColors.blackColor,
                                  isShowGradient: false,
                                  fontWeight: FontWeight.w500,
                                  buttonColor: Color(0xffF7F7F7),
                                  buttonHeight: 34,
                                  buttonWidth: 76,
                                  isShowShadow: false,
                                  onTap: () {},
                                ),
                                SizedBox(width: 16),
                                AppButton(
                                  buttonName: '90 days'.tr,
                                  textColor: AppColors.blackColor,
                                  isShowGradient: false,
                                  fontWeight: FontWeight.w500,
                                  buttonColor: Color(0xffF7F7F7),
                                  buttonHeight: 34,
                                  buttonWidth: 76,
                                  isShowShadow: false,
                                  onTap: () {},
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(15, 30, 15, 0),
                              child: Row(
                                children: [
                                  CircularPercentIndicator(
                                    circularStrokeCap: CircularStrokeCap.round,
                                    reverse: true,
                                    backgroundColor:
                                        AppColors.commonColor.withOpacity(0.1),
                                    radius: 65.0,
                                    lineWidth: 16.0,
                                    percent: 0.6,
                                    center: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        AppText(
                                          title: 'Expenses'.tr,
                                          color: AppColors.grey2,
                                        ),
                                        SizedBox(height: 2),
                                        AppText(
                                          title: r'$2500.00',
                                          size: 16,
                                          fontWeight: FontWeight.w600,
                                          color: AppColors.commonColor,
                                        ),
                                      ],
                                    ),
                                    linearGradient: AppColors.Redgradient,
                                  ),
                                  SizedBox(width: 47),
                                  CircularPercentIndicator(
                                    circularStrokeCap: CircularStrokeCap.round,
                                    backgroundColor:
                                        AppColors.commonColor.withOpacity(0.1),
                                    reverse: true,
                                    radius: 65.0,
                                    lineWidth: 16.0,
                                    percent: 0.45,
                                    center: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        AppText(
                                          title: 'Profits'.tr,
                                          color: AppColors.grey2,
                                        ),
                                        AppText(
                                          title: r'$3500.00',
                                          size: 16,
                                          color: Colors.green,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ],
                                    ),
                                    linearGradient: AppColors.bluegradient,
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 12),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppText(
                          title: "Products".tr,
                          size: 20,
                          fontWeight: FontWeight.w600,
                          color: AppColors.itemNameClor,
                        ),
                        AppText(
                          title: "Viewall".tr,
                          size: 12,
                          fontWeight: FontWeight.w500,
                          color: AppColors.commonColor,
                        ),
                      ],
                    ),
                    SizedBox(height: 16),
                    Container(
                      decoration: BoxDecoration(
                        color: AppColors.WhiteColor,
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: [
                          BoxShadow(
                            color: AppColors.blackColor.withOpacity(.05),
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
                              ImageConst.annar,
                              height: 70,
                              width: 103,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(width: 10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                AppText(
                                  title: 'Promegranate'.tr,
                                  fontWeight: FontWeight.w600,
                                  size: 16,
                                  color: Color(0xff434343),
                                ),
                                SizedBox(height: 2),
                                AppText(
                                  title: "Fruits".tr,
                                  size: 12,
                                  color: AppColors.grey2,
                                ),
                                SizedBox(height: 2),
                                Row(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        color:
                                            Color(0xffF33F41).withOpacity(0.32),
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
                                    SizedBox(width: 15),
                                    AppText(
                                      title: "restocknow".tr,
                                      size: 12,
                                      fontWeight: FontWeight.w500,
                                      color: AppColors.commonColor,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      decoration: BoxDecoration(
                        color: AppColors.WhiteColor,
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: [
                          BoxShadow(
                            color: AppColors.blackColor.withOpacity(.05),
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
                              ImageConst.apple,
                              height: 70,
                              width: 76,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(width: 10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                AppText(
                                  title: 'Apple'.tr,
                                  fontWeight: FontWeight.w600,
                                  size: 16,
                                  color: Color(0xff434343),
                                ),
                                SizedBox(height: 2),
                                AppText(
                                  title: "Fruits".tr,
                                  size: 12,
                                  color: AppColors.grey2,
                                ),
                                SizedBox(height: 2),
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
                          ],
                        ),
                      ),
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

Container Cookies() {
  return Container(
    decoration: BoxDecoration(
      color: AppColors.WhiteColor,
      borderRadius: BorderRadius.circular(8),
    ),
    child: Padding(
      padding: const EdgeInsets.fromLTRB(16, 10, 16, 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppText(
                title: "restockCookies".tr,
                fontWeight: FontWeight.w500,
                color: AppColors.grey3,
              ),
              Row(
                children: [
                  Container(
                    height: 8,
                    width: 8,
                    decoration: BoxDecoration(
                      color: AppColors.commonColor,
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  SizedBox(width: 4),
                  AppText(
                    title: "ago1m".tr,
                    size: 12,
                    gradient: AppColors.commonGradient,
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 4),
          AppText(
            title: "loremdesc".tr,
            size: 12,
            color: AppColors.grey2,
          ),
        ],
      ),
    ),
  );
}

Expanded overview(
    {required gradient,
    required String imagePath,
    required String text,
    required String priceText}) {
  return Expanded(
    child: Container(
      decoration: BoxDecoration(
        gradient: gradient,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 20, 0, 17),
        child: Column(
          children: [
            Row(
              children: [
                Image.asset(imagePath),
                SizedBox(width: 29),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppText(
                      title: priceText,
                      fontWeight: FontWeight.w600,
                      color: AppColors.WhiteColor,
                      size: 16,
                    ),
                    AppText(
                      title: text,
                      color: AppColors.WhiteColor,
                      fontWeight: FontWeight.w500,
                      size: 12,
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 33),
            TextButton(
              onPressed: () {},
              child: AppText(
                title: "Taptoview".tr,
                fontWeight: FontWeight.w500,
                size: 12,
                color: AppColors.WhiteColor,
              ),
            )
          ],
        ),
      ),
    ),
  );
}
