// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:seller_app/routes/app_pages.dart';
import 'package:seller_app/utils/app_buttons/app_buttons.dart';
import 'package:seller_app/utils/app_colors/app_color.dart';
import 'package:seller_app/utils/app_constants/const_images.dart';
import 'package:seller_app/utils/app_text/app_text.dart';

class OTP_Verification extends StatelessWidget {
  const OTP_Verification({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.WhiteColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                SvgPicture.asset(
                  ImageConst.bgImage,
                  height: Get.height,
                ),
                SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(16, 135, 16, 16),
                    child: Column(
                      children: [
                        AppText(
                          title: "Verification".tr,
                          fontWeight: FontWeight.w600,
                          size: 24,
                          gradient: AppColors.commonGradient,
                        ),
                        SizedBox(height: 9),
                        AppText(
                          title: "entrcode".tr,
                          textAlign: TextAlign.center,
                          color: Color(0xff747474),
                          height: 1.5,
                        ),
                        SizedBox(height: 96),
                        AppText(
                          title: "Timer0500".tr,
                          size: 16,
                          fontWeight: FontWeight.w600,
                          color: AppColors.grey3,
                        ),
                        SizedBox(height: 24),
                        PinCodeTextField(
                          appContext: context,
                          length: 4,
                          mainAxisAlignment: MainAxisAlignment.center,
                          autoDisposeControllers: false,
                          animationType: AnimationType.fade,
                          textStyle: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 22,
                            color: AppColors.commonColor,
                          ),
                          pinTheme: PinTheme(
                              fieldHeight: 48,
                              fieldWidth: 48,
                              shape: PinCodeFieldShape.box,
                              borderWidth: 1,
                              activeColor: Color(0xffC4C4C4),
                              inactiveColor: Color(0xffC4C4C4),
                              inactiveFillColor: Colors.transparent,
                              activeFillColor: Colors.transparent,
                              selectedFillColor: Colors.transparent,
                              selectedColor: AppColors.commonColor,
                              disabledColor: Color(0xffC4C4C4),
                              borderRadius: BorderRadius.circular(4),
                              fieldOuterPadding: EdgeInsets.only(right: 10)),
                          cursorColor: AppColors.commonColor,
                          animationDuration: const Duration(milliseconds: 300),
                          enableActiveFill: true,
                          keyboardType: TextInputType.number,
                          onCompleted: (String verificationCode) {},
                          onChanged: (value) {},
                        ),
                        SizedBox(height: 32),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            AppText(
                              title: "didntreceivecode".tr,
                              color: Color(0xff747474),
                              fontWeight: FontWeight.w300,
                            ),
                            TextButton(
                              onPressed: () {},
                              child: AppText(
                                title: "Resend".tr,
                                gradient: AppColors.commonGradient,
                                fontWeight: FontWeight.w600,
                                size: 14,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 160),
                        AppButton(
                          buttonName: "Submit".tr,
                          onTap: () {
                            Get.toNamed(Routes.addNewStoreRoute);
                          },
                        ),
                      ],
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
