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

class ReviewOrder extends StatelessWidget {
  const ReviewOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        surfaceTintColor: AppColors.transperentColor,
        automaticallyImplyLeading: false,
        title: MainAppBar(
          title: "reviewOrder".tr,
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
                padding: const EdgeInsets.fromLTRB(16, 30, 16, 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppText(
                      title: "orderFrom".tr,
                      fontWeight: FontWeight.w500,
                    ),
                    SizedBox(height: 16),
                    Container(
                      decoration: BoxDecoration(
                        color: AppColors.WhiteColor,
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [
                          BoxShadow(
                            color: AppColors.blackColor.withOpacity(.05),
                            blurRadius: 2,
                            offset: Offset(0, 4),
                          )
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(16, 25.5, 16, 25.5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            AppText(
                              title: "jackSmith".tr,
                              size: 16,
                              fontWeight: FontWeight.w500,
                            ),
                            Row(
                              children: [
                                SvgPicture.asset(ImageConst.location),
                                SizedBox(width: 6),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    AppText(
                                      title: "location".tr,
                                      fontWeight: FontWeight.w600,
                                      color: AppColors.grey3,
                                    ),
                                    SizedBox(height: 2),
                                    AppText(
                                      title: "address".tr,
                                      size: 10,
                                      color: AppColors.grey2,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    OrderedItems(
                      text: "pomegranate".tr,
                      imagePath: ImageConst.annar,
                    ),
                    SizedBox(height: 16),
                    OrderedItems(
                      text: "greenApple".tr,
                      imagePath: ImageConst.apple,
                    ),
                    SizedBox(height: 16),
                    OrderedItems(
                      text: "pomegranate".tr,
                      imagePath: ImageConst.annar,
                    ),
                    SizedBox(height: 16),
                    OrderedItems(
                      text: "greenApple".tr,
                      imagePath: ImageConst.apple,
                    ),
                    SizedBox(height: 16),
                    OrderedItems(
                      text: "pomegranate".tr,
                      imagePath: ImageConst.annar,
                    ),
                    SizedBox(height: 16),
                    AppText(
                      title: "totalBill".tr,
                      size: 20,
                      fontWeight: FontWeight.w600,
                      color: AppColors.itemNameClor,
                    ),
                    SizedBox(height: 18),
                    Container(
                      decoration: BoxDecoration(
                          color: AppColors.WhiteColor,
                          borderRadius: BorderRadius.circular(8),
                          boxShadow: [
                            BoxShadow(
                              color: AppColors.blackColor.withOpacity(.16),
                              blurRadius: 16,
                              offset: Offset(0, 4),
                            ),
                          ]),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(16, 20, 16, 20),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                AppText(
                                  title: "subTotal".tr,
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.grey3,
                                ),
                                AppText(
                                  title: r'$23.94',
                                  size: 16,
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.grey3,
                                ),
                              ],
                            ),
                            SizedBox(height: 20),
                            DottedLine(
                              dashColor: AppColors.borderColor,
                              dashLength: 7,
                              dashGapLength: 7,
                            ),
                            SizedBox(height: 20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                AppText(
                                  title: "pst".tr,
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.grey3,
                                ),
                                AppText(
                                  title: r'$0.56',
                                  size: 16,
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.grey3,
                                ),
                              ],
                            ),
                            SizedBox(height: 20),
                            DottedLine(
                              dashColor: AppColors.borderColor,
                              dashLength: 7,
                              dashGapLength: 7,
                            ),
                            SizedBox(height: 20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                AppText(
                                  title: "gst".tr,
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.grey3,
                                ),
                                AppText(
                                  title: r'$0.40',
                                  size: 16,
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.grey3,
                                ),
                              ],
                            ),
                            SizedBox(height: 20),
                            DottedLine(
                              dashColor: AppColors.borderColor,
                              dashLength: 7,
                              dashGapLength: 7,
                            ),
                            SizedBox(height: 20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                AppText(
                                  title: "total".tr,
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.grey3,
                                ),
                                AppText(
                                  title: r'$24.90',
                                  size: 16,
                                  fontWeight: FontWeight.w600,
                                  gradient: AppColors.commonGradient,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 39),
                    AppButton(
                      buttonName: "acceptOrder".tr,
                      onTap: () {
                        Get.bottomSheet(
                          Container(
                            height: Get.height * .37,
                            decoration: BoxDecoration(
                              color: AppColors.WhiteColor,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(24),
                                topRight: Radius.circular(24),
                              ),
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(16, 10, 16, 40),
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
                                    title: "orderAccept".tr,
                                    fontWeight: FontWeight.w600,
                                    size: 19,
                                    color: AppColors.grey3,
                                  ),
                                  SizedBox(height: 3),
                                  AppText(
                                    title: "keepUpdate".tr,
                                    size: 12,
                                    color: Color(0xff828282),
                                    textAlign: TextAlign.center,
                                    height: 1.5,
                                  ),
                                  SizedBox(height: 48),
                                  AppButton(
                                    buttonName: "prepareOrder".tr,
                                    onTap: () {
                                      Get.back();
                                      Get.toNamed(Routes.orderStatusRoute);
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                    SizedBox(height: 32),
                    Center(
                      child: TextButton(
                        onPressed: () {},
                        child: AppText(
                          title: "cancel".tr,
                          size: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
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

  Widget OrderedItems({required String text, required String imagePath}) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.WhiteColor,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: AppColors.blackColor.withOpacity(.05),
            blurRadius: 2,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 12, 19, 12),
        child: Row(
          children: [
            Image.asset(imagePath, height: 70),
            SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppText(
                    title: text,
                    fontWeight: FontWeight.w600,
                    size: 16,
                    color: AppColors.itemNameClor,
                  ),
                  SizedBox(height: 14),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Color(0xffFFCCCC),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 4, vertical: 5),
                          child: AppText(
                            title: '1 KG',
                            color: AppColors.commonColor,
                            size: 12,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      AppText(
                        title: "cost".tr,
                        size: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
