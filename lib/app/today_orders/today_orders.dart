import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:seller_app/app/home/homePage.dart';
import 'package:seller_app/app/today_orders/today_orders_controller.dart';
import 'package:seller_app/utils/app_bars/main_appbar.dart';
import 'package:seller_app/utils/app_buttons/app_buttons.dart';
import 'package:seller_app/utils/app_colors/app_color.dart';
import 'package:seller_app/utils/app_constants/const_images.dart';
import 'package:seller_app/utils/app_text/app_text.dart';

class TodayOrders extends StatelessWidget {
  const TodayOrders({super.key});

  @override
  Widget build(BuildContext context) {
    final TodayOrdersController controller = TodayOrdersController();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        surfaceTintColor: AppColors.transperentColor,
        automaticallyImplyLeading: false,
        title: MainAppBar(
          title: "TodayOrders".tr,
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
              padding: EdgeInsets.fromLTRB(16, 20, 16, 16),
              child: Obx(() {
                return Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              controller.updateSelectedType('newOrder');
                            },
                            child: Container(
                              decoration: controller.selectedType.value ==
                                      'newOrder'
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
                                              .withOpacity(0.03),
                                          blurRadius: 2,
                                          offset: Offset(0, 4),
                                        ),
                                      ],
                                    ),
                              child: Padding(
                                padding: const EdgeInsets.all(12),
                                child: AppText(
                                  title: "Neworders".tr,
                                  fontWeight: FontWeight.w500,
                                  color: controller.selectedType.value ==
                                          'newOrder'
                                      ? AppColors.WhiteColor
                                      : Color(0xff393939),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 14),
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              controller.updateSelectedType('activeOrder');
                            },
                            child: Container(
                              decoration: controller.selectedType.value ==
                                      'activeOrder'
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
                                  color: controller.selectedType.value ==
                                          'activeOrder'
                                      ? AppColors.WhiteColor
                                      : Color(0xff393939),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 14),
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              controller.updateSelectedType('deliver');
                            },
                            child: Container(
                              decoration: controller.selectedType.value ==
                                      'deliver'
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
                                  color:
                                      controller.selectedType.value == 'deliver'
                                          ? AppColors.WhiteColor
                                          : Color(0xff393939),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    controller.selectedType.value == 'newOrder'
                        ? Column(
                            children: [
                              NewOrders(
                                ImagePath: ImageConst.vagetable,
                                text: "Vegetables".tr,
                                paymentText: "Paymentconfirmed".tr,
                                outBtnText: "Decline".tr,
                                btnText: "Review".tr,
                              ),
                              SizedBox(height: 20),
                              NewOrders(
                                ImagePath: ImageConst.milk,
                                text: "Milk".tr,
                                paymentText: "Paymentconfirmed".tr,
                                outBtnText: "Decline".tr,
                                btnText: "Review".tr,
                              ),
                              SizedBox(height: 20),
                              NewOrders(
                                ImagePath: ImageConst.vagetable,
                                text: "Vegetables".tr,
                                paymentText: "Paymentconfirmed".tr,
                                outBtnText: "Decline".tr,
                                btnText: "Review".tr,
                              ),
                              SizedBox(height: 20),
                              NewOrders(
                                ImagePath: ImageConst.milk,
                                text: "Milk".tr,
                                paymentText: "Paymentconfirmed".tr,
                                outBtnText: "Decline".tr,
                                btnText: "Review".tr,
                              ),
                            ],
                          )
                        : SizedBox(),
                    controller.selectedType.value == 'activeOrder'
                        ? Column(
                            children: [
                              ActiveOrder(
                                ImagePath: ImageConst.vagetable,
                                text: "Vegetables".tr,
                                paymentText: "Paymentconfirmed".tr,
                              ),
                              SizedBox(height: 20),
                              ActiveOrder(
                                ImagePath: ImageConst.milk,
                                text: "Milk".tr,
                                paymentText: "Paymentconfirmed".tr,
                              ),
                              SizedBox(height: 20),
                              ActiveOrder(
                                ImagePath: ImageConst.vagetable,
                                text: "Vegetables".tr,
                                paymentText: "Paymentconfirmed".tr,
                              ),
                              SizedBox(height: 20),
                              ActiveOrder(
                                ImagePath: ImageConst.milk,
                                text: "Milk".tr,
                                paymentText: "Paymentconfirmed".tr,
                              ),
                            ],
                          )
                        : SizedBox(),
                    controller.selectedType.value == 'deliver'
                        ? Column(
                            children: [
                              NewOrders(
                                ImagePath: ImageConst.vagetable,
                                text: "Vegetables".tr,
                                paymentText: "transcation".tr,
                                outBtnText: "detail".tr,
                                btnText: "rating".tr,
                              ),
                              SizedBox(height: 20),
                              NewOrders(
                                ImagePath: ImageConst.vagetable,
                                text: "Vegetables".tr,
                                paymentText: "transcation".tr,
                                outBtnText: "detail".tr,
                                btnText: "rating".tr,
                              ),
                              SizedBox(height: 20),
                              NewOrders(
                                ImagePath: ImageConst.vagetable,
                                text: "Vegetables".tr,
                                paymentText: "transcation".tr,
                                outBtnText: "detail".tr,
                                btnText: "rating".tr,
                              ),
                              SizedBox(height: 20),
                              NewOrders(
                                ImagePath: ImageConst.vagetable,
                                text: "Vegetables".tr,
                                paymentText: "transcation".tr,
                                outBtnText: "detail".tr,
                                btnText: "rating".tr,
                              ),
                            ],
                          )
                        : SizedBox(),
                  ],
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}

Container ActiveOrder({
  required String ImagePath,
  required String text,
  required String paymentText,
}) {
  return Container(
    decoration: BoxDecoration(
      color: Color(0xffFAFAFA),
      boxShadow: [
        BoxShadow(
          color: AppColors.blackColor.withOpacity(0.05),
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
              AppButton(
                buttonHeight: 34,
                buttonWidth: 240,
                textSize: 14,
                fontWeight: FontWeight.w500,
                isShowShadow: false,
                buttonName: "assignDelivery".tr,
                onTap: () {},
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
