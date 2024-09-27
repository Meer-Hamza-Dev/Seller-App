import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:seller_app/routes/app_pages.dart';
import 'package:seller_app/utils/app_colors/app_color.dart';
import 'package:seller_app/utils/app_constants/const_images.dart';
import 'package:seller_app/utils/app_text/app_text.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: 92,
          decoration: BoxDecoration(
            gradient: AppColors.commonGradient,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25),
              topRight: Radius.circular(25),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buildNavItem(
                assetPath: ImageConst.home,
                route: Routes.homeScreenRoute,
                title: 'Home',
              ),
              buildNavItem(
                assetPath: ImageConst.store,
                route: Routes.myStoreRoute,
                title: 'My Store',
              ),
              SizedBox(width: 50),
              buildNavItem(
                assetPath: ImageConst.payment,
                route: Routes.paymentsRoute,
                title: 'Payments',
              ),
              buildNavItem(
                assetPath: ImageConst.setting,
                route: Routes.settingRoute,
                title: 'Settings',
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 15,
          child: Container(
            decoration: BoxDecoration(
              color: AppColors.WhiteColor,
              borderRadius: BorderRadius.circular(40),
            ),
            child: Padding(
              padding: const EdgeInsets.all(5),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(40),
                child: FloatingActionButton(
                  onPressed: () {
                    Get.toNamed(Routes.addNewProductRoute);
                  },
                  backgroundColor: AppColors.commonColor,
                  child: Icon(
                    Icons.add,
                    color: AppColors.WhiteColor,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget buildNavItem({
    required String assetPath,
    required String route,
    required String title,
  }) {
    bool isSelected = Get.currentRoute == route;

    return InkWell(
      onTap: () {
        Get.toNamed(route);
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            assetPath,
            width: 24,
            height: 24,
            color: isSelected
                ? AppColors.WhiteColor
                : AppColors.WhiteColor.withOpacity(.6),
          ),
          SizedBox(height: 10),
          AppText(
            title: title,
            color: isSelected
                ? AppColors.WhiteColor
                : AppColors.WhiteColor.withOpacity(0.6),
            fontWeight: FontWeight.w600,
            size: 10,
          ),
        ],
      ),
    );
  }
}
