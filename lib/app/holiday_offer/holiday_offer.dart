// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:seller_app/utils/app_bars/main_appbar.dart';
import 'package:seller_app/utils/app_buttons/app_buttons.dart';
import 'package:seller_app/utils/app_colors/app_color.dart';
import 'package:seller_app/utils/app_constants/const_images.dart';
import 'package:seller_app/utils/app_text/app_text.dart';

class Holiday_Offer extends StatelessWidget {
  const Holiday_Offer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: MainAppBar(
          title: "holidayOffer".tr,
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
              padding: const EdgeInsets.only(top: 20, bottom: 20),
              child: Column(
                children: [
                  Image.asset(
                    ImageConst.offer15,
                    width: Get.width,
                    fit: BoxFit.cover,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 20, 16, 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppText(
                          title: "OfferName".tr,
                          size: 20,
                          fontWeight: FontWeight.w600,
                          color: AppColors.itemNameClor,
                        ),
                        SizedBox(height: 3),
                        AppText(
                          title: "Get50above50".tr,
                          size: 12,
                          color: AppColors.grey2,
                        ),
                        SizedBox(height: 12),
                        AppText(
                          title: "namedesc".tr,
                          size: 12,
                          color: AppColors.grey2,
                        ),
                        SizedBox(height: 10),
                        DottedLine(
                          lineLength: double.infinity,
                          dashColor: Color(0xffBDBDBD),
                        ),
                        SizedBox(height: 20),
                        AppText(
                          title: "Offeravaibility".tr,
                          size: 20,
                          fontWeight: FontWeight.w600,
                          color: AppColors.itemNameClor,
                        ),
                        SizedBox(height: 3),
                        AppText(
                          title: "avaibilitydesc".tr,
                          size: 12,
                          color: AppColors.grey2,
                        ),
                        SizedBox(height: 10),
                        DottedLine(
                          direction: Axis.horizontal,
                          lineLength: double.infinity,
                          dashColor: Color(0xffBDBDBD),
                        ),
                        SizedBox(height: 20),
                        AppText(
                          title: "Offerperiod".tr,
                          size: 20,
                          fontWeight: FontWeight.w600,
                          color: AppColors.itemNameClor,
                        ),
                        SizedBox(height: 3),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "from".tr,
                                style: TextStyle(
                                  fontSize: 12,
                                  color: AppColors.grey2,
                                ),
                              ),
                              TextSpan(
                                text: "date".tr,
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.blackColor,
                                ),
                              ),
                              TextSpan(
                                text: "to".tr,
                                style: TextStyle(
                                  fontSize: 12,
                                  color: AppColors.grey2,
                                ),
                              ),
                              TextSpan(
                                text: "date".tr,
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.blackColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 10),
                        DottedLine(
                          direction: Axis.horizontal,
                          lineLength: double.infinity,
                          dashColor: Color(0xffBDBDBD),
                        ),
                        SizedBox(height: 250),
                        AppButton(
                          buttonName: "Editoffer".tr,
                          borderColor: AppColors.commonColor,
                          buttonColor: AppColors.transperentColor,
                          isShowGradient: false,
                          isShowShadow: false,
                          textColor: AppColors.commonColor,
                          onTap: () {},
                        ),
                      ],
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
