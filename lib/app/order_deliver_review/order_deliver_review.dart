import 'package:dotted_line/dotted_line.dart';
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

class OrderDeliverReview extends StatelessWidget {
  const OrderDeliverReview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        surfaceTintColor: AppColors.transperentColor,
        automaticallyImplyLeading: false,
        title: MainAppBar(
          title: 'order'.tr,
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
            child: Padding(
              padding: EdgeInsets.fromLTRB(16, 36, 16, 20),
              child: Center(
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Color(0xff5DC161),
                          borderRadius: BorderRadius.circular(31)),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Icon(
                          Icons.done,
                          size: 25,
                          color: AppColors.WhiteColor,
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    AppText(
                      title: 'orderDelivered'.tr,
                      fontWeight: FontWeight.w600,
                    ),
                    SizedBox(height: 12),
                    AppButton(
                      buttonName: 'checkTrans'.tr,
                      isShowGradient: false,
                      borderColor: AppColors.commonColor,
                      isShowShadow: false,
                      textColor: AppColors.commonColor,
                      buttonWidth: 220,
                      buttonHeight: 36,
                      textSize: 14,
                      fontWeight: FontWeight.w400,
                      onTap: () {},
                    ),
                    SizedBox(height: 66),
                    Container(
                      decoration: BoxDecoration(
                          color: AppColors.WhiteColor,
                          borderRadius: BorderRadius.circular(8),
                          boxShadow: [
                            BoxShadow(
                              color: AppColors.blackColor.withOpacity(.05),
                              blurRadius: 4,
                              offset: Offset(0, 2),
                            )
                          ]),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(16, 10, 16, 14),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AppText(
                              title: 'orderDelivered'.tr,
                              color: AppColors.commonColor,
                              size: 16,
                              fontWeight: FontWeight.w600,
                            ),
                            SizedBox(height: 15),
                            DottedLine(
                              dashGapLength: 7,
                              dashColor: AppColors.borderColor,
                              dashLength: 7,
                            ),
                            SizedBox(height: 15),
                            Row(
                              children: [
                                Image.asset(ImageConst.cust),
                                SizedBox(width: 12),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    AppText(
                                      title: 'jackSmith'.tr,
                                      fontWeight: FontWeight.w500,
                                    ),
                                    SizedBox(height: 4),
                                    AppText(
                                      title: 'orderMinu'.tr,
                                      fontWeight: FontWeight.w500,
                                      size: 12,
                                      color: Color(0xff989898),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 24),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppText(
                          title: 'deliveryRating'.tr,
                          color: AppColors.grey3,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.star_rounded,
                              color: AppColors.greenColor,
                              size: 28,
                            ),
                            Icon(
                              Icons.star_rounded,
                              color: AppColors.greenColor,
                              size: 28,
                            ),
                            Icon(
                              Icons.star_rounded,
                              color: AppColors.greenColor,
                              size: 28,
                            ),
                            Icon(
                              Icons.star_rounded,
                              color: AppColors.greenColor,
                              size: 28,
                            ),
                            Icon(
                              Icons.star_rounded,
                              color: AppColors.greenColor,
                              size: 28,
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppText(
                          title: 'receiveStar'.tr,
                          color: AppColors.grey3,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.star_rounded,
                              color: AppColors.greenColor,
                              size: 28,
                            ),
                            Icon(
                              Icons.star_rounded,
                              color: AppColors.greenColor,
                              size: 28,
                            ),
                            Icon(
                              Icons.star_rounded,
                              color: AppColors.greenColor,
                              size: 28,
                            ),
                            Icon(
                              Icons.star_rounded,
                              color: AppColors.greenColor,
                              size: 28,
                            ),
                            Icon(
                              Icons.star_rounded,
                              color: AppColors.greenColor,
                              size: 28,
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Container(
                      decoration: BoxDecoration(
                        color: AppColors.WhiteColor,
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [
                          BoxShadow(
                            color: AppColors.blackColor.withOpacity(0.02),
                            blurRadius: 2,
                            offset: Offset(0, 4),
                          ),
                        ],
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AppText(
                            title: 'receiveCoin'.tr,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff434343),
                          ),
                          SizedBox(width: 42),
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: AppColors.commonColor),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(5, 3, 5, 3),
                              child: Row(
                                children: [
                                  SvgPicture.asset(ImageConst.vector),
                                  SizedBox(width: 4),
                                  AppText(
                                    title: '10',
                                    size: 16,
                                    fontWeight: FontWeight.w500,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 100),
                    AppButton(
                      buttonName: 'backHome'.tr,
                      onTap: () {
                        Get.toNamed(Routes.homeScreenRoute);
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
}
