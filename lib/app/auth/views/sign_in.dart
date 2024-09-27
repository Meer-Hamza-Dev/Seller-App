// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:seller_app/routes/app_pages.dart';
import 'package:seller_app/utils/app_buttons/app_buttons.dart';
import 'package:seller_app/utils/app_colors/app_color.dart';
import 'package:seller_app/utils/app_constants/const_images.dart';
import 'package:seller_app/utils/app_text/app_text.dart';
import 'package:seller_app/utils/app_text_field.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.WhiteColor,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            SvgPicture.asset(
              ImageConst.bgImage,
              height: Get.height,
              width: Get.width,
              fit: BoxFit.cover,
            ),
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      ImageConst.fruits,
                      height: 150,
                      width: 300,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(height: 5),
                    AppText(
                      title: "Welcomeback".tr,
                      fontWeight: FontWeight.w600,
                      size: 24,
                      color: Color(0xff3B3B3B),
                    ),
                    SizedBox(height: 8),
                    AppText(
                      title: "signintocontinue".tr,
                      color: AppColors.grey1,
                    ),
                    SizedBox(height: 48),
                    AppText(
                      title: "emailmblNo".tr,
                      fontWeight: FontWeight.w500,
                    ),
                    SizedBox(height: 6),
                    appField(
                      context: context,
                      hint: "Typehere".tr,
                      height: 14,
                    ),
                    SizedBox(height: 18),
                    AppText(
                      title: "password".tr,
                      fontWeight: FontWeight.w500,
                    ),
                    SizedBox(height: 6),
                    appField(
                      context: context,
                      hint: "Typepassword".tr,
                      height: 14,
                      isSuffix: true,
                      suffixWidget: Icon(
                        Icons.visibility_off_outlined,
                        size: 20,
                        color: AppColors.hintColor,
                      ),
                    ),
                    SizedBox(height: 18),
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {},
                        child: AppText(
                          title: "Forgetpassword".tr,
                          fontWeight: FontWeight.w500,
                          color: AppColors.commonColor,
                        ),
                      ),
                    ),
                    SizedBox(height: 48),
                    AppButton(
                      buttonName: "Login".tr,
                      onTap: () {},
                    ),
                    SizedBox(height: 36),
                    Center(
                      child: AppText(
                        title: "signinusing".tr,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff3B3B3B),
                      ),
                    ),
                    SizedBox(height: 24),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 14, 0, 14),
                        child: SvgPicture.asset(
                          ImageConst.google,
                        ),
                      ),
                    ),
                    SizedBox(height: 60),
                    GestureDetector(
                      onTap: () {
                        Get.toNamed(Routes.signUpRoute);
                      },
                      child: Center(
                        child: RichText(
                          text: TextSpan(
                            text: "Dontacc".tr,
                            style: TextStyle(
                              color: AppColors.grey1,
                              letterSpacing: .2,
                            ),
                            children: [
                              TextSpan(text: ' '),
                              TextSpan(
                                text: "Signup".tr,
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
      ),
    );
  }
}
