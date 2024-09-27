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

class Add_New_Store extends StatelessWidget {
  const Add_New_Store({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: MainAppBar(
          title: "AddStore".tr,
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
          SingleChildScrollView(
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(16, 40, 16, 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppText(
                      title: "Storename".tr,
                      fontWeight: FontWeight.w500,
                    ),
                    SizedBox(height: 6),
                    appField(
                      context: context,
                      hint: "Typehere".tr,
                    ),
                    SizedBox(height: 16),
                    AppText(
                      title: "StoreDescription".tr,
                      fontWeight: FontWeight.w500,
                    ),
                    SizedBox(height: 6),
                    appField(
                      context: context,
                      hint: "Typehere".tr,
                    ),
                    SizedBox(height: 16),
                    AppText(
                      title: "Contact".tr,
                      fontWeight: FontWeight.w500,
                    ),
                    SizedBox(height: 6),
                    appField(
                      context: context,
                      hint: "Typehere".tr,
                    ),
                    SizedBox(height: 16),
                    AppText(
                      title: "Storeaddress".tr,
                      fontWeight: FontWeight.w500,
                    ),
                    SizedBox(height: 6),
                    appField(
                      context: context,
                      hint: "Subcategoryname".tr,
                    ),
                    SizedBox(height: 16),
                    AppText(
                      title: "Storelogo".tr,
                      fontWeight: FontWeight.w500,
                    ),
                    SizedBox(height: 6),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: AppColors.transperentColor,
                        border: Border.all(color: AppColors.borderColor),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 44.0),
                        child:
                            Icon(Icons.add, size: 30, color: AppColors.grey3),
                      ),
                    ),
                    SizedBox(height: 48),
                    AppButton(
                      buttonName: "next".tr,
                      onTap: () {
                        Get.toNamed(Routes.legalDocumentRoute);
                      },
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
