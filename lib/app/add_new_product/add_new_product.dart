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
import 'package:seller_app/utils/app_text_field.dart';

class AddNewProduct extends StatelessWidget {
  const AddNewProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        surfaceTintColor: AppColors.transperentColor,
        automaticallyImplyLeading: false,
        title: MainAppBar(
          title: 'addProduct'.tr,
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
                padding: EdgeInsets.fromLTRB(16, 48, 16, 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppText(
                      title: 'productName'.tr,
                      fontWeight: FontWeight.w500,
                    ),
                    SizedBox(height: 6),
                    appField(
                      context: context,
                      hint: 'Typehere'.tr,
                      border: AppColors.borderColor,
                    ),
                    SizedBox(height: 16),
                    AppText(
                      title: 'productDes'.tr,
                      fontWeight: FontWeight.w500,
                    ),
                    SizedBox(height: 6),
                    appField(
                      context: context,
                      hint: 'Typehere'.tr,
                      border: AppColors.borderColor,
                      max: 4,
                    ),
                    SizedBox(height: 16),
                    AppText(
                      title: 'countryOrigin'.tr,
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
                              title: 'category'.tr,
                              color: AppColors.grey1,
                            ),
                            Icon(Icons.keyboard_arrow_down_outlined),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 16),
                    AppText(
                      title: 'category'.tr,
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
                              title: 'category'.tr,
                              color: AppColors.grey1,
                            ),
                            Icon(Icons.keyboard_arrow_down_outlined),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 16),
                    AppText(
                      title: 'subCategory'.tr,
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
                              title: 'Subcategoryname'.tr,
                              color: AppColors.grey1,
                            ),
                            Icon(Icons.keyboard_arrow_down_outlined),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AppText(
                              title: 'retailPrice'.tr,
                              fontWeight: FontWeight.w500,
                            ),
                            SizedBox(height: 6),
                            Container(
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: AppColors.borderColor),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(20, 14, 110, 14),
                                child: AppText(
                                  title: r'$20.00',
                                  color: AppColors.grey1,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AppText(
                              title: 'wholeSalePrice'.tr,
                              fontWeight: FontWeight.w500,
                            ),
                            SizedBox(height: 6),
                            Container(
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: AppColors.borderColor),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(20, 14, 110, 14),
                                child: AppText(
                                  title: r'$15.00',
                                  color: AppColors.grey1,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AppText(
                              title: 'markup'.tr,
                              fontWeight: FontWeight.w500,
                            ),
                            SizedBox(height: 6),
                            Container(
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: AppColors.borderColor),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(20, 14, 130, 14),
                                child: AppText(
                                  title: '20%',
                                  color: AppColors.grey1,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AppText(
                              title: 'tax'.tr,
                              fontWeight: FontWeight.w500,
                            ),
                            SizedBox(height: 6),
                            Container(
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: AppColors.borderColor),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(20, 11, 20, 11),
                                child: Row(
                                  children: [
                                    AppText(
                                      title: r'$15.00',
                                      color: AppColors.grey1,
                                    ),
                                    SizedBox(width: 66),
                                    Icon(Icons.keyboard_arrow_down),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 19),
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
                                  title: 'subTotal'.tr,
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.grey3,
                                ),
                                AppText(
                                  title: r'$20.00',
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
                                  title: 'gstPerc'.tr,
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.grey3,
                                ),
                                AppText(
                                  title: r'$1.00',
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
                                  title: 'total'.tr,
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.grey3,
                                ),
                                AppText(
                                  title: r'$21.00',
                                  size: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 19),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AppText(
                              title: 'quantity'.tr,
                              fontWeight: FontWeight.w500,
                            ),
                            SizedBox(height: 6),
                            Container(
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: AppColors.borderColor),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(20, 14, 110, 14),
                                child: AppText(
                                  title: '5000',
                                  color: AppColors.grey1,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AppText(
                              title: 'reorder'.tr,
                              fontWeight: FontWeight.w500,
                            ),
                            SizedBox(height: 6),
                            Container(
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: AppColors.borderColor),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(20, 14, 110, 14),
                                child: AppText(
                                  title: '2000',
                                  color: AppColors.grey1,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 19),
                    AppText(
                      title: 'uploadImage'.tr,
                      fontWeight: FontWeight.w500,
                    ),
                    SizedBox(height: 6),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: AppColors.borderColor),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: Container(
                          decoration: BoxDecoration(
                            color: AppColors.WhiteColor,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(12),
                                  child: SvgPicture.asset(ImageConst.img),
                                ),
                                SvgPicture.asset(ImageConst.img),
                                Icon(Icons.add, size: 30),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 54),
                    AppButton(
                      buttonName: 'next'.tr,
                      onTap: () {
                        Get.toNamed(Routes.addOffersRoute);
                      },
                    )
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
