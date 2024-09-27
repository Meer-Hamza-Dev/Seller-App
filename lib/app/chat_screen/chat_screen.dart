// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:seller_app/app/setting/setting.dart';
import 'package:seller_app/utils/app_bars/main_appbar.dart';
import 'package:seller_app/utils/app_colors/app_color.dart';
import 'package:seller_app/utils/app_constants/const_images.dart';
import 'package:seller_app/utils/app_constants/text_strings.dart';
import 'package:seller_app/utils/app_text/app_text.dart';
import 'package:seller_app/utils/app_text_field.dart';

class Chat extends StatelessWidget {
  const Chat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: MainAppBar(
          title: ConstantStrings.adam.tr,
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
              padding: const EdgeInsets.only(top: 22),
              child: Column(
                children: [
                  AppText(
                    title: ConstantStrings.Today.tr,
                    color: Color(0xffBDBDBD),
                  ),
                  Spacer(),
                  Container(
                    decoration: BoxDecoration(
                      color: AppColors.WhiteColor,
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.blackColor.withOpacity(0.09),
                          blurRadius: 2,
                          offset: Offset(0, -2),
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(16, 10, 16, 44),
                      child: Row(
                        children: [
                          Expanded(
                            child: appField(
                              context: context,
                              fillColor: AppColors.WhiteColor,
                              borderRadius: BorderRadius.circular(31),
                              border: Color(0xffE0E0E0),
                              isBorderLine: true,
                            ),
                          ),
                          SizedBox(width: 12),
                          SvgPicture.asset(ImageConst.send),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
