import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:flutter/services.dart';
import 'package:seller_app/app/order_status/order_status_controller.dart';
import 'package:seller_app/routes/app_pages.dart';
import 'package:seller_app/utils/app_bars/main_appbar.dart';
import 'package:seller_app/utils/app_buttons/app_buttons.dart';
import 'package:seller_app/utils/app_colors/app_color.dart';
import 'package:seller_app/utils/app_constants/const_images.dart';
import 'package:seller_app/utils/app_text/app_text.dart';

class OrderStatus extends StatelessWidget {
  const OrderStatus({super.key});

  @override
  Widget build(BuildContext context) {
    final OrderStatusController controller = OrderStatusController();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        surfaceTintColor: AppColors.transperentColor,
        automaticallyImplyLeading: false,
        title: MainAppBar(
          title: "orderStatus".tr,
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
              padding: EdgeInsets.fromLTRB(16, 70, 16, 16),
              child: Obx(() {
                return Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            gradient: AppColors.commonGradient,
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(color: AppColors.commonColor),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(3),
                            child: Icon(
                              Icons.done,
                              color: AppColors.WhiteColor,
                            ),
                          ),
                        ),
                        DottedLine(
                          direction: Axis.vertical,
                          lineLength: 125,
                          dashLength: 4,
                          dashGapLength: 5,
                          lineThickness: 2,
                          dashColor: AppColors.commonColor,
                        ),
                        Container(
                          decoration:
                              controller.selectedType.value == 'preparing'
                                  ? BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      gradient: AppColors.commonGradient,
                                      border: Border.all(
                                          color: AppColors.transperentColor,
                                          width: 2),
                                    )
                                  : BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      border: Border.all(
                                          color: AppColors.grey3, width: 2),
                                    ),
                          child: Padding(
                            padding: const EdgeInsets.all(3),
                            child: Icon(
                              Icons.done,
                              color:
                                  controller.selectedType.value == 'preparing'
                                      ? AppColors.WhiteColor
                                      : AppColors.transperentColor,
                            ),
                          ),
                        ),
                        DottedLine(
                          direction: Axis.vertical,
                          lineLength: 125,
                          dashLength: 4,
                          dashGapLength: 5,
                          lineThickness: 2,
                          dashColor:
                              controller.selectedType.value == 'preparing'
                                  ? AppColors.commonColor
                                  : AppColors.grey3,
                        ),
                        Container(
                          decoration:
                              controller.selectedType.value == 'preparing'
                                  ? BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      gradient: AppColors.commonGradient,
                                      border: Border.all(
                                          color: AppColors.transperentColor,
                                          width: 2),
                                    )
                                  : BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      border: Border.all(
                                          color: AppColors.grey3, width: 2),
                                    ),
                          child: Padding(
                            padding: const EdgeInsets.all(3),
                            child: Icon(
                              Icons.done,
                              color:
                                  controller.selectedType.value == 'preparing'
                                      ? AppColors.WhiteColor
                                      : AppColors.transperentColor,
                            ),
                          ),
                        ),
                        DottedLine(
                          direction: Axis.vertical,
                          lineLength: 125,
                          dashLength: 4,
                          dashGapLength: 5,
                          lineThickness: 2,
                          dashColor:
                              controller.selectedType.value == 'orderDeliver'
                                  ? AppColors.commonColor
                                  : AppColors.grey3,
                        ),
                        Container(
                          decoration:
                              controller.selectedType.value == 'orderDeliver'
                                  ? BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      gradient: AppColors.commonGradient,
                                      border: Border.all(
                                          color: AppColors.transperentColor,
                                          width: 2),
                                    )
                                  : BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      border: Border.all(
                                          color: AppColors.grey3, width: 2),
                                    ),
                          child: Padding(
                            padding: const EdgeInsets.all(3),
                            child: Icon(
                              Icons.done,
                              color: controller.selectedType.value ==
                                      'orderDeliver'
                                  ? AppColors.WhiteColor
                                  : AppColors.transperentColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 14),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppText(
                          title: "orderAccept".tr,
                          size: 16,
                          fontWeight: FontWeight.w600,
                          gradient: AppColors.commonGradient,
                        ),
                        SizedBox(height: 5),
                        AppText(
                          title: "youAcceptOrdr".tr,
                          size: 12,
                          color: Color(0xff828282),
                        ),
                        SizedBox(height: 5),
                        Row(
                          children: [
                            Icon(
                              Icons.timer_outlined,
                              color: AppColors.grey2,
                              size: 15,
                            ),
                            SizedBox(width: 4),
                            AppText(
                              title: '8:30 AM, Dec 2, 2023',
                              size: 12,
                              color: AppColors.grey2,
                            ),
                          ],
                        ),
                        SizedBox(height: 5),
                        AppText(
                          title: "delivPart".tr,
                          size: 12,
                          color: Color(0xff828282),
                        ),
                        SizedBox(height: 85),
                        controller.selectedType.value == 'preparing'
                            ? Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  AppText(
                                    title: "prepared".tr,
                                    size: 16,
                                    fontWeight: FontWeight.w600,
                                    color: AppColors.commonColor,
                                  ),
                                  SizedBox(height: 4),
                                  AppText(
                                    title: "orderReady".tr,
                                    size: 12,
                                    color: AppColors.grey3,
                                  ),
                                  SizedBox(height: 4),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.timer_outlined,
                                        color: AppColors.grey2,
                                        size: 15,
                                      ),
                                      SizedBox(width: 4),
                                      AppText(
                                        title: '8:30 AM, Dec 2, 2023',
                                        size: 12,
                                        color: AppColors.grey2,
                                      ),
                                    ],
                                  ),
                                ],
                              )
                            : Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  AppText(
                                    title: "preparing".tr,
                                    size: 16,
                                    fontWeight: FontWeight.w600,
                                    color: AppColors.grey3,
                                  ),
                                  SizedBox(height: 8),
                                  AppButton(
                                    buttonName: "orderPacked".tr,
                                    buttonWidth: 160, 
                                    buttonHeight: 40,
                                    textSize: 14,
                                    fontWeight: FontWeight.w400,
                                    isShowShadow: false,
                                    onTap: () {
                                      controller
                                          .updateSelectedType('preparing');
                                    },
                                  ),
                                ],
                              ),
                        SizedBox(height: 93),
                        AppText(
                          title: "handOver".tr,
                          size: 16,
                          fontWeight: FontWeight.w600,
                          color: AppColors.grey2,
                        ),
                        SizedBox(height: 8),
                        controller.selectedType.value == 'preparing'
                            ? AppButton(
                                buttonName: "orderPicked".tr,
                                buttonWidth: 140,
                                buttonHeight: 40,
                                textSize: 14,
                                fontWeight: FontWeight.w400,
                                isShowShadow: false,
                                onTap: () {},
                              )
                            : SizedBox(height: 0),
                        SizedBox(height: 132),
                        GestureDetector(
                          onTap: () {
                            controller.updateSelectedType('orderDeliver');
                            Get.toNamed(Routes.orderDeliverReviewRoute);
                          },
                          child: AppText(
                            title: "orderDelivered".tr,
                            size: 16,
                            fontWeight: FontWeight.w600,
                            color: AppColors.grey2,
                          ),
                        ),
                      ],
                    ),
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
