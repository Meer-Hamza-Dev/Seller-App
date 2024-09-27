// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:seller_app/app/coupons/coupons.dart';
import 'package:seller_app/app/setting/setting.dart';
import 'package:seller_app/utils/app_bars/main_appbar.dart';
import 'package:seller_app/utils/app_buttons/app_buttons.dart';
import 'package:seller_app/utils/app_colors/app_color.dart';
import 'package:seller_app/utils/app_constants/const_images.dart';
import 'package:seller_app/utils/app_text/app_text.dart';

class Received_Request extends StatelessWidget {
  const Received_Request({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        surfaceTintColor: AppColors.transperentColor,
        automaticallyImplyLeading: false,
        title: MainAppBar(
          title: "receiveRequest".tr,
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
                padding: const EdgeInsets.fromLTRB(16, 20, 16, 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppText(
                      title: "couponname".tr,
                      fontWeight: FontWeight.w600,
                      size: 20,
                      color: AppColors.itemNameClor,
                    ),
                    SizedBox(height: 20),
                    ABC_Store(),
                    SizedBox(height: 20),
                    AppText(
                      title: "receiveDescrip".tr,
                      color: AppColors.grey1,
                    ),
                    SizedBox(height: 36),
                    AppButton(
                      buttonName: "askreconsideration".tr,
                      isShowGradient: false,
                      textColor: AppColors.commonColor,
                      borderColor: AppColors.commonColor,
                      isShowShadow: false,
                      buttonColor: AppColors.transperentColor,
                      onTap: () {},
                    ),
                    SizedBox(height: 115),
                    AppButton(
                      buttonName: "acceptcoupons".tr,
                      onTap: () {},
                    ),
                    SizedBox(height: 20),
                    Center(
                      child: TextButton(
                        onPressed: () {},
                        child: AppText(
                          title: "deny".tr,
                          fontWeight: FontWeight.w600,
                          size: 16,
                          gradient: AppColors.commonGradient,
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
