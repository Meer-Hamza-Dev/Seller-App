// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

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

class ReferEarn extends StatelessWidget {
  const ReferEarn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        surfaceTintColor: AppColors.transperentColor,
        automaticallyImplyLeading: false,
        title: MainAppBar(
          title: "referEarn".tr,
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
                padding: const EdgeInsets.fromLTRB(16, 32, 16, 16),
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: AppColors.WhiteColor,
                          borderRadius: BorderRadius.circular(8)),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(16, 38, 16, 36),
                        child: Column(
                          children: [
                            Container(
                              width: 225,
                              child: AppText(
                                title: "referFriends".tr,
                                gradient: AppColors.commonGradient,
                                textAlign: TextAlign.center,
                                size: 20,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(height: 22),
                            Image.asset(ImageConst.Coins),
                            SizedBox(height: 9),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                AppText(
                                  title: "referID".tr,
                                  fontWeight: FontWeight.w500,
                                  textAlign: TextAlign.left,
                                ),
                              ],
                            ),
                            SizedBox(height: 6),
                            Container(
                              decoration: BoxDecoration(
                                color: AppColors.transperentColor,
                                border:
                                    Border.all(color: AppColors.borderColor),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 14, horizontal: 16),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    AppText(
                                      title: 'LSUbaske188343666655',
                                      color: AppColors.itemNameClor,
                                    ),
                                    SvgPicture.asset(ImageConst.copy),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 48),
                    AppButton(
                      buttonName: "shareFriends".tr,
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
