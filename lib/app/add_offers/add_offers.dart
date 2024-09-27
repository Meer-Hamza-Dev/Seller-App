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
import 'package:table_calendar/table_calendar.dart';

class AddOffers extends StatelessWidget {
  const AddOffers({super.key});

  @override
  Widget build(BuildContext context) {
    DateTime today = DateTime.now();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        surfaceTintColor: AppColors.transperentColor,
        automaticallyImplyLeading: false,
        title: MainAppBar(
          title: "addOffer".tr,
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
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.fromLTRB(16, 48, 16, 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppText(
                      title: "selectOfr".tr,
                      fontWeight: FontWeight.w500,
                    ),
                    SizedBox(height: 6),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: AppColors.borderColor),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(20, 14, 20, 14),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            AppText(
                              title: "Select".tr,
                              color: AppColors.grey1,
                            ),
                            Icon(Icons.keyboard_arrow_down_outlined),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 16),
                    AppText(
                      title: "setMiniOdr".tr,
                      fontWeight: FontWeight.w500,
                    ),
                    SizedBox(height: 6),
                    appField(
                      context: context,
                      hint: "Typehere".tr,
                      border: AppColors.borderColor,
                      height: 17,
                    ),
                    SizedBox(height: 16),
                    AppText(
                      title: "startdate".tr,
                      fontWeight: FontWeight.w500,
                    ),
                    SizedBox(height: 6),
                    appField(
                      context: context,
                      hint: '00/00/0000',
                      suffixWidget: IconButton(
                        onPressed: () {
                          SelectDate(today);
                        },
                        icon: Icon(Icons.calendar_month_outlined),
                        color: AppColors.commonColor,
                      ),
                      border: AppColors.borderColor,
                      height: 17,
                    ),
                    SizedBox(height: 16),
                    AppText(
                      title: "endDate".tr,
                      fontWeight: FontWeight.w500,
                    ),
                    SizedBox(height: 6),
                    appField(
                      context: context,
                      hint: '00/00/0000',
                      suffixWidget: IconButton(
                        onPressed: () {
                          SelectDate(today);
                        },
                        icon: Icon(Icons.calendar_month_outlined),
                        color: AppColors.commonColor,
                      ),
                      border: AppColors.borderColor,
                      height: 17,
                    ),
                    SizedBox(height: 72),
                    AppButton(
                      buttonName: "activateOffer".tr,
                      onTap: () {
                        Get.toNamed(Routes.productViewRoute);
                      },
                    ),
                    SizedBox(height: 48),
                    AppButton(
                      buttonName: "skipPub".tr,
                      isShowGradient: false,
                      textColor: AppColors.commonColor,
                      borderColor: AppColors.commonColor,
                      isShowShadow: false,
                      onTap: () {
                        Get.toNamed(Routes.reviewOrderRoute);
                        Get.bottomSheet(
                          Container(
                            height: Get.height * .35,
                            decoration: BoxDecoration(
                              color: AppColors.WhiteColor,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(24),
                                topRight: Radius.circular(24),
                              ),
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(16, 10, 16, 38),
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
                                      title: "productPub".tr,
                                      fontWeight: FontWeight.w600,
                                      size: 19,
                                      color: AppColors.grey3),
                                  SizedBox(height: 3),
                                  AppText(
                                    title: "youCanEdit".tr,
                                    size: 12,
                                    color: Color(0xff828282),
                                    textAlign: TextAlign.center,
                                    height: 1.5,
                                  ),
                                  SizedBox(height: 48),
                                  AppButton(
                                    buttonName: "MyStore".tr,
                                    isShowShadow: false,
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
                    SizedBox(height: 36),
                    Center(
                      child: TextButton(
                        onPressed: () {
                          Get.toNamed(Routes.createNewOfferRoute);
                        },
                        child: AppText(
                          title: "createOfr".tr,
                          gradient: AppColors.commonGradient,
                          size: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
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

Future<dynamic> SelectDate(DateTime today) {
  return Get.dialog(
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 25, right: 25),
          child: Container(
            decoration: BoxDecoration(
              color: AppColors.WhiteColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                children: [
                  AppText(
                    title: 'Select Time',
                    fontWeight: FontWeight.w600,
                    size: 15,
                  ),
                  SizedBox(height: 25),
                  Container(
                    decoration: BoxDecoration(
                      color: AppColors.grey1,
                    ),
                    child: Column(
                      children: [
                        Material(
                          child: TableCalendar(
                            headerVisible: true,
                            daysOfWeekVisible: false,
                            focusedDay: today,
                            firstDay: DateTime.utc(2007, 6, 6),
                            lastDay: DateTime.utc(2024, 10, 23),
                            calendarStyle: CalendarStyle(
                              todayDecoration: BoxDecoration(
                                color: AppColors.commonColor,
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                            headerStyle: HeaderStyle(
                              titleTextStyle: TextStyle(
                                color: AppColors.commonColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                              formatButtonVisible: false,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  AppButton(
                    buttonName: 'Done',
                    color: AppColors.commonColor,
                    onTap: () {
                      Get.back();
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
