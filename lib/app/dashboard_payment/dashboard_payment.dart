// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:seller_app/app/home/homePage.dart';
import 'package:seller_app/routes/app_pages.dart';
import 'package:seller_app/utils/app_bars/main_appbar.dart';
import 'package:seller_app/utils/app_buttons/app_buttons.dart';
import 'package:seller_app/utils/app_colors/app_color.dart';
import 'package:seller_app/utils/app_constants/const_images.dart';
import 'package:seller_app/utils/app_text/app_text.dart';

class DashboardPayment extends StatelessWidget {
  const DashboardPayment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        elevation: 0,
        surfaceTintColor: AppColors.transperentColor,
        automaticallyImplyLeading: false,
        title: MainAppBar(
          title: "Payments".tr,
          color: AppColors.blackColor,
          size: 20,
          leadingWidget: SvgPicture.asset(ImageConst.backBtn),
          imageSuffix: Image.asset(
            ImageConst.drawerImg1,
            color: AppColors.grey3,
          ),
          sizedBoxWidth: 12,
          imageSuffix2: GestureDetector(
              onTap: () {
                Get.toNamed(Routes.messageRoute);
              },
              child: SvgPicture.asset(ImageConst.msg)),
          imageSuffix3: SvgPicture.asset(ImageConst.notification),
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
                    ManrajSweets(
                      imageprefix: ImageConst.manraj,
                      imagesuffix: ImageConst.gulabJamun,
                    ),
                    SizedBox(height: 20),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        gradient: AppColors.commonGradient,
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: [
                          BoxShadow(
                            color: AppColors.blackColor.withOpacity(0.02),
                            blurRadius: 2,
                            offset: Offset(0, 4),
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(16, 34, 0, 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AppText(
                              title: r"$1200".tr,
                              color: AppColors.WhiteColor,
                              fontWeight: FontWeight.w600,
                              size: 32,
                            ),
                            SizedBox(height: 2),
                            AppText(
                              title: "Currentbalance".tr,
                              color: AppColors.WhiteColor,
                              fontWeight: FontWeight.w500,
                              size: 14,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppText(
                          title: "Transactionhistory".tr,
                          color: AppColors.itemNameClor,
                          fontWeight: FontWeight.w600,
                          size: 20,
                        ),
                        AppText(
                          title: "Viewall".tr,
                          color: AppColors.commonColor,
                          fontWeight: FontWeight.w500,
                          size: 12,
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            gradient: AppColors.commonGradient,
                            borderRadius: BorderRadius.circular(8),
                            boxShadow: [
                              BoxShadow(
                                  color: AppColors.blackColor.withOpacity(0.02),
                                  blurRadius: 2,
                                  offset: Offset(0, 4)),
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 17.5, vertical: 6.5),
                            child: AppText(
                              title: "Settled".tr,
                              color: AppColors.WhiteColor,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Container(
                          decoration: BoxDecoration(
                              color: AppColors.transperentColor,
                              borderRadius: BorderRadius.circular(8),
                              boxShadow: [
                                BoxShadow(
                                    color:
                                        AppColors.blackColor.withOpacity(0.02),
                                    blurRadius: 2,
                                    offset: Offset(0, 4)),
                              ],
                              border: Border.all(color: AppColors.grey2)),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 17.5, vertical: 6.5),
                            child: AppText(
                              title: "Pending".tr,
                              color: AppColors.grey2,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    InvoiceNo(),
                    SizedBox(height: 20),
                    InvoiceNo(),
                    SizedBox(height: 20),
                    InvoiceNo(),
                    SizedBox(height: 20),
                    InvoiceNo(),
                    SizedBox(height: 48),
                    AppButton(
                      buttonName: "Needhelp".tr,
                      borderColor: AppColors.commonColor,
                      buttonColor: AppColors.transperentColor,
                      isShowGradient: false,
                      isShowShadow: false,
                      borderWidth: 1.1,
                      textColor: AppColors.commonColor,
                      onTap: () {},
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

Widget InvoiceNo() {
  return DottedBorder(
    color: Color(0xffD9D9D9),
    radius: Radius.circular(12),
    borderType: BorderType.RRect,
    strokeCap: StrokeCap.round,
    dashPattern: [6, 6],
    child: ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.WhiteColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppText(
                    title: "Invoiceno".tr,
                    fontWeight: FontWeight.w600,
                    size: 16,
                  ),
                  SizedBox(height: 6),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Delivery".tr,
                          style: TextStyle(
                              color: AppColors.grey3,
                              fontWeight: FontWeight.w500),
                        ),
                        TextSpan(
                          text: "northway".tr,
                          style: TextStyle(color: AppColors.grey2, height: 1.4),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 6),
                  AppText(
                    title: "Date1222023".tr,
                    fontWeight: FontWeight.w400,
                    size: 12,
                    color: AppColors.grey1,
                  ),
                ],
              ),
              Column(
                children: [
                  AppText(
                    title: r"$2399".tr,
                    fontWeight: FontWeight.w600,
                    size: 16,
                    gradient: AppColors.commonGradient,
                  ),
                  SizedBox(height: 11),
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xff5DC161),
                      borderRadius: BorderRadius.circular(36),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Icon(
                        Icons.done,
                        size: 20,
                        color: AppColors.WhiteColor,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
