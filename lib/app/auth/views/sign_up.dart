// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:seller_app/routes/app_pages.dart';
import 'package:seller_app/utils/app_buttons/app_buttons.dart';
import 'package:seller_app/utils/app_colors/app_color.dart';
import 'package:seller_app/utils/app_constants/const_images.dart';
import 'package:seller_app/utils/app_text/app_text.dart';
import 'package:seller_app/utils/app_text_field.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

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
                    padding: const EdgeInsets.fromLTRB(16, 40, 16, 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppText(
                          title: "Createaccount".tr,
                          fontWeight: FontWeight.w600,
                          size: 24,
                        ),
                        SizedBox(height: 8),
                        AppText(
                          title: "signuptobegin".tr,
                          color: AppColors.grey1,
                        ),
                        SizedBox(height: 48),
                        AppText(
                          title: "Fullname".tr,
                          fontWeight: FontWeight.w500,
                        ),
                        SizedBox(height: 6),
                        appField(
                          context: context,
                          hint: "Yournamehere".tr,
                          hintColor: AppColors.grey1,
                          height: 14,
                        ),
                        SizedBox(height: 16),
                        AppText(
                          title: "Phoneno".tr,
                          fontWeight: FontWeight.w500,
                        ),
                        SizedBox(height: 6),
                        appField(
                          context: context,
                          hint: "Number".tr,
                          hintColor: AppColors.grey1,
                          height: 14,
                        ),
                        SizedBox(height: 16),
                        AppText(
                          title: "Email".tr,
                          fontWeight: FontWeight.w500,
                        ),
                        SizedBox(height: 6),
                        appField(
                          context: context,
                          hint: "gmailcom".tr,
                          hintColor: AppColors.grey1,
                        ),
                        SizedBox(height: 16),
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  AppText(
                                    title: "Occupation".tr,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  SizedBox(height: 8),
                                  appField(
                                    context: context,
                                    hint: "Betsskills".tr,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 18),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  AppText(
                                    title: "Province".tr,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  SizedBox(height: 8),
                                  DropdownButtonHideUnderline(
                                    child: Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            color: AppColors.borderColor),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: DropdownButton(
                                          hint: Padding(
                                            padding: const EdgeInsets.all(15),
                                            child: AppText(
                                              title: "Select".tr,
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
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 16),
                        AppText(
                          title: "password".tr,
                          fontWeight: FontWeight.w500,
                        ),
                        SizedBox(height: 6),
                        appField(
                          context: context,
                          hint: "Typepassword".tr,
                          isSuffix: true,
                          suffixWidget: Icon(
                            Icons.visibility_off_outlined,
                            size: 20,
                          ),
                        ),
                        SizedBox(height: 16),
                        Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: AppColors.blackColor,
                                borderRadius: BorderRadius.circular(3),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(2),
                                child: Icon(
                                  Icons.done,
                                  color: AppColors.WhiteColor,
                                  size: 12,
                                ),
                              ),
                            ),
                            SizedBox(width: 10),
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Yes, I agree to the',
                                    style: TextStyle(
                                      fontSize: 13,
                                      color: Color(0xff3E444D),
                                    ),
                                  ),
                                  TextSpan(
                                    text: ' Terms & conditions ',
                                    style: TextStyle(
                                      fontSize: 13,
                                      color: Color(0xff2F80ED),
                                    ),
                                  ),
                                  TextSpan(
                                    text: ' and  ',
                                    style: TextStyle(
                                      fontSize: 13,
                                      color: Color(0xff3E444D),
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'Privacy Policy',
                                    style: TextStyle(
                                      fontSize: 13,
                                      color: Color(0xff2F80ED),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 48),
                        AppButton(
                          buttonName: "Signup".tr,
                          onTap: () {
                            Get.toNamed(Routes.otpVerificationRoute);
                          },
                        ),
                        SizedBox(height: 65),
                        GestureDetector(
                          onTap: () {
                            Get.toNamed(Routes.loginRoute);
                          },
                          child: Center(
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "Alreadyacc".tr,
                                    style: TextStyle(
                                      color: AppColors.grey1,
                                      letterSpacing: .2,
                                    ),
                                  ),
                                  TextSpan(
                                    text: "Signin".tr,
                                    style: TextStyle(
                                      color: AppColors.commonColor,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
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
