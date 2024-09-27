import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:seller_app/app/product_view/product_view_controller.dart';
import 'package:seller_app/routes/app_pages.dart';
import 'package:seller_app/utils/app_bars/main_appbar.dart';
import 'package:seller_app/utils/app_buttons/app_buttons.dart';
import 'package:seller_app/utils/app_colors/app_color.dart';
import 'package:seller_app/utils/app_constants/const_images.dart';
import 'package:seller_app/utils/app_text/app_text.dart';

class ProductView extends StatelessWidget {
  const ProductView({super.key});

  @override
  Widget build(BuildContext context) {
    final ProductViewController controller = ProductViewController();
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        surfaceTintColor: AppColors.transperentColor,
        backgroundColor: AppColors.transperentColor,
        title: MainAppBar(
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
                padding: EdgeInsets.fromLTRB(16, 32, 16, 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(child: Image.asset(ImageConst.bigAnnar)),
                    SizedBox(height: 32),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AppText(
                              title: 'pomegranate'.tr,
                              size: 24,
                              fontWeight: FontWeight.w600,
                              color: AppColors.itemNameClor,
                            ),
                            SizedBox(height: 4),
                            AppText(
                              title: 'calories'.tr,
                              size: 12,
                              fontWeight: FontWeight.w500,
                              color: AppColors.greyMain,
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: AppColors.commonColor.withOpacity(.32),
                                borderRadius: BorderRadius.circular(2),
                              ),
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(4, 2.5, 4, 2.5),
                                child: Row(
                                  children: [
                                    AppText(
                                      title: '4.5',
                                      size: 12,
                                      color: AppColors.commonColor,
                                      fontWeight: FontWeight.w600,
                                    ),
                                    SizedBox(width: 2),
                                    Icon(
                                      Icons.star,
                                      color: AppColors.commonColor,
                                      size: 10,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(width: 4),
                            AppText(
                              title: 'reviews'.tr,
                              size: 12,
                              fontWeight: FontWeight.w500,
                              color: AppColors.greyMain,
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    AppButton(
                      buttonName: 'Topselling'.tr,
                      isShowShadow: false,
                      buttonWidth: 110,
                      buttonHeight: 34,
                      fontWeight: FontWeight.w500,
                      onTap: () {Get.toNamed(Routes.topSellingProduvtRoute);},
                    ),
                    SizedBox(height: 20),
                    AppText(
                      title: 'topSelDes'.tr,
                      color: AppColors.grey1,
                    ),
                    SizedBox(height: 20),
                    AppText(
                      title: 'wishlisted'.tr,
                      size: 24,
                      fontWeight: FontWeight.w600,
                      color: AppColors.itemNameClor,
                    ),
                    SizedBox(height: 8),
                    AppText(
                      title: 'peoplwWishlist'.tr,
                      size: 12,
                      fontWeight: FontWeight.w500,
                      color: AppColors.grey2,
                    ),
                    SizedBox(height: 20),
                    AppText(
                      title: 'offerActive'.tr,
                      size: 24,
                      fontWeight: FontWeight.w600,
                      color: AppColors.itemNameClor,
                    ),
                    SizedBox(height: 20),
                    Obx(() {
                      return Column(
                        children: [
                          controller.selectedType.value == 'offer'
                              ? Column(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        color: AppColors.WhiteColor,
                                        boxShadow: [
                                          BoxShadow(
                                            color: AppColors.blackColor
                                                .withOpacity(.02),
                                            blurRadius: 2,
                                            offset: Offset(0, 4),
                                          ),
                                        ],
                                        borderRadius: BorderRadius.circular(16),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            16, 14, 16, 14),
                                        child: Row(
                                          children: [
                                            Container(
                                              decoration: BoxDecoration(
                                                color: Color(0xffEEEEEE),
                                                borderRadius:
                                                    BorderRadius.circular(40),
                                              ),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(10),
                                                child: SvgPicture.asset(
                                                    ImageConst.icon),
                                              ),
                                            ),
                                            SizedBox(width: 20),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                AppText(
                                                  title: 'holidayOffer'.tr,
                                                  size: 16,
                                                  fontWeight: FontWeight.w600,
                                                  color: AppColors.itemNameClor,
                                                ),
                                                AppText(
                                                  title: 'minimumOrder'.tr,
                                                  size: 12,
                                                  fontWeight: FontWeight.w400,
                                                  color: AppColors.grey2,
                                                ),
                                                SizedBox(height: 5),
                                                AppText(
                                                  title: 'off'.tr,
                                                  size: 18,
                                                  fontWeight: FontWeight.w600,
                                                  gradient:
                                                      AppColors.commonGradient,
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 60),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: AppButton(
                                            buttonName: 'delete'.tr,
                                            isShowGradient: false,
                                            textColor: AppColors.grey2,
                                            textSize: 16,
                                            fontWeight: FontWeight.w400,
                                            buttonHeight: 47,
                                            isShowShadow: false,
                                            onTap: () {},
                                          ),
                                        ),
                                        SizedBox(width: 18),
                                        Expanded(
                                          child: AppButton(
                                            buttonName: 'edit'.tr,
                                            isShowGradient: false,
                                            buttonHeight: 47,
                                            textColor: AppColors.commonColor,
                                            textSize: 16,
                                            isShowShadow: false,
                                            borderColor: AppColors.commonColor,
                                            fontWeight: FontWeight.w500,
                                            onTap: () {},
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                )
                              : Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    AppText(
                                      title: 'notApply'.tr,
                                      size: 16,
                                      fontWeight: FontWeight.w500,
                                      color: AppColors.grey3,
                                    ),
                                    SizedBox(height: 20),
                                    AppButton(
                                      buttonName: 'applyOffer'.tr,
                                      onTap: () {
                                        controller.updateSelectedType('offer');
                                        // Get.toNamed(Routes.addOffersRoute);
                                      },
                                    ),
                                  ],
                                )
                        ],
                      );
                    })
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
