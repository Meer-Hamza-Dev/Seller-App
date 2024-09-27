import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:seller_app/utils/app_bars/main_appbar.dart';
import 'package:seller_app/utils/app_buttons/app_buttons.dart';
import 'package:seller_app/utils/app_colors/app_color.dart';
import 'package:seller_app/utils/app_constants/const_images.dart';
import 'package:seller_app/utils/app_text/app_text.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        surfaceTintColor: AppColors.transperentColor,
        automaticallyImplyLeading: false,
        title: MainAppBar(
          title: "categories".tr,
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
                padding: EdgeInsets.fromLTRB(16, 20, 16, 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppText(
                      title: "freshProduce".tr,
                      size: 20,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff434343),
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Container(
                          height: 18,
                          width: 18,
                          decoration: BoxDecoration(
                            border:
                                Border.all(color: AppColors.grey3, width: 2),
                          ),
                        ),
                        SizedBox(width: 20),
                        AppText(
                          title: "fruits".tr,
                          size: 16,
                          color: AppColors.grey3,
                        ),
                      ],
                    ),
                    SizedBox(height: 8),
                    Divider(),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Container(
                          height: 18,
                          width: 18,
                          decoration: BoxDecoration(
                            border:
                                Border.all(color: AppColors.grey3, width: 2),
                          ),
                        ),
                        SizedBox(width: 20),
                        AppText(
                          title: "Vegetables".tr,
                          size: 16,
                          color: AppColors.grey3,
                        ),
                      ],
                    ),
                    SizedBox(height: 8),
                    Divider(),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Container(
                          height: 18,
                          width: 18,
                          decoration: BoxDecoration(
                            border:
                                Border.all(color: AppColors.grey3, width: 2),
                          ),
                        ),
                        SizedBox(width: 20),
                        AppText(
                          title: "herbs".tr,
                          size: 16,
                          color: AppColors.grey3,
                        ),
                      ],
                    ),
                    SizedBox(height: 8),
                    Divider(),
                    SizedBox(height: 20),
                    AppText(
                      title: "dairyEggs".tr,
                      size: 20,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff434343),
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Container(
                          height: 18,
                          width: 18,
                          decoration: BoxDecoration(
                            border:
                                Border.all(color: AppColors.grey3, width: 2),
                          ),
                        ),
                        SizedBox(width: 20),
                        AppText(
                          title: "Milk".tr,
                          size: 16,
                          color: AppColors.grey3,
                        ),
                      ],
                    ),
                    SizedBox(height: 8),
                    Divider(),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Container(
                          height: 18,
                          width: 18,
                          decoration: BoxDecoration(
                            border:
                                Border.all(color: AppColors.grey3, width: 2),
                          ),
                        ),
                        SizedBox(width: 20),
                        AppText(
                          title: "cheese".tr,
                          size: 16,
                          color: AppColors.grey3,
                        ),
                      ],
                    ),
                    SizedBox(height: 8),
                    Divider(),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Container(
                          height: 18,
                          width: 18,
                          decoration: BoxDecoration(
                            border:
                                Border.all(color: AppColors.grey3, width: 2),
                          ),
                        ),
                        SizedBox(width: 20),
                        AppText(
                          title: "yogurt".tr,
                          size: 16,
                          color: AppColors.grey3,
                        ),
                      ],
                    ),
                    SizedBox(height: 8),
                    Divider(),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Container(
                          height: 18,
                          width: 18,
                          decoration: BoxDecoration(
                            border:
                                Border.all(color: AppColors.grey3, width: 2),
                          ),
                        ),
                        SizedBox(width: 20),
                        AppText(
                          title: "eggs".tr,
                          size: 16,
                          color: AppColors.grey3,
                        ),
                      ],
                    ),
                    SizedBox(height: 8),
                    Divider(),
                    SizedBox(height: 20),
                    AppText(
                      title: "bakeryBake".tr,
                      size: 20,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff434343),
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Container(
                          height: 18,
                          width: 18,
                          decoration: BoxDecoration(
                            border:
                                Border.all(color: AppColors.grey3, width: 2),
                          ),
                        ),
                        SizedBox(width: 20),
                        AppText(
                          title: "bread".tr,
                          size: 16,
                          color: AppColors.grey3,
                        ),
                      ],
                    ),
                    SizedBox(height: 8),
                    Divider(),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Container(
                          height: 18,
                          width: 18,
                          decoration: BoxDecoration(
                            border:
                                Border.all(color: AppColors.grey3, width: 2),
                          ),
                        ),
                        SizedBox(width: 20),
                        AppText(
                          title: "pastries".tr,
                          size: 16,
                          color: AppColors.grey3,
                        ),
                      ],
                    ),
                    SizedBox(height: 8),
                    Divider(),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Container(
                          height: 18,
                          width: 18,
                          decoration: BoxDecoration(
                            border:
                                Border.all(color: AppColors.grey3, width: 2),
                          ),
                        ),
                        SizedBox(width: 20),
                        AppText(
                          title: "cakes".tr,
                          size: 16,
                          color: AppColors.grey3,
                        ),
                      ],
                    ),
                    SizedBox(height: 8),
                    Divider(),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Container(
                          height: 18,
                          width: 18,
                          decoration: BoxDecoration(
                            border:
                                Border.all(color: AppColors.grey3, width: 2),
                          ),
                        ),
                        SizedBox(width: 20),
                        AppText(
                          title: "cookies".tr,
                          size: 16,
                          color: AppColors.grey3,
                        ),
                      ],
                    ),
                    SizedBox(height: 8),
                    Divider(),
                    SizedBox(height: 36),
                    Row(
                      children: [
                        Expanded(
                          child: AppButton(
                            buttonName: "cancel".tr,
                            isShowGradient: false,
                            isShowShadow: false,
                            textColor: AppColors.grey2,
                            onTap: () {},
                          ),
                        ),
                        SizedBox(width: 18),
                        Expanded(
                          child: AppButton(
                            buttonName: "apply".tr,
                            isShowShadow: false,
                            onTap: () {},
                          ),
                        ),
                      ],
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
