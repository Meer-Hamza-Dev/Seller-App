import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:seller_app/routes/app_pages.dart';
import 'package:seller_app/utils/app_colors/app_color.dart';
import 'package:seller_app/utils/app_constants/const_images.dart';
import 'package:seller_app/utils/app_text/app_text.dart';

Widget buildDrawerHeader() {
  return Padding(
    padding: EdgeInsets.only(top: 54, left: 16, right: 16),
    child: Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              ImageConst.drawerMain,
              height: 57,
              width: 53,
              fit: BoxFit.cover,
            ),
            SizedBox(width: 12),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    AppText(
                      title: "jackSmith".tr,
                      size: 20,
                      fontWeight: FontWeight.w500,
                      color: AppColors.WhiteColor,
                    ),
                    SizedBox(width: 8),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: AppColors.WhiteColor),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(5, 3, 5, 3),
                        child: Row(
                          children: [
                            SvgPicture.asset(
                              ImageConst.vector,
                              color: AppColors.WhiteColor,
                            ),
                            SizedBox(width: 4),
                            AppText(
                              title: '120',
                              size: 16,
                              fontWeight: FontWeight.w500,
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 4),
                AppText(
                  title: "useremail".tr,
                  size: 12,
                  fontWeight: FontWeight.w500,
                  color: AppColors.WhiteColor,
                ),
              ],
            ),
          ],
        ),
      ],
    ),
  );
}

// Drawer Items
Widget buildDrawerItems(BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      buildDrawerItem(context, ImageConst.drawerImg1, 'myOrders', () {
        Get.back();
        Get.toNamed(Routes.todayOrderRoute);
      }),
      buildDrawerItem(context, ImageConst.drawerImg2, 'inventory', () {
        Get.back();
        Get.toNamed(Routes.inventoryRoute);
      }),
      buildDrawerItem(context, ImageConst.drawerImg3, 'Payments', () {}),
      buildDrawerItem(context, ImageConst.drawerImg4, 'Flyers', () {
        Get.back();
        Get.toNamed(Routes.flyerRoute);
      }),
      buildDrawerItem(context, ImageConst.drawerImg5, 'otherservices'.tr, () {
        Get.back();
        Get.toNamed(Routes.otherServicesRoute);
      }),
      buildDrawerItem(context, ImageConst.drawerImg6, 'visitingcard', () {
        Get.back();
        Get.toNamed(Routes.visitingCardRoute);
      }),
      buildDrawerItem(context, ImageConst.drawerImg7, 'discount&Offers', () {
          Get.back();
        Get.toNamed(Routes.discountOfferRoute);
      }),
      buildDrawerItem(context, ImageConst.drawerImg7, 'myRewards', () {
        Get.back();
        Get.toNamed(Routes.rewardsRoute);
      }),
      buildDrawerItem(context, ImageConst.drawerImg8, 'coupons', () {
        Get.back();
        Get.toNamed(Routes.couponsRoute);
      }),
      buildDrawerItem(context, ImageConst.drawerImg9, 'referEarn', () {
        Get.back();
        Get.toNamed(Routes.referEarnRoute);
      }),
      buildDrawerItem(context, ImageConst.drawerImg10, 'videoAdver', () {
        Get.back();
        Get.toNamed(Routes.videoAdvertisementRoute);
      }),
      buildDrawerItem(context, ImageConst.drawerImg11, 'promotebusiness', () {
        Get.back();
        Get.toNamed(Routes.promoteBusinessRoute);
      }),
      buildDrawerItem(context, ImageConst.drawerImg12, 'HelpSupport', () {
        Get.back();
        Get.toNamed(Routes.helpSupportRoute);
      }),
      buildDrawerItem(context, ImageConst.drawerImg13, 'LogOut', () {
        Get.toNamed(Routes.loginRoute);
      })
    ],
  );
}

Widget buildDrawerItem(
    BuildContext context, String iconPath, String title, VoidCallback onTap) {
  return GestureDetector(
    onTap: onTap,
    child: Padding(
      padding: const EdgeInsets.only(top: 42, left: 17),
      child: Row(
        children: [
          Image.asset(iconPath),
          SizedBox(width: 14),
          AppText(
            title: title.tr,
            size: 16,
            fontWeight: FontWeight.w500,
            color: AppColors.WhiteColor,
          ),
        ],
      ),
    ),
  );
}
