// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:seller_app/app/setting/setting_controller.dart';
import 'package:seller_app/routes/app_pages.dart';
import 'package:seller_app/services/services.dart';
import 'package:seller_app/utils/app_bars/main_appbar.dart';
import 'package:seller_app/utils/app_colors/app_color.dart';
import 'package:seller_app/utils/app_constants/const_images.dart';
import 'package:seller_app/utils/app_text/app_text.dart';
import 'package:seller_app/utils/bottom_navigation/bottom_navigation.dart';

final Settingcontroller controller = Settingcontroller();
final LanguageService languageService = Get.find();

class Settings extends StatelessWidget {
  const Settings({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigation(),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        surfaceTintColor: AppColors.transperentColor,
        automaticallyImplyLeading: false,
        title: MainAppBar(
          title: "HeyJack".tr,
          color: AppColors.blackColor,
          leadingWidget: SvgPicture.asset(ImageConst.menu),
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
              padding: const EdgeInsets.fromLTRB(16, 22, 16, 22),
              child: Column(
                children: [
                  Image.asset(ImageConst.dr),
                  SizedBox(height: 8),
                  AppText(
                    title: "JackSmith".tr,
                    fontWeight: FontWeight.w500,
                    size: 22,
                    gradient: AppColors.commonGradient,
                  ),
                  SizedBox(height: 4),
                  AppText(
                    title: "useremail".tr,
                    fontWeight: FontWeight.w500,
                    size: 12,
                    color: Color(0xffA0A0A0),
                  ),
                  SizedBox(height: 6),
                  Container(
                    width: 75,
                    decoration: BoxDecoration(
                      color: AppColors.transperentColor,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: AppColors.commonColor),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(6, 4, 6, 4),
                      child: Row(
                        children: [
                          SvgPicture.asset(ImageConst.vector),
                          SizedBox(width: 6),
                          AppText(
                            title: '120',
                            fontWeight: FontWeight.w500,
                            size: 16,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 24),
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xffFB6D72).withOpacity(0.1),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(16, 12, 16, 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Image.asset(
                                ImageConst.drawerImg1,
                                color: AppColors.grey3,
                              ),
                              SizedBox(height: 11),
                              AppText(
                                title: "Orders".tr,
                                color: AppColors.grey2,
                                fontWeight: FontWeight.w500,
                              ),
                            ],
                          ),
                          SizedBox(width: 46),
                          Column(
                            children: [
                              SvgPicture.asset(ImageConst.wallet),
                              SizedBox(height: 11),
                              AppText(
                                title: "Payments".tr,
                                color: AppColors.grey2,
                                fontWeight: FontWeight.w500,
                              ),
                            ],
                          ),
                          SizedBox(width: 46),
                          Column(
                            children: [
                              SvgPicture.asset(ImageConst.locationPin),
                              SizedBox(height: 11),
                              AppText(
                                title: "Location".tr,
                                color: AppColors.grey2,
                                fontWeight: FontWeight.w500,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 24),
                  Row(
                    children: [
                      SvgPicture.asset(ImageConst.profile),
                      SizedBox(width: 8),
                      Expanded(
                        child: AppText(
                          title: "Accountsettings".tr,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Icon(Icons.keyboard_arrow_right),
                    ],
                  ),
                  SizedBox(height: 32),
                  GestureDetector(
                    onTap: () {
                      Get.toNamed(Routes.notificationRoute);
                    },
                    child: Row(
                      children: [
                        SvgPicture.asset(ImageConst.notific),
                        SizedBox(width: 8),
                        Expanded(
                          child: AppText(
                            title: "Notification".tr,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Icon(Icons.keyboard_arrow_right),
                      ],
                    ),
                  ),
                  SizedBox(height: 32),
                  GestureDetector(
                    onTap: () {
                      Get.bottomSheet(
                        Container(
                          decoration: BoxDecoration(
                            color: AppColors.WhiteColor,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(30),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 25, vertical: 8),
                            child: Obx(() {
                              return Column(
                                children: [
                                  Container(
                                    height: 4,
                                    width: 69,
                                    decoration: BoxDecoration(
                                      color: AppColors.commonColor,
                                      borderRadius: BorderRadius.circular(3),
                                    ),
                                  ),
                                  SizedBox(height: 20),
                                  AppText(
                                    title: 'language'.tr,
                                    size: 17,
                                  ),
                                  SizedBox(height: 35),
                                  Expanded(
                                    child: ListView(
                                      children: [
                                        SelectLanguage(
                                          text: 'English',
                                          contText: 'language',
                                          langCode: 'en',
                                          countryCode: 'US',
                                          saveLang: 'en',
                                        ),
                                        SizedBox(height: 15),
                                        SelectLanguage(
                                          text: 'Punjabi',
                                          contText: 'punjabi',
                                          langCode: 'pa',
                                          countryCode: 'IN',
                                          saveLang: 'pa',
                                        ),
                                        SizedBox(height: 15),
                                        SelectLanguage(
                                          text: 'Spanish',
                                          contText: 'spanish',
                                          langCode: 'es',
                                          countryCode: 'ES',
                                          saveLang: 'es',
                                        ),
                                        SizedBox(height: 15),
                                        SelectLanguage(
                                          text: 'Italian',
                                          contText: 'italian',
                                          langCode: 'it',
                                          countryCode: 'IT',
                                          saveLang: 'it',
                                        ),
                                        SizedBox(height: 15),
                                        SelectLanguage(
                                          text: 'German',
                                          contText: 'german',
                                          langCode: 'de',
                                          countryCode: 'DE',
                                          saveLang: 'de',
                                        ),
                                        SizedBox(height: 15),
                                        SelectLanguage(
                                          text: 'French',
                                          contText: 'french',
                                          langCode: 'fr',
                                          countryCode: 'FR',
                                          saveLang: 'fr',
                                        ),
                                        SizedBox(height: 15),
                                        SelectLanguage(
                                          text: 'Tagalog',
                                          contText: 'tagalog',
                                          langCode: 'tl',
                                          countryCode: 'PH',
                                          saveLang: 'tl',
                                        ),
                                        SizedBox(height: 15),
                                        SelectLanguage(
                                          text: 'Chinese',
                                          contText: 'chinese',
                                          langCode: 'zh',
                                          countryCode: 'CN',
                                          saveLang: 'zh',
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              );
                            }),
                          ),
                        ),
                      );
                    },
                    child: Row(
                      children: [
                        SvgPicture.asset(ImageConst.language),
                        SizedBox(width: 8),
                        Expanded(
                          child: AppText(
                            title: "Languagesettings".tr,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        controller.seletedValuetype.value == 'language'
                            ? Image.asset(ImageConst.us)
                            : controller.seletedValuetype.value == 'punjabi'
                                ? Image.asset(
                                    ImageConst.ind,
                                    width: 22,
                                    height: 16,
                                    fit: BoxFit.cover,
                                  )
                                : controller.seletedValuetype.value == 'spanish'
                                    ? Image.asset(
                                        ImageConst.spain,
                                        width: 22,
                                        height: 16,
                                        fit: BoxFit.cover,
                                      )
                                    : controller.seletedValuetype.value ==
                                            'italian'
                                        ? Image.asset(
                                            ImageConst.italy,
                                            width: 22,
                                            height: 16,
                                            fit: BoxFit.cover,
                                          )
                                        : controller.seletedValuetype.value ==
                                                'german'
                                            ? Image.asset(
                                                ImageConst.grmny,
                                                width: 22,
                                                height: 16,
                                                fit: BoxFit.cover,
                                              )
                                            : controller.seletedValuetype
                                                        .value ==
                                                    'french'
                                                ? Image.asset(
                                                    ImageConst.frnce,
                                                    width: 22,
                                                    height: 16,
                                                    fit: BoxFit.cover,
                                                  )
                                                : controller.seletedValuetype
                                                            .value ==
                                                        'tagalog'
                                                    ? Image.asset(
                                                        ImageConst.tgalog,
                                                        width: 22,
                                                        height: 16,
                                                        fit: BoxFit.cover,
                                                      )
                                                    : controller.seletedValuetype
                                                                .value ==
                                                            'chinese'
                                                        ? Image.asset(
                                                            ImageConst.china,
                                                            width: 22,
                                                            height: 16,
                                                            fit: BoxFit.cover,
                                                          )
                                                        : SizedBox(),
                      ],
                    ),
                  ),
                  SizedBox(height: 32),
                  GestureDetector(
                    onTap: () {
                      Get.toNamed(Routes.helpSupportRoute);
                    },
                    child: Row(
                      children: [
                        Image.asset(
                          ImageConst.drawerImg12,
                          color: AppColors.grey3,
                        ),
                        SizedBox(width: 8),
                        Expanded(
                          child: AppText(
                            title: "HelpSupport".tr,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Icon(Icons.keyboard_arrow_right),
                      ],
                    ),
                  ),
                  SizedBox(height: 32),
                  Row(
                    children: [
                      Image.asset(
                        ImageConst.drawerImg13,
                        color: AppColors.grey3,
                      ),
                      SizedBox(width: 8),
                      AppText(
                        title: "LogOut".tr,
                        fontWeight: FontWeight.w500,
                      ),
                    ],
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

SvgPicture Background() {
  return SvgPicture.asset(
    ImageConst.bgImage,
    height: Get.height,
    width: Get.width,
    fit: BoxFit.cover,
  );
}

Widget SelectLanguage({
  required String text,
  required String contText,
  required String langCode,
  required String countryCode,
  required String saveLang,
}) {
  return GestureDetector(
    onTap: () {
      controller.updateValueType(contText);
      controller.changeLanguage(langCode, countryCode);
      languageService.saveLanguage(saveLang);
    },
    child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AppText(
            title: text,
            fontWeight: FontWeight.w500,
            size: 14,
          ),
          Container(
            decoration: BoxDecoration(
              color: AppColors.WhiteColor,
              borderRadius: BorderRadius.circular(16),
              border: Border.all(
                color: AppColors.commonColor,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(2.0),
              child: Container(
                height: 13,
                width: 13,
                decoration: BoxDecoration(
                  color: controller.seletedValuetype.value == contText
                      ? AppColors.commonColor
                      : AppColors.WhiteColor,
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
