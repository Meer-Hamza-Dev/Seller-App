// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:seller_app/app/home/homePage.dart';
import 'package:seller_app/app/setting/setting.dart';
import 'package:seller_app/app/visiting_cards/visiting_card_controller.dart';
import 'package:seller_app/routes/app_pages.dart';
import 'package:seller_app/utils/app_bars/main_appbar.dart';
import 'package:seller_app/utils/app_buttons/app_buttons.dart';
import 'package:seller_app/utils/app_colors/app_color.dart';
import 'package:seller_app/utils/app_constants/const_images.dart';
import 'package:seller_app/utils/app_text/app_text.dart';
import 'package:seller_app/utils/app_text_field.dart';

class VisitingCard extends StatelessWidget {
  VisitingCard({super.key});

  final VisitingCardController controller = VisitingCardController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        surfaceTintColor: AppColors.transperentColor,
        automaticallyImplyLeading: false,
        title: MainAppBar(
          title: "visitingcard".tr,
          size: 20,
          color: AppColors.blackColor,
          leadingWidget: GestureDetector(
            onTap: () {
              Get.back();
            },
            child: SvgPicture.asset(ImageConst.backBtn),
          ),
          imageSuffix: SvgPicture.asset(ImageConst.search),
          imageSuffix2: Icon(Icons.mic_rounded, size: 22),
          sizedBoxWidth: 12,
          imageSuffix3: SvgPicture.asset(ImageConst.notification),
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
                padding: const EdgeInsets.fromLTRB(16, 28, 16, 16),
                child: Obx(() {
                  return Column(
                    children: [
                      ManrajSweets(
                        imageprefix: ImageConst.zaikaIndia,
                        imagesuffix: ImageConst.pakorey,
                      ),
                      SizedBox(height: 20),
                      AppButton(
                        buttonName: "createyourvisiting".tr,
                        onTap: () {
                          Get.bottomSheet(
                            isScrollControlled: true,
                            Container(
                              height: Get.height * 0.9,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: AppColors.WhiteColor,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20),
                                ),
                              ),
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(16, 6, 16, 48),
                                child: SingleChildScrollView(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Center(
                                        child: Column(
                                          children: [
                                            Container(
                                              height: 5.43,
                                              width: 139.36,
                                              decoration: BoxDecoration(
                                                color: Color(0xff5E6875),
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                            ),
                                            SizedBox(height: 36),
                                            AppText(
                                              title: "createvisitingcard".tr,
                                              color: AppColors.grey3,
                                              fontWeight: FontWeight.w600,
                                              size: 20,
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(height: 48),
                                      AppText(
                                        title: "yourbusinessname".tr,
                                        fontWeight: FontWeight.w500,
                                      ),
                                      SizedBox(height: 6),
                                      appField(
                                        context: context,
                                        hint: "Yournamehere".tr,
                                      ),
                                      SizedBox(height: 16),
                                      AppText(
                                        title: "description".tr,
                                        fontWeight: FontWeight.w500,
                                      ),
                                      SizedBox(height: 6),
                                      appField(
                                        context: context,
                                        hint: "Typehere".tr,
                                        max: 3,
                                      ),
                                      SizedBox(height: 16),
                                      AppText(
                                        title: "contactno".tr,
                                        fontWeight: FontWeight.w500,
                                      ),
                                      SizedBox(height: 6),
                                      appField(
                                        context: context,
                                        hint: "Number".tr,
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
                                      ),
                                      SizedBox(height: 16),
                                      AppText(
                                        title: "websiteaddress".tr,
                                        fontWeight: FontWeight.w500,
                                      ),
                                      SizedBox(height: 6),
                                      appField(
                                        context: context,
                                        hint: "Typehere".tr,
                                      ),
                                      SizedBox(height: 16),
                                      AppText(
                                        title: "uploadproductimages".tr,
                                        fontWeight: FontWeight.w500,
                                      ),
                                      SizedBox(height: 6),
                                      Container(
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                          color: AppColors.transperentColor,
                                          border: Border.all(
                                              color: AppColors.borderColor),
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 44.0),
                                          child: Icon(Icons.add,
                                              size: 24, color: AppColors.grey3),
                                        ),
                                      ),
                                      SizedBox(height: 16),
                                      Row(
                                        children: [
                                          Expanded(
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
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
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
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
                                                          color: AppColors
                                                              .borderColor),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8),
                                                    ),
                                                    child: DropdownButton(
                                                        hint: Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .all(15),
                                                          child: AppText(
                                                            title: "Select".tr,
                                                            color:
                                                                AppColors.grey1,
                                                            size: 13,
                                                          ),
                                                        ),
                                                        icon: Icon(
                                                          Icons
                                                              .keyboard_arrow_down_rounded,
                                                          color: AppColors
                                                              .blackColor,
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
                                      Row(
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                              color: AppColors.blackColor,
                                              borderRadius:
                                                  BorderRadius.circular(5),
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
                                        buttonName: "proceedtopayment".tr,
                                        onTap: () {
                                          Get.back();
                                          Get.bottomSheet(
                                            Container(
                                              height: 330,
                                              decoration: BoxDecoration(
                                                color: AppColors.WhiteColor,
                                                borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(24),
                                                  topRight: Radius.circular(24),
                                                ),
                                              ),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.fromLTRB(
                                                        16, 10, 16, 46.9),
                                                child: Column(
                                                  children: [
                                                    Container(
                                                      height: 4,
                                                      width: 36,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            Color(0xff828282),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8),
                                                      ),
                                                    ),
                                                    SizedBox(height: 48),
                                                    Container(
                                                      height: 38,
                                                      width: 38,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            Color(0xff5DC161),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(31),
                                                      ),
                                                      child: Center(
                                                        child: Icon(
                                                          Icons.done,
                                                          size: 18,
                                                          color: AppColors
                                                              .WhiteColor,
                                                        ),
                                                      ),
                                                    ),
                                                    SizedBox(height: 18),
                                                    AppText(
                                                      title: "paymentsuccessful"
                                                          .tr,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      size: 19,
                                                      color: AppColors.grey3,
                                                    ),
                                                    SizedBox(height: 4),
                                                    AppText(
                                                      title: "mngvistcrd".tr,
                                                      textAlign:
                                                          TextAlign.center,
                                                      height: 1.5,
                                                      size: 12,
                                                      color: Color(0xff828282),
                                                    ),
                                                    SizedBox(height: 48),
                                                    AppButton(
                                                      buttonName: "gohompag".tr,
                                                      isShowShadow: false,
                                                      onTap: () {
                                                        Get.back();
                                                        Get.toNamed(Routes
                                                            .visitingCardRoute);
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
                          );
                        },
                      ),
                      SizedBox(height: 20),
                      SizedBox(
                        height: 42,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          children: [
                            GestureDetector(
                              onTap: () {
                                controller.updateselectedtype('mycards');
                              },
                              child: Container(
                                decoration: controller
                                            .selectedValuetype.value ==
                                        'mycards'
                                    ? BoxDecoration(
                                        gradient: AppColors.commonGradient,
                                        borderRadius: BorderRadius.circular(12),
                                      )
                                    : BoxDecoration(
                                        color: AppColors.WhiteColor,
                                        borderRadius: BorderRadius.circular(12),
                                        boxShadow: [
                                          BoxShadow(
                                            color: AppColors.blackColor
                                                .withOpacity(.1),
                                            blurRadius: 2,
                                            offset: Offset(0, 4),
                                          ),
                                        ],
                                      ),
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(19, 12, 19, 11),
                                  child: AppText(
                                    title: "myCards".tr,
                                    fontWeight: FontWeight.w500,
                                    color: controller.selectedValuetype.value ==
                                            'mycards'
                                        ? AppColors.WhiteColor
                                        : AppColors.blackColor,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 13.67),
                            GestureDetector(
                              onTap: () {
                                controller.updateselectedtype('all');
                              },
                              child: Container(
                                decoration: controller
                                            .selectedValuetype.value ==
                                        'all'
                                    ? BoxDecoration(
                                        gradient: AppColors.commonGradient,
                                        borderRadius: BorderRadius.circular(12),
                                      )
                                    : BoxDecoration(
                                        color: AppColors.WhiteColor,
                                        borderRadius: BorderRadius.circular(12),
                                        boxShadow: [
                                          BoxShadow(
                                            color: AppColors.blackColor
                                                .withOpacity(.1),
                                            blurRadius: 2,
                                            offset: Offset(0, 4),
                                          ),
                                        ],
                                      ),
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(19, 12, 19, 11),
                                  child: AppText(
                                    title: "All".tr,
                                    fontWeight: FontWeight.w500,
                                    color: controller.selectedValuetype.value ==
                                            'all'
                                        ? AppColors.WhiteColor
                                        : AppColors.blackColor,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 13.67),
                            GestureDetector(
                              onTap: () {
                                controller.updateselectedtype('tailor');
                              },
                              child: Container(
                                decoration: controller
                                            .selectedValuetype.value ==
                                        'tailor'
                                    ? BoxDecoration(
                                        gradient: AppColors.commonGradient,
                                        borderRadius: BorderRadius.circular(12),
                                      )
                                    : BoxDecoration(
                                        color: AppColors.WhiteColor,
                                        borderRadius: BorderRadius.circular(12),
                                        boxShadow: [
                                          BoxShadow(
                                            color: AppColors.blackColor
                                                .withOpacity(.1),
                                            blurRadius: 2,
                                            offset: Offset(0, 4),
                                          ),
                                        ],
                                      ),
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(19, 12, 19, 11),
                                  child: AppText(
                                    title: "tailoring".tr,
                                    fontWeight: FontWeight.w500,
                                    color: controller.selectedValuetype.value ==
                                            'tailor'
                                        ? AppColors.WhiteColor
                                        : AppColors.blackColor,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 13.67),
                            GestureDetector(
                              onTap: () {
                                controller.updateselectedtype('accounts');
                              },
                              child: Container(
                                decoration: controller
                                            .selectedValuetype.value ==
                                        'accounts'
                                    ? BoxDecoration(
                                        gradient: AppColors.commonGradient,
                                        borderRadius: BorderRadius.circular(12),
                                      )
                                    : BoxDecoration(
                                        color: AppColors.WhiteColor,
                                        borderRadius: BorderRadius.circular(12),
                                        boxShadow: [
                                          BoxShadow(
                                            color: AppColors.blackColor
                                                .withOpacity(.1),
                                            blurRadius: 2,
                                            offset: Offset(0, 4),
                                          ),
                                        ],
                                      ),
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(19, 12, 19, 11),
                                  child: AppText(
                                    title: "accounts".tr,
                                    fontWeight: FontWeight.w500,
                                    color: controller.selectedValuetype.value ==
                                            'accounts'
                                        ? AppColors.WhiteColor
                                        : AppColors.blackColor,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 13.67),
                            GestureDetector(
                              onTap: () {
                                controller.updateselectedtype('carwash');
                              },
                              child: Container(
                                decoration: controller
                                            .selectedValuetype.value ==
                                        'carwash'
                                    ? BoxDecoration(
                                        gradient: AppColors.commonGradient,
                                        borderRadius: BorderRadius.circular(12),
                                      )
                                    : BoxDecoration(
                                        color: AppColors.WhiteColor,
                                        borderRadius: BorderRadius.circular(12),
                                        boxShadow: [
                                          BoxShadow(
                                            color: AppColors.blackColor
                                                .withOpacity(.1),
                                            blurRadius: 2,
                                            offset: Offset(0, 4),
                                          ),
                                        ],
                                      ),
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(19, 12, 19, 11),
                                  child: AppText(
                                    title: "carwash".tr,
                                    fontWeight: FontWeight.w500,
                                    color: controller.selectedValuetype.value ==
                                            'carwash'
                                        ? AppColors.WhiteColor
                                        : AppColors.blackColor,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppText(
                            title: "visitingcard".tr,
                            fontWeight: FontWeight.w600,
                            size: 20,
                            color: AppColors.itemNameClor,
                          ),
                          Image.asset(ImageConst.adjust),
                        ],
                      ),
                      SizedBox(height: 20),
                      controller.selectedValuetype.value == 'all'
                          ? visitTailorCard()
                          : SizedBox(height: 0),
                      controller.selectedValuetype.value == 'tailor'
                          ? visitTailorCard()
                          : SizedBox(height: 0),
                      controller.selectedValuetype.value == 'mycards'
                          ? Container(
                              decoration: BoxDecoration(
                                color: AppColors.WhiteColor,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 16, vertical: 24),
                                child: Column(
                                  children: [
                                    Image.asset(ImageConst.computer),
                                    SizedBox(height: 20),
                                    AppText(
                                      title: "designprocess".tr,
                                      fontWeight: FontWeight.w600,
                                      size: 20,
                                      color: AppColors.grey3,
                                    ),
                                    SizedBox(height: 4),
                                    AppText(
                                      title: "dsgnready24hour".tr,
                                      size: 12,
                                      color: AppColors.grey1,
                                    ),
                                    SizedBox(height: 24),
                                    AppButton(
                                      buttonName: "talkdesigner".tr,
                                      isShowGradient: false,
                                      isShowShadow: false,
                                      textColor: AppColors.grey3,
                                      buttonColor: AppColors.WhiteColor,
                                      borderColor: AppColors.grey3,
                                      onTap: () {},
                                    ),
                                  ],
                                ),
                              ),
                            )
                          : SizedBox(height: 0),
                    ],
                  );
                }),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

final VisitingCardController controller = VisitingCardController();
Widget visitTailorCard() {
  return Column(
    children: [
      CarouselSlider(
        options: CarouselOptions(
          viewportFraction: 1.0,
          enlargeCenterPage: true,
          enableInfiniteScroll: true,
          height: 609,
          autoPlay: true,
          onPageChanged: (index, reason) {
            controller.updateIndex(index);
          },
        ),
        items: [1, 2, 3, 4, 5].map((i) {
          return Builder(
            builder: (BuildContext context) {
              return GestureDetector(
                onTap: () {
                  Get.toNamed(Routes.visitingDetailRoute);
                },
                child: Image.asset(
                  ImageConst.visitCard,
                  width: Get.width,
                  fit: BoxFit.fill,
                ),
              );
            },
          );
        }).toList(),
      ),
      SizedBox(height: 14),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [1, 2, 3, 4, 5].map((i) {
          int index = [1, 2, 3, 4, 5].indexOf(i);
          return Container(
            width: 8.0,
            height: 8.0,
            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: controller.currentIndex.value == index
                  ? AppColors.commonColor
                  : AppColors.borderColor,
            ),
          );
        }).toList(),
      ),
      SizedBox(height: 20),
      AppButton(
        isShowGradient: false,
        isShowShadow: false,
        buttonColor: AppColors.WhiteColor,
        borderColor: AppColors.grey3,
        textColor: AppColors.grey3,
        buttonName: "share".tr,
        onTap: () {},
      ),
      SizedBox(height: 20),
      Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Color(0xff25D366),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 13),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(ImageConst.whatsapp),
              SizedBox(width: 14),
              Container(
                height: 20,
                width: 1,
                color: AppColors.WhiteColor,
              ),
              SizedBox(width: 14),
              AppText(
                title: "sHAREWHATSAPP".tr,
                color: AppColors.WhiteColor,
                fontWeight: FontWeight.w600,
                size: 12,
              ),
            ],
          ),
        ),
      ),
    ],
  );
}
