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

class legalDocuments extends StatelessWidget {
  const legalDocuments({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: MainAppBar(
          title: 'Uploaddocuments'.tr,
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
      body: Stack(
        children: [
          SvgPicture.asset(
            ImageConst.bgImage,
            height: Get.height,
            width: Get.width,
            fit: BoxFit.cover,
          ),
          SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(16, 40, 16, 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppText(
                      title: 'Termsofservice'.tr,
                      fontWeight: FontWeight.w500,
                    ),
                    SizedBox(height: 6),
                    UploadAppField(context),
                    SizedBox(height: 16),
                    AppText(
                      title: 'Refundpolicy'.tr,
                      fontWeight: FontWeight.w500,
                    ),
                    SizedBox(height: 6),
                    UploadAppField(context),
                    SizedBox(height: 16),
                    AppText(
                      title: 'DisputeResolution'.tr,
                      fontWeight: FontWeight.w500,
                    ),
                    SizedBox(height: 6),
                    UploadAppField(context),
                    SizedBox(height: 16),
                    AppText(
                      title: 'BusinessRegistration'.tr,
                      fontWeight: FontWeight.w500,
                    ),
                    SizedBox(height: 6),
                    UploadAppField(context),
                    SizedBox(height: 48),
                    AppButton(
                      buttonName: 'Submit'.tr,
                      onTap: () {
                        Get.bottomSheet(
                          Container(
                            height: Get.height * .37,
                            decoration: BoxDecoration(
                              color: AppColors.WhiteColor,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(24),
                                topRight: Radius.circular(24),
                              ),
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(16, 10, 16, 39),
                              child: Column(
                                children: [
                                  Container(
                                    height: 4,
                                    width: 38,
                                    decoration: BoxDecoration(
                                      color: Color(0xff828282),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                  ),
                                  SizedBox(height: 48),
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Color(0xff5DC161),
                                        borderRadius:
                                            BorderRadius.circular(31)),
                                    child: Padding(
                                      padding: const EdgeInsets.all(10),
                                      child: Icon(
                                        Icons.done,
                                        size: 25,
                                        color: AppColors.WhiteColor,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 18),
                                  AppText(
                                      title: 'Storecreated'.tr,
                                      fontWeight: FontWeight.w600,
                                      size: 19,
                                      color: AppColors.grey3),
                                  SizedBox(height: 3),
                                  AppText(
                                    title: 'Mangepaymentstore'.tr,
                                    size: 12,
                                    color: Color(0xff828282),
                                    textAlign: TextAlign.center,
                                    height: 1.5,
                                  ),
                                  SizedBox(height: 48),
                                  AppButton(
                                    buttonName: 'Gotostore'.tr,
                                    onTap: () {
                                      Get.toNamed(Routes.myStoreRoute);
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
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

  Widget UploadAppField(BuildContext context) {
    return appField(
      context: context,
      hint: 'Upload'.tr,
      height: 14,
      isSuffix: true,
      suffixWidget: SizedBox(
        height: 18,
        width: 18,
        child: Image.asset(
          ImageConst.attachFile,
        ),
      ),
    );
  }
}
