// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:carousel_slider/carousel_slider.dart';
import 'package:fancy_drawer/fancy_drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:seller_app/app/home/home_controller.dart';
import 'package:seller_app/routes/app_pages.dart';
import 'package:seller_app/utils/app_bars/main_appbar.dart';
import 'package:seller_app/utils/app_buttons/app_buttons.dart';
import 'package:seller_app/utils/app_colors/app_color.dart';
import 'package:seller_app/utils/app_constants/const_images.dart';
import 'package:seller_app/utils/app_text/app_text.dart';
import 'package:seller_app/utils/bottom_navigation/bottom_navigation.dart';
import 'package:seller_app/utils/bottom_sheets/bottom_sheet.dart';
import 'package:seller_app/utils/drawer/app_drawer.dart';
import 'package:seller_app/utils/drawer/app_drawer_controller.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  final HomePageController homeController = Get.put(HomePageController());
  final AppDrawerController drawerController = Get.put(AppDrawerController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppDrawerController>(builder: (controller) {
      return Container(
        decoration: BoxDecoration(gradient: AppColors.commonGradient),
        child: FancyDrawerWrapper(
          controller: controller.fancyDrawerController,
          backgroundColor: AppColors.transperentColor,
          drawerItems: [
            buildDrawerHeader(),
            buildDrawerItems(context),
          ],
          child: Scaffold(
            key: scaffoldKey,
            bottomNavigationBar: BottomNavigation(),
            appBar: AppBar(
              toolbarHeight: 70,
              backgroundColor: Colors.transparent,
              elevation: 0,
              surfaceTintColor: AppColors.transperentColor,
              automaticallyImplyLeading: false,
              title: MainAppBar(
                title: "HeyJack".tr,
                subTitle: "MyStore".tr,
                color: AppColors.blackColor,
                leadingWidget: GestureDetector(
                  onTap: () {
                    drawerController.toggleDrawer();
                  },
                  child: SvgPicture.asset(ImageConst.menu),
                ),
                imageSuffix: AppButton(
                  buttonName: "Premium".tr,
                  buttonHeight: 35,
                  buttonWidth: 85,
                  isShowShadow: null,
                  textSize: 12,
                  fontWeight: FontWeight.w600,
                  onTap: () {
                    Get.toNamed(Routes.premiumRoute);
                  },
                ),
                imageSuffix2: GestureDetector(
                  onTap: () {
                    Get.toNamed(Routes.notificationRoute);
                  },
                  child: SvgPicture.asset(ImageConst.notification),
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
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.cover,
                ),
                SafeArea(
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(16, 20, 16, 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            alignment: Alignment.bottomCenter,
                            children: [
                              ManrajSweets(
                                imageprefix: ImageConst.manraj,
                                imagesuffix: ImageConst.gulabJamun,
                              ),
                            ],
                          ),
                          SizedBox(height: 20),
                          Row(
                            children: [
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                    color:
                                        AppColors.WhiteColor.withOpacity(0.7),
                                    borderRadius: BorderRadius.circular(12),
                                    boxShadow: [
                                      BoxShadow(
                                        color: AppColors.blackColor
                                            .withOpacity(0.03),
                                        blurRadius: 2,
                                        offset: Offset(0, 4),
                                      ),
                                    ],
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        16, 20, 0, 17),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Image.asset(ImageConst.product),
                                            SizedBox(width: 12),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                AppText(
                                                  title: '74',
                                                  fontWeight: FontWeight.w700,
                                                  size: 16,
                                                  color: AppColors.grey3,
                                                ),
                                                AppText(
                                                  title: "Products".tr,
                                                  fontWeight: FontWeight.w500,
                                                  size: 12,
                                                  color: AppColors.grey3,
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 33),
                                        TextButton(
                                          onPressed: () {},
                                          child: AppText(
                                            title: "Taptoview".tr,
                                            fontWeight: FontWeight.w500,
                                            size: 12,
                                            color: AppColors.commonColor,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 18),
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                    color:
                                        AppColors.WhiteColor.withOpacity(0.7),
                                    borderRadius: BorderRadius.circular(12),
                                    boxShadow: [
                                      BoxShadow(
                                        color: AppColors.blackColor
                                            .withOpacity(0.03),
                                        blurRadius: 2,
                                        offset: Offset(0, 4),
                                      ),
                                    ],
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        16, 20, 0, 17),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Image.asset(ImageConst.orders),
                                            SizedBox(width: 12),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                AppText(
                                                  title: '27',
                                                  fontWeight: FontWeight.w700,
                                                  size: 16,
                                                  color: AppColors.grey3,
                                                ),
                                                AppText(
                                                  title: "TodayOrders".tr,
                                                  fontWeight: FontWeight.w500,
                                                  size: 12,
                                                  color: AppColors.grey3,
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 33),
                                        TextButton(
                                          onPressed: () {
                                            Get.toNamed(Routes.todayOrderRoute);
                                          },
                                          child: AppText(
                                            title: "Taptoview".tr,
                                            fontWeight: FontWeight.w500,
                                            size: 12,
                                            color: AppColors.commonColor,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 20),
                          AppText(
                            title: "Storehours".tr,
                            fontWeight: FontWeight.w500,
                          ),
                          SizedBox(height: 12),
                          Container(
                            decoration: BoxDecoration(
                              color: Color(0xffFAFAFA),
                              boxShadow: [
                                BoxShadow(
                                  color: AppColors.blackColor.withOpacity(0.03),
                                  blurRadius: 2,
                                  offset: Offset(0, 4),
                                ),
                              ],
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      AppText(
                                        title: "Today".tr,
                                        fontWeight: FontWeight.w600,
                                        color: AppColors.grey3,
                                      ),
                                      SizedBox(height: 6),
                                      AppText(
                                        title: "AM11PM11".tr,
                                        fontWeight: FontWeight.w500,
                                        color: AppColors.grey2,
                                      ),
                                    ],
                                  ),
                                  AppButton(
                                    buttonName: "Update".tr,
                                    onTap: () {
                                      Get.bottomSheet(
                                        isScrollControlled: true,
                                        storeHours(),
                                      );
                                    },
                                    buttonHeight: 32,
                                    buttonWidth: 84,
                                    isShowShadow: null,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                          AppText(
                            title: "Avaibility".tr,
                            fontWeight: FontWeight.w500,
                          ),
                          SizedBox(height: 12),
                          Container(
                            decoration: BoxDecoration(
                              color: Color(0xffFAFAFA),
                              boxShadow: [
                                BoxShadow(
                                  color: AppColors.blackColor.withOpacity(0.03),
                                  blurRadius: 2,
                                  offset: Offset(0, 4),
                                ),
                              ],
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  AppText(
                                    title: "Pauseservice".tr,
                                    fontWeight: FontWeight.w600,
                                    color: AppColors.grey3,
                                  ),
                                  AppButton(
                                    buttonName: "Pausenow".tr,
                                    fontWeight: FontWeight.w500,
                                    onTap: () {},
                                    buttonHeight: 32,
                                    buttonWidth: 95,
                                    textColor: AppColors.grey3,
                                    borderColor: AppColors.grey3,
                                    isShowGradient: false,
                                    isShowShadow: null,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                          AppButton(
                              buttonName: "Productadd".tr,
                              isShowShadow: false,
                              onTap: () {}),
                          SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              AppText(
                                title: "Orders".tr,
                                fontWeight: FontWeight.w600,
                                size: 20,
                                color: AppColors.grey3,
                              ),
                              AppText(
                                title: "Viewall".tr,
                                fontWeight: FontWeight.w500,
                                size: 12,
                                color: AppColors.commonColor,
                              ),
                            ],
                          ),
                          SizedBox(height: 18),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                    gradient: AppColors.commonGradient,
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(12),
                                    child: AppText(
                                      title: "Neworders".tr,
                                      fontWeight: FontWeight.w500,
                                      color: AppColors.WhiteColor,
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 14),
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: AppColors.WhiteColor,
                                    borderRadius: BorderRadius.circular(12),
                                    boxShadow: [
                                      BoxShadow(
                                        color: AppColors.blackColor
                                            .withOpacity(0.03),
                                        blurRadius: 2,
                                        offset: Offset(0, 4),
                                      ),
                                    ],
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(12),
                                    child: AppText(
                                      title: "Activeorders".tr,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xff393939),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 14),
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: AppColors.WhiteColor,
                                    borderRadius: BorderRadius.circular(12),
                                    boxShadow: [
                                      BoxShadow(
                                        color: AppColors.blackColor
                                            .withOpacity(0.03),
                                        blurRadius: 2,
                                        offset: Offset(0, 4),
                                      ),
                                    ],
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(12),
                                    child: AppText(
                                      title: "Delivered".tr,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xff393939),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 18),
                          NewOrders(
                            text: "Vegetables".tr,
                            ImagePath: ImageConst.vagetable,
                            paymentText: "Paymentconfirmed".tr,
                            outBtnText: "Decline".tr,
                            btnText: "Review".tr,
                          ),
                          SizedBox(height: 20),
                          NewOrders(
                            text: "Milk".tr,
                            ImagePath: ImageConst.milk,
                            paymentText: "Paymentconfirmed".tr,
                            outBtnText: "Decline".tr,
                            btnText: "Review".tr,
                          ),
                          SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              AppText(
                                title: "Products".tr,
                                fontWeight: FontWeight.w600,
                                size: 20,
                                color: Color(0xff434343),
                              ),
                              AppText(
                                title: "Viewall".tr,
                                fontWeight: FontWeight.w500,
                                size: 12,
                                color: AppColors.commonColor,
                              ),
                            ],
                          ),
                          SizedBox(height: 18),
                          Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  gradient: AppColors.commonGradient,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(13, 8, 13, 8),
                                  child: AppText(
                                    title: "All".tr,
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.WhiteColor,
                                  ),
                                ),
                              ),
                              SizedBox(width: 14),
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(color: AppColors.grey2),
                                  borderRadius: BorderRadius.circular(8),
                                  color: AppColors.WhiteColor,
                                  boxShadow: [
                                    BoxShadow(
                                      color:
                                          AppColors.blackColor.withOpacity(.03),
                                      blurRadius: 2,
                                      offset: Offset(0, 4),
                                    ),
                                  ],
                                ),
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(13, 8, 13, 8),
                                  child: AppText(
                                    title: "Popular".tr,
                                    color: AppColors.grey2,
                                  ),
                                ),
                              ),
                              SizedBox(width: 14),
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(color: AppColors.grey2),
                                  borderRadius: BorderRadius.circular(8),
                                  color: AppColors.WhiteColor,
                                  boxShadow: [
                                    BoxShadow(
                                      color:
                                          AppColors.blackColor.withOpacity(.03),
                                      blurRadius: 2,
                                      offset: Offset(0, 4),
                                    ),
                                  ],
                                ),
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(13, 8, 13, 8),
                                  child: AppText(
                                    title: "Topselling".tr,
                                    color: AppColors.grey2,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 20),
                          Products(
                            text: "pomegranate".tr,
                            ImagePath: ImageConst.annar,
                          ),
                          SizedBox(height: 20),
                          Products(
                            text: "greenApple".tr,
                            ImagePath: ImageConst.apple,
                          ),
                          SizedBox(height: 20),
                          Products(
                            text: "pomegranate".tr,
                            ImagePath: ImageConst.annar,
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
      );
    });
  }
}

