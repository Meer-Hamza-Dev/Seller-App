// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_unnecessary_containers

import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:seller_app/app/setting/setting.dart';
import 'package:seller_app/utils/app_bars/main_appbar.dart';
import 'package:seller_app/utils/app_buttons/app_buttons.dart';
import 'package:seller_app/utils/app_colors/app_color.dart';
import 'package:seller_app/utils/app_constants/const_images.dart';
import 'package:seller_app/utils/app_text/app_text.dart';

class Notification extends StatelessWidget {
  const Notification({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        surfaceTintColor: AppColors.transperentColor,
        automaticallyImplyLeading: false,
        title: MainAppBar(
          title: "Notification".tr,
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
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16, 24, 16, 20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: AppColors.blackColor.withOpacity(.10),
                                  blurRadius: 6,
                                ),
                              ],
                            ),
                            child: AppButton(
                              buttonName: "All".tr,
                              buttonHeight: 32,
                              buttonWidth: 52,
                              isShowShadow: false,
                              fontWeight: FontWeight.w400,
                              textSize: 12,
                              onTap: () {},
                            ),
                          ),
                          SizedBox(width: 9),
                          Container(
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: AppColors.blackColor.withOpacity(.10),
                                  blurRadius: 6,
                                ),
                              ],
                            ),
                            child: AppButton(
                              buttonName: "offer".tr,
                              buttonHeight: 32,
                              textSize: 12,
                              isShowShadow: false,
                              textColor: AppColors.grey3,
                              fontWeight: FontWeight.w400,
                              buttonWidth: 58,
                              isShowGradient: false,
                              color: AppColors.WhiteColor,
                              onTap: () {},
                            ),
                          ),
                        ],
                      ),
                      AppText(
                        title: "markAllRead".tr,
                        size: 12,
                        color: AppColors.grey3,
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Restaurant(),
                  SizedBox(height: 5),
                  Restaurant(),
                  SizedBox(height: 5),
                  Restaurant(),
                  SizedBox(height: 5),
                  Restaurant(),
                  SizedBox(height: 5),
                  Restaurant(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container Restaurant() {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppText(
                  title: "restaurant".tr,
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
            SizedBox(height: 15),
            DottedLine(
              dashColor: AppColors.borderColor,
              dashGapLength: 8,
              dashLength: 7,
            ),
          ],
        ),
      ),
    );
  }
}
