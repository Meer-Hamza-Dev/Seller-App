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
import 'package:seller_app/utils/app_text_field.dart';

class CouponRequest extends StatelessWidget {
  const CouponRequest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        surfaceTintColor: AppColors.transperentColor,
        automaticallyImplyLeading: false,
        title: MainAppBar(
          title: "sendcoupons".tr,
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
                      fontWeight: FontWeight.w500,
                    ),
                    SizedBox(height: 6),
                    appField(context: context, hint: "Typehere".tr),
                    SizedBox(height: 16),
                    AppText(
                      title: "startdate".tr,
                      fontWeight: FontWeight.w500,
                    ),
                    SizedBox(height: 6),
                    appField(context: context, hint: "Typehere".tr),
                    SizedBox(height: 16),
                    AppText(
                      title: "endDate".tr,
                      fontWeight: FontWeight.w500,
                    ),
                    SizedBox(height: 6),
                    appField(context: context, hint: "Typehere".tr),
                    SizedBox(height: 16),
                    AppText(
                      title: "couponquantity".tr,
                      fontWeight: FontWeight.w500,
                    ),
                    SizedBox(height: 6),
                    appField(context: context, hint: "Typehere".tr),
                    SizedBox(height: 16),
                    AppText(
                      title: "couponshare".tr,
                      fontWeight: FontWeight.w500,
                    ),
                    SizedBox(height: 6),
                    appField(context: context, hint: "Typehere".tr),
                    SizedBox(height: 16),
                    AppText(
                      title: "selectstore".tr,
                      fontWeight: FontWeight.w500,
                    ),
                    SizedBox(height: 6),
                    DropdownButtonHideUnderline(
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: AppColors.borderColor),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: DropdownButton(
                            hint: Padding(
                              padding: const EdgeInsets.all(15),
                              child: AppText(
                                title: "selectstore".tr,
                                color: AppColors.grey1,
                                size: 13,
                              ),
                            ),
                            icon: Icon(
                              Icons.keyboard_arrow_down_rounded,
                              color: AppColors.blackColor,
                            ),
                            isExpanded: true,
                            items: [],
                            onChanged: (String) {}),
                      ),
                    ),
                    SizedBox(height: 72),
                    AppButton(
                      buttonName: "sendrequest".tr,
                      onTap: () {
                        // Get.toNamed(Routes.receivedrequestRoute);
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
