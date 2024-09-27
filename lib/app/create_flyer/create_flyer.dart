// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:seller_app/routes/app_pages.dart';
import 'package:seller_app/utils/app_bars/main_appbar.dart';
import 'package:seller_app/utils/app_buttons/app_buttons.dart';
import 'package:seller_app/utils/app_colors/app_color.dart';
import 'package:seller_app/utils/app_constants/const_images.dart';
import 'package:seller_app/utils/app_text/app_text.dart';
import 'package:seller_app/utils/app_text_field.dart';

class Create_Flyer extends StatelessWidget {
  const Create_Flyer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        surfaceTintColor: AppColors.transperentColor,

        automaticallyImplyLeading: false,
        title: MainAppBar(
          title: "Createflyer".tr,
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
          SvgPicture.asset(
            ImageConst.bgImage,
            height: Get.height,
            width: Get.width,
            fit: BoxFit.cover,
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16, 20, 16, 20),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppText(
                      title: "Title".tr,
                      fontWeight: FontWeight.w500,
                    ),
                    SizedBox(height: 6),
                    appField(
                      context: context,
                      hint: "Typehere".tr,
                    ),
                    SizedBox(height: 16),
                    AppText(
                      title: "StoreName".tr,
                      fontWeight: FontWeight.w500,
                    ),
                    SizedBox(height: 6),
                    appField(
                      context: context,
                      hint: "Typehere".tr,
                    ),
                    SizedBox(height: 16),
                    AppText(
                      title: "Validity".tr,
                      fontWeight: FontWeight.w500,
                    ),
                    SizedBox(height: 6),
                    appField(
                      context: context,
                      hint: "Validity00".tr,
                      isSuffix: true,
                      suffixWidget: Icon(
                        Icons.calendar_month_outlined,
                        size: 22,
                        color: AppColors.commonColor,
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: AppColors.borderColor),
                        color: AppColors.transperentColor,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 49),
                        child: Column(
                          children: [
                            SvgPicture.asset(
                              ImageConst.img,
                              height: 30,
                              width: 30,
                              fit: BoxFit.cover,
                              color: AppColors.blackColor.withOpacity(0.3),
                            ),
                            SizedBox(height: 19),
                            AppText(
                              title: "Updateflyerimage".tr,
                              fontWeight: FontWeight.w700,
                              size: 16,
                              color: AppColors.grey3,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 114),
                    AppButton(
                      buttonName: "Createflyer".tr,
                      onTap: () {
                        Get.toNamed(Routes.createFlyerRoute);
                      },
                    )
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