Stack ManrajSweets({required String imageprefix, required String imagesuffix}) {
  final HomePageController homeController = Get.put(HomePageController());

  return Stack(
    alignment: Alignment.bottomCenter,
    children: [
      CarouselSlider(
        options: CarouselOptions(
          viewportFraction: 1.0,
          enlargeCenterPage: true,
          enableInfiniteScroll: true,
          height: 152,
          autoPlay: true,
          onPageChanged: (index, reason) {
            homeController.updateIndex(index);
          },
        ),
        items: [1, 2, 3, 4, 5].map((i) {
          return Builder(
            builder: (BuildContext context) {
              return Container(
                decoration: BoxDecoration(
                  gradient: AppColors.manrajGradient,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(imageprefix),
                          SizedBox(height: 2),
                          Text(
                            "SpecialOffer".tr,
                            style: GoogleFonts.italianno(
                              textStyle: TextStyle(fontSize: 32),
                            ),
                          ),
                          SizedBox(height: 4),
                          Container(
                            decoration: BoxDecoration(
                              gradient: AppColors.commonGradient,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(10, 8, 10, 8),
                              child: AppText(
                                title: "Ordernow".tr,
                                size: 14,
                                fontWeight: FontWeight.w500,
                                color: AppColors.WhiteColor,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Stack(
                      alignment: Alignment.topRight,
                      children: [
                        Image.asset(imagesuffix),
                        Positioned(
                          top: 6,
                          right: 6,
                          child: SvgPicture.asset(ImageConst.sponcer),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            },
          );
        }).toList(),
      ),
      Positioned(
        bottom: 9,
        child: Obx(() => Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [1, 2, 3, 4, 5].map((i) {
                int index = [1, 2, 3, 4, 5].indexOf(i);
                return Container(
                  width: 8.0,
                  height: 8.0,
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: homeController.currentIndex.value == index
                        ? AppColors.commonColor
                        : AppColors.borderColor,
                  ),
                );
              }).toList(),
            )),
      ),
    ],
  );
}

Widget Products({required String text, required String ImagePath}) {
  return Container(
    decoration: BoxDecoration(
      color: AppColors.WhiteColor,
      borderRadius: BorderRadius.circular(16),
      boxShadow: [
        BoxShadow(
          color: AppColors.blackColor.withOpacity(.03),
          blurRadius: 2,
          offset: Offset(0, 4),
        ),
      ],
    ),
    child: Padding(
      padding: const EdgeInsets.fromLTRB(16, 14, 15, 14),
      child: Row(
        children: [
          Image.asset(
            ImagePath,
            height: 70,
            fit: BoxFit.cover,
          ),
          SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppText(
                      title: text,
                      fontWeight: FontWeight.w600,
                      size: 16,
                      color: Color(0xff434343),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xffF33F41).withOpacity(0.32),
                        borderRadius: BorderRadius.circular(2),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 4, vertical: 2.5),
                        child: Row(
                          children: [
                            AppText(
                              title: "N45".tr,
                              fontWeight: FontWeight.w600,
                              size: 12,
                              color: AppColors.commonColor,
                            ),
                            Icon(
                              Icons.star,
                              size: 12,
                              color: AppColors.commonColor,
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 2),
                AppText(
                  title: "Fruits".tr,
                  size: 12,
                  color: AppColors.grey2,
                ),
                SizedBox(height: 3),
                AppText(
                  title: r"$3".tr,
                  size: 20,
                  fontWeight: FontWeight.w600,
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}

Container NewOrders({
  required String ImagePath,
  required String text,
  required String paymentText,
  required String outBtnText,
  required String btnText,
}) {
  return Container(
    decoration: BoxDecoration(
      color: Color(0xffFAFAFA),
      boxShadow: [
        BoxShadow(
          color: AppColors.blackColor.withOpacity(0.03),
          blurRadius: 2,
          offset: Offset(0, 4),
        ),
      ],
      borderRadius: BorderRadius.circular(8),
    ),
    child: Padding(
      padding: const EdgeInsets.fromLTRB(10, 12, 12, 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(ImagePath),
          SizedBox(width: 14),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppText(
                title: text,
                fontWeight: FontWeight.w600,
                size: 16,
              ),
              SizedBox(height: 6),
              Row(
                children: [
                  SvgPicture.asset(ImageConst.locationPin, height: 16),
                  SizedBox(width: 4),
                  AppText(
                    title: "Hummingbird".tr,
                    size: 12,
                    color: Color(0xff8C8C8C),
                  ),
                ],
              ),
              SizedBox(height: 6),
              AppText(
                title: paymentText,
                size: 12,
                color: Color(0xff8C8C8C),
              ),
              SizedBox(height: 16),
              Row(
                children: [
                  AppButton(
                    buttonHeight: 34,
                    buttonWidth: 110,
                    buttonName: outBtnText,
                    textColor: AppColors.grey2,
                    buttonColor: AppColors.transperentColor,
                    borderColor: AppColors.grey2,
                    isShowGradient: false,
                    isShowShadow: false,
                    fontWeight: FontWeight.w500,
                    onTap: () {},
                  ),
                  SizedBox(width: 12),
                  AppButton(
                    buttonHeight: 34,
                    buttonWidth: 110,
                    isShowShadow: false,
                    buttonName: btnText,
                    onTap: () {
                      Get.toNamed(Routes.reviewOrderRoute);
                    },
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
