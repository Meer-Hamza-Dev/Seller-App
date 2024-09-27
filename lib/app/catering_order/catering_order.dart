// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:seller_app/app/home/homePage.dart';
import 'package:seller_app/app/setting/setting.dart';
import 'package:seller_app/routes/app_pages.dart';
import 'package:seller_app/utils/app_bars/main_appbar.dart';
import 'package:seller_app/utils/app_colors/app_color.dart';
import 'package:seller_app/utils/app_constants/const_images.dart';
import 'package:seller_app/utils/app_text/app_text.dart';

class Catering_Orders extends StatelessWidget {
  const Catering_Orders({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        surfaceTintColor: AppColors.transperentColor,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: MainAppBar(
          title: "Orders".tr,
          size: 20,
          color: AppColors.itemNameClor,
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
              padding: const EdgeInsets.fromLTRB(16, 20, 16, 6),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ManrajSweets(
                    imageprefix: ImageConst.zaikaIndia,
                    imagesuffix: ImageConst.gulabJamun,
                  ),
                  SizedBox(height: 20),
                  AppText(
                    title: "orderrequests".tr,
                    fontWeight: FontWeight.w500,
                    color: AppColors.grey3,
                  ),
                  SizedBox(height: 20),
                  NeedCateringService(),
                  SizedBox(height: 20),
                  NeedCateringService(),
                  SizedBox(height: 20),
                  NeedCateringService(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Container NeedCateringService() {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.WhiteColor,
        boxShadow: [
          BoxShadow(
            color: AppColors.blackColor.withOpacity(0.02),
            blurRadius: 2,
            offset: Offset(0, 4),
          ),
        ],
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppText(
                      title: "needcateringservice".tr,
                      size: 16,
                      fontWeight: FontWeight.w500,
                      color: AppColors.grey3,
                    ),
                    SizedBox(height: 14),
                    AppText(
                      title: "eventdate12Mar".tr,
                      size: 12,
                      fontWeight: FontWeight.w500,
                      color: AppColors.grey3,
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: () {
                    Get.toNamed(Routes.messageRoute);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: AppColors.WhiteColor,
                      border: Border.all(color: AppColors.grey3),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(16, 6, 17, 6),
                      child: AppText(
                        title: "chat".tr,
                        fontWeight: FontWeight.w500,
                        size: 12,
                        color: AppColors.grey3,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            AppText(
              title: "posted2days".tr,
              size: 10,
              color: AppColors.grey1,
            ),
          ],
        ),
      ),
    );
  }
}
