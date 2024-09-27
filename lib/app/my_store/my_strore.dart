import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:seller_app/app/home/homePage.dart';
import 'package:seller_app/routes/app_pages.dart';
import 'package:seller_app/utils/app_bars/main_appbar.dart';
import 'package:seller_app/utils/app_buttons/app_buttons.dart';
import 'package:seller_app/utils/app_colors/app_color.dart';
import 'package:seller_app/utils/app_constants/const_images.dart';
import 'package:seller_app/utils/app_text/app_text.dart';
import 'package:seller_app/utils/bottom_navigation/bottom_navigation.dart';

class My_Store extends StatelessWidget {
  const My_Store({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigation(),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        surfaceTintColor: AppColors.transperentColor,
        automaticallyImplyLeading: false,
        toolbarHeight: 70,
        title: MainAppBar(
          title: 'HeyJack'.tr,
          subTitle: 'MyStore'.tr,
          color: AppColors.blackColor,
          leadingWidget: SvgPicture.asset(ImageConst.menu),
          imageSuffix: SvgPicture.asset(ImageConst.search),
          imageSuffix2: GestureDetector(
            onTap: () {
              Get.toNamed(Routes.discountOfferRoute);
            },
            child: SvgPicture.asset(ImageConst.discount),
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
                padding: const EdgeInsets.fromLTRB(16, 20, 16, 16),
                child: Column(
                  children: [
                    ManrajSweets(
                      imageprefix: ImageConst.manraj,
                      imagesuffix: ImageConst.gulabJamun,
                    ),
                    SizedBox(height: 20),
                    SizedBox(
                      height: 42,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                    title: 'All'.tr,
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
                                    title: 'Popular'.tr,
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
                                    title: 'Topselling'.tr,
                                    color: AppColors.grey2,
                                  ),
                                ),
                              ),
                              SizedBox(width: 14),
                              GestureDetector(
                                onTap: () {
                                  Get.toNamed(Routes.categoriesRoute);
                                },
                                child: Container(
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
                                        const EdgeInsets.fromLTRB(10, 8, 10, 8),
                                    child: Row(
                                      children: [
                                        AppText(
                                          title: 'categories'.tr,
                                          color: AppColors.grey2,
                                        ),
                                        Icon(
                                          Icons.keyboard_arrow_down_outlined,
                                          size: 15,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    GestureDetector(
                      onTap: () {
                        Get.toNamed(Routes.productViewRoute);
                      },
                      child: Products(
                        text: 'pomegranate'.tr,
                        ImagePath: ImageConst.annar,
                      ),
                    ),
                    SizedBox(height: 20),
                    Products(
                      text: 'pomegranate'.tr,
                      ImagePath: ImageConst.apple,
                    ),
                    SizedBox(height: 20),
                    Products(
                      text: 'pomegranate'.tr,
                      ImagePath: ImageConst.annar,
                    ),
                    SizedBox(height: 20),
                    Products(
                      text: 'pomegranate'.tr,
                      ImagePath: ImageConst.apple,
                    ),
                    SizedBox(height: 20),
                    Products(
                      text: 'pomegranate'.tr,
                      ImagePath: ImageConst.annar,
                    ),
                    SizedBox(height: 20),
                    Products(
                      text: 'pomegranate'.tr,
                      ImagePath: ImageConst.apple,
                    ),
                    SizedBox(height: 48),
                    AppButton(
                      buttonName: 'addProduct'.tr,
                      onTap: () {
                        Get.toNamed(Routes.addNewProductRoute);
                      },
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
