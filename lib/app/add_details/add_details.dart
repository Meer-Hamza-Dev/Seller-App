// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:seller_app/app/payments/payments.dart';
import 'package:seller_app/app/setting/setting.dart';
import 'package:seller_app/utils/app_bars/main_appbar.dart';
import 'package:seller_app/utils/app_buttons/app_buttons.dart';
import 'package:seller_app/utils/app_colors/app_color.dart';
import 'package:seller_app/utils/app_constants/const_images.dart';
import 'package:seller_app/utils/app_text/app_text.dart';

class AddDetails extends StatelessWidget {
  const AddDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        surfaceTintColor: AppColors.transperentColor,
        automaticallyImplyLeading: false,
        title: MainAppBar(
          title: "myadd1".tr,
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
                padding: const EdgeInsets.fromLTRB(16, 24, 16, 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      ImageConst.platter,
                      width: Get.width,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(height: 20),
                    Container(
                      decoration: BoxDecoration(
                        color: AppColors.WhiteColor,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(12, 10, 12, 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AppText(
                              title: "myadd1".tr,
                              fontWeight: FontWeight.w600,
                              size: 16,
                              color: AppColors.grey3,
                            ),
                            SizedBox(height: 16),
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
                                SizedBox(width: 24),
                                Icon(Icons.analytics_outlined,
                                    size: 15, color: AppColors.greyMain),
                                SizedBox(width: 8),
                                AppText(
                                  title: '20k',
                                  size: 12,
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.grey3,
                                ),
                                SizedBox(width: 16),
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
                    SizedBox(height: 20),
                    Stack(
                      children: [
                        Image.asset(
                          ImageConst.graph,
                          width: Get.width,
                          fit: BoxFit.cover,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AppText(
                              title: "analytics".tr,
                              color: AppColors.itemNameClor,
                              fontWeight: FontWeight.w600,
                              size: 20,
                            ),
                            SizedBox(height: 18),
                            Row(
                              children: [
                                AppButton(
                                  buttonName: '7 days',
                                  buttonHeight: 34,
                                  buttonWidth: 76,
                                  isShowShadow: false,
                                  onTap: () {},
                                ),
                                SizedBox(width: 10),
                                AppButton(
                                  buttonName: '30 days',
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
                                  buttonName: '90 days',
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
                          ],
                        ).marginOnly(top: 15, left: 20),
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
                  
                    SizedBox(height: 20),
                    AppText(
                      title: "invoicedetails".tr,
                      color: AppColors.itemNameClor,
                      fontWeight: FontWeight.w600,
                      size: 20,
                    ),
                    SizedBox(height: 16),
                    InvoiceNo(),
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
