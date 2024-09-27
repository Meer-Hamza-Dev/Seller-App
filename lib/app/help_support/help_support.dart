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

class Help_Support extends StatelessWidget {
  const Help_Support({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        surfaceTintColor: AppColors.transperentColor,
        automaticallyImplyLeading: false,
        title: MainAppBar(
          title: "HelpSupport".tr,
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
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
                        padding: const EdgeInsets.symmetric(
                            vertical: 16, horizontal: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AppText(
                              title: "customersupport".tr,
                              fontWeight: FontWeight.w500,
                            ),
                            SizedBox(height: 16),
                            Row(
                              children: [
                                SvgPicture.asset(ImageConst.sms),
                                SizedBox(width: 10),
                                AppText(
                                  title: "helpgmail".tr,
                                  size: 12,
                                  gradient: AppColors.commonGradient,
                                ),
                              ],
                            ),
                            SizedBox(height: 16),
                            AppText(
                              title: "Privacypolicy".tr,
                              decoration: TextDecoration.underline,
                              size: 12,
                              color: Color(0xff2F80ED),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    AppText(
                      title: "faq".tr,
                      fontWeight: FontWeight.w600,
                      size: 20,
                    ),
                    SizedBox(height: 20),
                    FAQ("howappwork".tr),
                    SizedBox(height: 16),
                    FAQ("howiplaceorder".tr),
                    SizedBox(height: 16),
                    FAQ("cancustomizeorder".tr),
                    SizedBox(height: 16),
                    FAQ("howIpay".tr),
                    SizedBox(height: 16),
                    FAQ("Whatdoissue".tr),
                    SizedBox(height: 16),
                    FAQ("howItrackorder".tr),
                    SizedBox(height: 48),
                    AppButton(
                      buttonName: "chatwithus".tr,
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

  Container FAQ(String text) {
    return Container(
      width: double.infinity,
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
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12.5),
        child: AppText(
          title: text,
          color: AppColors.grey3,
        ),
      ),
    );
  }
}
