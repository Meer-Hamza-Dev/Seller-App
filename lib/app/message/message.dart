// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:seller_app/app/setting/setting.dart';
import 'package:seller_app/routes/app_pages.dart';
import 'package:seller_app/utils/app_bars/main_appbar.dart';
import 'package:seller_app/utils/app_colors/app_color.dart';
import 'package:seller_app/utils/app_constants/const_images.dart';
import 'package:seller_app/utils/app_text/app_text.dart';
import 'package:seller_app/utils/app_text_field.dart';

class Messages extends StatelessWidget {
  const Messages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: MainAppBar(
          title: "messages".tr,
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
              padding: const EdgeInsets.fromLTRB(16, 20, 16, 16),
              child: Column(
                children: [
                  appField(
                    context: context,
                    isPrefix: true,
                    prefixWidget: Icon(
                      Icons.search,
                      size: 16,
                      color: Color(0xffBDBDBD),
                    ),
                    hint: "searchGroupschats".tr,
                    border: Color(0xffE0E0E0),
                    isBorderLine: true,
                  ),
                  SizedBox(height: 16),
                  GestureDetector(
                    onTap: () {
                      Get.toNamed(Routes.chatScreenRoute);
                    },
                    child: AdamMessage(),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.toNamed(Routes.chatScreenRoute);
                    },
                    child: AdamMessage(),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.toNamed(Routes.chatScreenRoute);
                    },
                    child: AdamMessage(),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container AdamMessage() {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.WhiteColor,
        border: Border(
          bottom: BorderSide(
            color: Color(0xffE0E0E0),
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(52),
              child: Image.asset(
                ImageConst.john,
                height: 52,
                width: 52,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppText(
                    title: "adam".tr,
                    fontWeight: FontWeight.w500,
                    size: 16,
                    color: AppColors.grey3,
                  ),
                  SizedBox(height: 5),
                  AppText(
                    title: "Adam: Hello!".tr,
                    color: Color(0xff828282),
                  ),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                AppText(
                  title: "5:00 PM",
                  color: AppColors.commonColor,
                ),
                SizedBox(height: 7),
                Container(
                  height: 18,
                  width: 18,
                  decoration: BoxDecoration(
                    gradient: AppColors.commonGradient,
                    borderRadius: BorderRadius.circular(18),
                  ),
                  child: Center(
                    child: AppText(
                      title: '12',
                      size: 10,
                      color: AppColors.WhiteColor,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
