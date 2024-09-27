//ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:seller_app/app/home/homePage.dart';
import 'package:seller_app/app/inventory/inventory.dart';
import 'package:seller_app/app/setting/setting.dart';
import 'package:seller_app/app/tiffin_services/tiffin_services_controller.dart';
import 'package:seller_app/routes/app_pages.dart';
import 'package:seller_app/utils/app_bars/main_appbar.dart';
import 'package:seller_app/utils/app_buttons/app_buttons.dart';
import 'package:seller_app/utils/app_colors/app_color.dart';
import 'package:seller_app/utils/app_constants/const_images.dart';
import 'package:seller_app/utils/app_text/app_text.dart';

final TiffinProviderController controller = TiffinProviderController();

class TiffinServices extends StatelessWidget {
  const TiffinServices({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        surfaceTintColor: AppColors.transperentColor,
        automaticallyImplyLeading: false,
        title: Obx(() {
          return MainAppBar(
            title: controller.selectValuetype.value == 'Allsellers'
                ? "allSellers".tr
                : controller.selectValuetype.value == 'dashboard'
                    ? "dashboard".tr
                    : "mySellers".tr,
            size: 20,
            color: AppColors.blackColor,
            leadingWidget: GestureDetector(
              onTap: () {
                Get.back();
              },
              child: SvgPicture.asset(ImageConst.backBtn),
            ),
            imageSuffix: GestureDetector(
              onTap: () {
                Get.toNamed(Routes.orderRoute);
              },
              child: Image.asset(
                ImageConst.drawerImg1,
                color: AppColors.grey3,
              ),
            ),
            imageSuffix2: GestureDetector(
                onTap: () {
                  Get.toNamed(Routes.messageRoute);
                },
                child: SvgPicture.asset(ImageConst.msg)),
            imageSuffix3: SvgPicture.asset(ImageConst.notification),
            sizedBoxWidth: 12,
            imageSuffix4: SvgPicture.asset(ImageConst.search),
          );
        }),
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
                child: Obx(() {
                  return Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: GetxGesture(
                              text: 'dashboard',
                              Apptext: "dashboard".tr,
                            ),
                          ),
                          SizedBox(width: 11),
                          Expanded(
                            child: GetxGesture(
                              text: 'Allsellers',
                              Apptext: "allSellers".tr,
                            ),
                          ),
                          SizedBox(width: 11),
                          Expanded(
                            child: GetxGesture(
                              text: 'mysellers',
                              Apptext: "mySellers".tr,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      controller.selectValuetype.value == 'Allsellers'
                          ? Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ManrajSweets(
                                  imageprefix: ImageConst.zaikaIndia,
                                  imagesuffix: ImageConst.pakorey,
                                ),
                                SizedBox(height: 20),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    AppText(
                                      title: "Popular".tr,
                                      color: AppColors.itemNameClor,
                                      size: 20,
                                      fontWeight: FontWeight.w600,
                                    ),
                                    Image.asset(ImageConst.adjust)
                                  ],
                                ),
                                SizedBox(height: 20),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Tiffins(
                                      imagepath: ImageConst.tiffinImg1,
                                      text: "aBTiffins".tr,
                                    ),
                                    SizedBox(width: 18),
                                    Tiffins(
                                      imagepath: ImageConst.tiffinImg2,
                                      text: "punjabiTiffins".tr,
                                    ),
                                  ],
                                ),
                                SizedBox(height: 20),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Tiffins(
                                      imagepath: ImageConst.tiffinImg3,
                                      text: "rRTiffins".tr,
                                    ),
                                    SizedBox(width: 18),
                                    Tiffins(
                                      imagepath: ImageConst.tiffinImg4,
                                      text: "bonTiffins".tr,
                                    ),
                                  ],
                                ),
                              ],
                            )
                          : SizedBox(height: 0),
                      controller.selectValuetype.value == 'mysellers'
                          ? Column(
                              children: [
                                ManrajSweets(
                                  imageprefix: ImageConst.zaikaIndia,
                                  imagesuffix: ImageConst.pakorey,
                                ),
                                SizedBox(height: 20),
                                Container(
                                  decoration: BoxDecoration(
                                    color: AppColors.WhiteColor,
                                    borderRadius: BorderRadius.circular(8),
                                    boxShadow: [
                                      BoxShadow(
                                        color: AppColors.blackColor
                                            .withOpacity(0.02),
                                        blurRadius: 2,
                                        offset: Offset(0, 4),
                                      ),
                                    ],
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        16, 12, 16, 12),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              children: [
                                                Container(
                                                  decoration: BoxDecoration(
                                                    color: Color(0xffFFF7B3),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8),
                                                  ),
                                                  child: Padding(
                                                    padding: const EdgeInsets
                                                        .fromLTRB(
                                                        6, 5.5, 6, 5.5),
                                                    child: Row(
                                                      children: [
                                                        Icon(
                                                          Icons.star,
                                                          size: 16,
                                                          color:
                                                              Color(0xff4E4E56),
                                                        ),
                                                        SizedBox(width: 4),
                                                        AppText(
                                                          title: "topseller".tr,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          color:
                                                              AppColors.grey3,
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(width: 12),
                                                Container(
                                                  decoration: BoxDecoration(
                                                    color: Color(0xffB4FEB2),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8),
                                                  ),
                                                  child: Padding(
                                                    padding: const EdgeInsets
                                                        .fromLTRB(
                                                        6, 5.5, 6, 5.5),
                                                    child: AppText(
                                                      title: "Popular".tr,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: AppColors.grey3,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Container(
                                              decoration: BoxDecoration(
                                                color: Color(0xff111111)
                                                    .withOpacity(0.7),
                                                borderRadius:
                                                    BorderRadius.circular(2),
                                              ),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        vertical: 3,
                                                        horizontal: 4),
                                                child: Row(
                                                  children: [
                                                    AppText(
                                                      title: "N45".tr,
                                                      size: 12,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      color:
                                                          AppColors.WhiteColor,
                                                    ),
                                                    SizedBox(width: 2),
                                                    Icon(
                                                      Icons.star,
                                                      size: 8,
                                                      color: Color(0xffFFE074),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                        SizedBox(height: 15),
                                        AppText(
                                          title: "customerAlberta1200".tr,
                                          color: AppColors.grey3,
                                          size: 12,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(height: 20),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    AppText(
                                      title: "myPlans".tr,
                                      color: AppColors.grey3,
                                      fontWeight: FontWeight.w500,
                                    ),
                                    Row(
                                      children: [
                                        AppText(
                                          title: "monthly".tr,
                                          color: AppColors.grey3,
                                          fontWeight: FontWeight.w500,
                                        ),
                                        SizedBox(width: 6),
                                        Icon(
                                          Icons.calendar_month_outlined,
                                          size: 18,
                                          color: Color(0xffFE914E),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(height: 20),
                                GestureDetector(
                                  onTap: () {
                                    Get.toNamed(Routes.basicPlanRoute);
                                  },
                                  child: PlanCard(
                                    plantext: "basicplan".tr,
                                    monpricetext: r"$660",
                                    perpricetext: r"$220",
                                    color: Color(0xffFFE27B),
                                    contcolor: AppColors.transperentColor,
                                    popcolor: AppColors.transperentColor,
                                  ),
                                ),
                                SizedBox(height: 20),
                                PlanCard(
                                  plantext: "premiumplan".tr,
                                  monpricetext: r"$720",
                                  perpricetext: r"$240",
                                  color: Color(0xffBFFFA1),
                                  contcolor: AppColors.blackColor,
                                  popcolor: AppColors.WhiteColor,
                                ),
                                SizedBox(height: 20),
                                PlanCard(
                                  plantext: "platinumplan".tr,
                                  monpricetext: r"$780",
                                  perpricetext: r"$260",
                                  color: Color(0xffF2A1FF),
                                  contcolor: AppColors.transperentColor,
                                  popcolor: AppColors.transperentColor,
                                ),
                                SizedBox(height: 20),
                                Container(
                                  decoration: BoxDecoration(
                                    color: Color(0xffFBB96C),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(16),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        AppText(
                                          title: "customizeplan".tr,
                                          fontWeight: FontWeight.w700,
                                          size: 18,
                                          color: AppColors.WhiteColor,
                                        ),
                                        SizedBox(height: 18),
                                        Row(
                                          children: [
                                            Container(
                                              height: 16,
                                              width: 16,
                                              decoration: BoxDecoration(
                                                color: AppColors.WhiteColor,
                                                borderRadius:
                                                    BorderRadius.circular(16),
                                              ),
                                              child: Center(
                                                child: Icon(
                                                  Icons.done,
                                                  size: 10,
                                                  color: Colors.orange.shade200,
                                                ),
                                              ),
                                            ),
                                            SizedBox(width: 8),
                                            AppText(
                                              title: "choseyourdiet".tr,
                                              fontWeight: FontWeight.w500,
                                              color: AppColors.WhiteColor,
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 10),
                                        Row(
                                          children: [
                                            Container(
                                              height: 16,
                                              width: 16,
                                              decoration: BoxDecoration(
                                                color: AppColors.WhiteColor,
                                                borderRadius:
                                                    BorderRadius.circular(16),
                                              ),
                                              child: Center(
                                                child: Icon(
                                                  Icons.done,
                                                  size: 10,
                                                  color: Colors.orange.shade200,
                                                ),
                                              ),
                                            ),
                                            SizedBox(width: 8),
                                            AppText(
                                              title: "makeyourplan".tr,
                                              fontWeight: FontWeight.w500,
                                              color: AppColors.WhiteColor,
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 10),
                                        Row(
                                          children: [
                                            Container(
                                              height: 16,
                                              width: 16,
                                              decoration: BoxDecoration(
                                                color: AppColors.WhiteColor,
                                                borderRadius:
                                                    BorderRadius.circular(16),
                                              ),
                                              child: Center(
                                                child: Icon(
                                                  Icons.done,
                                                  size: 10,
                                                  color: Colors.orange.shade200,
                                                ),
                                              ),
                                            ),
                                            SizedBox(width: 8),
                                            AppText(
                                              title: "varietydishes".tr,
                                              fontWeight: FontWeight.w500,
                                              color: AppColors.WhiteColor,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(height: 48),
                                AppButton(
                                  buttonName: "createplan".tr,
                                  onTap: () {
                                    Get.toNamed(Routes.createEditPlanRoute);
                                  },
                                ),
                              ],
                            )
                          : SizedBox(height: 0),
                      controller.selectValuetype.value == 'dashboard'
                          ? Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ManrajSweets(
                                  imageprefix: ImageConst.manraj,
                                  imagesuffix: ImageConst.gulabJamun,
                                ),
                                SizedBox(height: 20),
                                Container(
                                  decoration: BoxDecoration(
                                    color: AppColors.WhiteColor,
                                    borderRadius: BorderRadius.circular(8),
                                    boxShadow: [
                                      BoxShadow(
                                        color: AppColors.blackColor
                                            .withOpacity(0.02),
                                        blurRadius: 2,
                                        offset: Offset(0, 4),
                                      ),
                                    ],
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        16, 12, 16, 12),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        AppText(
                                          title: "aBTiffins".tr,
                                          fontWeight: FontWeight.w600,
                                          size: 16,
                                          color: AppColors.itemNameClor,
                                        ),
                                        SizedBox(height: 15),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              children: [
                                                Container(
                                                  decoration: BoxDecoration(
                                                    color: Color(0xffFFF7B3),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8),
                                                  ),
                                                  child: Padding(
                                                    padding: const EdgeInsets
                                                        .fromLTRB(
                                                        6, 5.5, 6, 5.5),
                                                    child: Row(
                                                      children: [
                                                        Icon(
                                                          Icons.star,
                                                          size: 16,
                                                          color:
                                                              Color(0xff4E4E56),
                                                        ),
                                                        SizedBox(width: 4),
                                                        AppText(
                                                          title: "topseller".tr,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          color:
                                                              AppColors.grey3,
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(width: 12),
                                                Container(
                                                  decoration: BoxDecoration(
                                                    color: Color(0xffB4FEB2),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8),
                                                  ),
                                                  child: Padding(
                                                    padding: const EdgeInsets
                                                        .fromLTRB(
                                                        6, 5.5, 6, 5.5),
                                                    child: AppText(
                                                      title: "Popular".tr,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: AppColors.grey3,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Container(
                                              decoration: BoxDecoration(
                                                color: Color(0xff111111)
                                                    .withOpacity(0.7),
                                                borderRadius:
                                                    BorderRadius.circular(2),
                                              ),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        vertical: 3,
                                                        horizontal: 4),
                                                child: Row(
                                                  children: [
                                                    AppText(
                                                      title: "N45".tr,
                                                      size: 12,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      color:
                                                          AppColors.WhiteColor,
                                                    ),
                                                    SizedBox(width: 2),
                                                    Icon(
                                                      Icons.star,
                                                      size: 8,
                                                      color: Color(0xffFFE074),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                        SizedBox(height: 15),
                                        AppText(
                                          title: "customerAlberta1200".tr,
                                          color: AppColors.grey3,
                                          size: 12,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(height: 20),
                                Row(
                                  children: [
                                    Expanded(
                                      child: GestureDetector(
                                        onTap: () {
                                          Get.toNamed(
                                              Routes.dashboardPaymentRoute);
                                        },
                                        child: overview(
                                          gradient: AppColors.commonGradient,
                                          imagePath: ImageConst.rank,
                                          text: "Payments".tr,
                                          priceText: r'$1200',
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 18),
                                    overview(
                                      gradient: AppColors.linearGreen,
                                      imagePath: ImageConst.notePad,
                                      priceText: '27',
                                      text: "TodayOrders".tr,
                                    ),
                                  ],
                                ),
                                SizedBox(height: 20),
                                Row(
                                  children: [
                                    overview(
                                      gradient: AppColors.linearOrange,
                                      imagePath: ImageConst.burger,
                                      text: "Products".tr,
                                      priceText: '84',
                                    ),
                                    SizedBox(width: 18),
                                    overview(
                                      gradient: AppColors.linearPurple,
                                      imagePath: ImageConst.pointer,
                                      priceText: '27',
                                      text: "rewardPoints".tr,
                                    ),
                                  ],
                                ),
                                SizedBox(height: 20),
                                AppText(
                                  title: "salesOverview".tr,
                                  fontWeight: FontWeight.w500,
                                ),
                                SizedBox(height: 12),
                                Stack(
                                  children: [
                                    Image.asset(
                                      ImageConst.graph,
                                      width: Get.width,
                                      fit: BoxFit.cover,
                                    ),
                                    Row(
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
                                          fontWeight: FontWeight.w500,
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
                                          fontWeight: FontWeight.w500,
                                          buttonColor: Color(0xffF7F7F7),
                                          buttonHeight: 34,
                                          buttonWidth: 76,
                                          isShowShadow: false,
                                          onTap: () {},
                                        ),
                                      ],
                                    ).marginOnly(top: 50, left: 20),
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
                                SizedBox(height: 29),
                                Container(
                                  decoration: BoxDecoration(
                                    color: AppColors.WhiteColor,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        21, 10, 21, 20),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        RichText(
                                          text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text: "thisMonth".tr,
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                              TextSpan(
                                                text: "saleInc".tr,
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 16,
                                                    color:
                                                        AppColors.commonColor),
                                              ),
                                            ],
                                          ),
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
                                            SizedBox(width: 10),
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
                                            SizedBox(width: 10),
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
                                          padding: const EdgeInsets.fromLTRB(
                                              15, 30, 15, 0),
                                          child: Row(
                                            children: [
                                              CircularPercentIndicator(
                                                circularStrokeCap:
                                                    CircularStrokeCap.round,
                                                reverse: true,
                                                backgroundColor: AppColors
                                                    .commonColor
                                                    .withOpacity(0.1),
                                                radius: 65.0,
                                                lineWidth: 16.0,
                                                percent: 0.6,
                                                center: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    AppText(
                                                      title: 'User',
                                                      size: 12,
                                                      color: AppColors.grey2,
                                                    ),
                                                    AppText(
                                                      title: '1263',
                                                      size: 20,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                    ),
                                                  ],
                                                ),
                                                linearGradient:
                                                    AppColors.Redgradient,
                                              ),
                                              SizedBox(width: 15),
                                              CircularPercentIndicator(
                                                circularStrokeCap:
                                                    CircularStrokeCap.round,
                                                // reverse: true,
                                                backgroundColor: AppColors
                                                    .commonColor
                                                    .withOpacity(0.1),
                                                radius: 65.0,
                                                lineWidth: 16.0,
                                                percent: 0.45,
                                                center: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    AppText(
                                                      title: 'Purchases',
                                                      size: 12,
                                                      color: AppColors.grey2,
                                                    ),
                                                    AppText(
                                                      title: '394',
                                                      size: 20,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                    ),
                                                  ],
                                                ),
                                                linearGradient:
                                                    AppColors.bluegradient,
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            )
                          : SizedBox(height: 0),
                    ],
                  );
                }),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Expanded Tiffins({
    required String imagepath,
    required String text,
  }) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.WhiteColor.withOpacity(0.7),
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: AppColors.blackColor.withOpacity(0.04),
              blurRadius: 12,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                alignment: Alignment.topRight,
                children: [
                  Image.asset(
                    imagepath,
                    width: Get.width,
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    top: 8,
                    right: 8,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xff111111).withOpacity(0.7),
                        borderRadius: BorderRadius.circular(2),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 3, horizontal: 4),
                        child: Row(
                          children: [
                            AppText(
                              title: "N45".tr,
                              size: 12,
                              fontWeight: FontWeight.w600,
                              color: AppColors.WhiteColor,
                            ),
                            SizedBox(width: 2),
                            Icon(
                              Icons.star,
                              size: 8,
                              color: Color(0xffFFE074),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 10),
              AppText(
                title: text,
                fontWeight: FontWeight.w600,
                size: 16,
                color: AppColors.itemNameClor,
              ),
              AppText(
                title: "alberta".tr,
                size: 12,
                color: AppColors.grey1,
              ),
              SizedBox(height: 8),
              AppText(
                title: "customer500".tr,
                size: 12,
                color: AppColors.greyMain,
              )
            ],
          ),
        ),
      ),
    );
  }

  GestureDetector GetxGesture({required String text, required String Apptext}) {
    return GestureDetector(
      onTap: () {
        controller.updateselectValue(text);
      },
      child: Container(
        decoration: controller.selectValuetype.value == text
            ? BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: AppColors.commonColor,
                  ),
                ),
              )
            : BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: AppColors.greyMain,
                  ),
                ),
              ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 11, horizontal: 12),
          child: controller.selectValuetype.value == text
              ? AppText(
                  title: Apptext,
                  fontWeight: FontWeight.w600,
                  size: 16,
                  gradient: AppColors.commonGradient,
                  textAlign: TextAlign.center,
                )
              : AppText(
                  title: Apptext,
                  fontWeight: FontWeight.w500,
                  size: 16,
                  color: AppColors.grey1,
                  textAlign: TextAlign.center,
                ),
        ),
      ),
    );
  }
}

Container PlanCard({
  required String plantext,
  required String monpricetext,
  required String perpricetext,
  required Color color,
  required Color contcolor,
  required Color popcolor,
}) {
  return Container(
    decoration: BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(8),
    ),
    child: Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  AppText(
                    title: plantext,
                    fontWeight: FontWeight.w700,
                    size: 18,
                  ),
                  AppText(
                    title: '(2k sales)',
                    size: 14,
                  ),
                ],
              ),
              Container(
                decoration: BoxDecoration(
                  color: contcolor,
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(6, 3, 6, 3),
                  child: AppText(
                    title: "Popular".tr,
                    color: popcolor,
                    size: 12,
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: 18),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    height: 16,
                    width: 16,
                    decoration: BoxDecoration(
                      color: AppColors.itemNameClor,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Center(
                      child: Icon(
                        Icons.done,
                        size: 10,
                        color: AppColors.WhiteColor,
                      ),
                    ),
                  ),
                  SizedBox(width: 8),
                  AppText(
                    title: "breakfast".tr,
                    fontWeight: FontWeight.w500,
                    color: AppColors.itemNameClor,
                    size: 12,
                  ),
                  AppText(
                    title: perpricetext,
                    color: AppColors.itemNameClor,
                    size: 11,
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  AppText(
                    title: monpricetext,
                    size: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  AppText(
                    title: '/mo',
                    color: AppColors.grey1,
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Container(
                height: 16,
                width: 16,
                decoration: BoxDecoration(
                  color: AppColors.itemNameClor,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Center(
                  child: Icon(
                    Icons.done,
                    size: 10,
                    color: AppColors.WhiteColor,
                  ),
                ),
              ),
              SizedBox(width: 8),
              AppText(
                title: "lunch".tr,
                fontWeight: FontWeight.w500,
                color: AppColors.itemNameClor,
                size: 12,
              ),
              AppText(
                title: perpricetext,
                color: AppColors.itemNameClor,
                size: 11,
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Container(
                height: 16,
                width: 16,
                decoration: BoxDecoration(
                  color: AppColors.itemNameClor,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Center(
                  child: Icon(
                    Icons.done,
                    size: 10,
                    color: AppColors.WhiteColor,
                  ),
                ),
              ),
              SizedBox(width: 8),
              AppText(
                title: "dinner".tr,
                fontWeight: FontWeight.w500,
                color: AppColors.itemNameClor,
                size: 12,
              ),
              AppText(
                title: perpricetext,
                color: AppColors.itemNameClor,
                size: 11,
              ),
            ],
          ),
        ],
      ),
    ),
  );
}

Expanded Tiffins({
  required String imagepath,
  required String text,
}) {
  return Expanded(
    child: Container(
      decoration: BoxDecoration(
        color: AppColors.WhiteColor.withOpacity(0.7),
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: AppColors.blackColor.withOpacity(0.04),
            blurRadius: 12,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: Alignment.topRight,
              children: [
                Image.asset(
                  imagepath,
                  width: Get.width,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  top: 8,
                  right: 8,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xff111111).withOpacity(0.7),
                      borderRadius: BorderRadius.circular(2),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 3, horizontal: 4),
                      child: Row(
                        children: [
                          AppText(
                            title: "N45".tr,
                            size: 12,
                            fontWeight: FontWeight.w600,
                            color: AppColors.WhiteColor,
                          ),
                          SizedBox(width: 2),
                          Icon(
                            Icons.star,
                            size: 8,
                            color: Color(0xffFFE074),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 10),
            AppText(
              title: text,
              fontWeight: FontWeight.w600,
              size: 16,
              color: AppColors.itemNameClor,
            ),
            AppText(
              title: "alberta".tr,
              size: 12,
              color: AppColors.grey1,
            ),
            SizedBox(height: 8),
            AppText(
              title: "customer500".tr,
              size: 12,
              color: AppColors.greyMain,
            )
          ],
        ),
      ),
    ),
  );
}

GestureDetector GetxGesture({required String text, required String Apptext}) {
  return GestureDetector(
    onTap: () {
      controller.updateselectValue(text);
    },
    child: Container(
      decoration: controller.selectValuetype.value == text
          ? BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: AppColors.commonColor,
                ),
              ),
            )
          : BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: AppColors.greyMain,
                ),
              ),
            ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 11, horizontal: 12),
        child: controller.selectValuetype.value == text
            ? AppText(
                title: Apptext,
                fontWeight: FontWeight.w600,
                size: 16,
                gradient: AppColors.commonGradient,
                textAlign: TextAlign.center,
              )
            : AppText(
                title: Apptext,
                fontWeight: FontWeight.w500,
                size: 16,
                color: AppColors.grey1,
                textAlign: TextAlign.center,
              ),
      ),
    ),
  );
}
