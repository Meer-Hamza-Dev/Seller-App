// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:seller_app/app/home/homePage.dart';
import 'package:seller_app/app/setting/setting.dart';
import 'package:seller_app/utils/app_bars/main_appbar.dart';
import 'package:seller_app/utils/app_colors/app_color.dart';
import 'package:seller_app/utils/app_constants/const_images.dart';
import 'package:seller_app/utils/app_text/app_text.dart';

class Orders extends StatelessWidget {
  const Orders({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        surfaceTintColor: AppColors.transperentColor,

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
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(16, 20, 16, 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ManrajSweets(
                      imageprefix: ImageConst.zaikaIndia,
                      imagesuffix: ImageConst.pakorey,
                    ),
                    SizedBox(height: 20),
                    AppText(
                      title: "orderrequests".tr,
                      fontWeight: FontWeight.w500,
                      color: AppColors.grey3,
                    ),
                    SizedBox(height: 20),
                    JackSmith(),
                    SizedBox(height: 20),
                    JackSmith(),
                    SizedBox(height: 20),
                    JackSmith(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container JackSmith() {
    return Container(
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
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                AppText(
                  title: "JackSmith".tr,
                  fontWeight: FontWeight.w600,
                  size: 16,
                  color: AppColors.grey3,
                ),
                AppText(
                  title: "(Basic Plan)".tr,
                  fontWeight: FontWeight.w500,
                  size: 12,
                  color: AppColors.grey3,
                ),
              ],
            ),
            SizedBox(height: 14),
            AppText(
              title: "Enddate12Mar".tr,
              color: AppColors.grey3,
              size: 12,
              fontWeight: FontWeight.w500,
            ),
            SizedBox(height: 10),
            AppText(
              title: r"$220paid".tr,
              size: 10,
              color: Color(0xff45A843),
            ),
          ],
        ),
      ),
    );
  }
}