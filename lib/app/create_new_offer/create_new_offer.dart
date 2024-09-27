import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:seller_app/app/add_offers/add_offers.dart';
import 'package:seller_app/routes/app_pages.dart';
import 'package:seller_app/utils/app_bars/main_appbar.dart';
import 'package:seller_app/utils/app_buttons/app_buttons.dart';
import 'package:seller_app/utils/app_colors/app_color.dart';
import 'package:seller_app/utils/app_constants/const_images.dart';
import 'package:seller_app/utils/app_text/app_text.dart';
import 'package:seller_app/utils/app_text_field.dart';

class CreateNewOffer extends StatelessWidget {
  const CreateNewOffer({super.key});

  @override
  Widget build(BuildContext context) {
    DateTime today = DateTime.now();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        surfaceTintColor: AppColors.transperentColor,
        automaticallyImplyLeading: false,
        title: MainAppBar(
          title: "newOffer".tr,
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
                padding: EdgeInsets.fromLTRB(16, 48, 16, 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppText(
                      title: "offerName".tr,
                      fontWeight: FontWeight.w500,
                    ),
                    SizedBox(height: 6),
                    appField(
                      context: context,
                      hint: "Typehere".tr,
                      border: AppColors.borderColor,
                      height: 17,
                    ),
                    SizedBox(height: 16),
                    AppText(
                      title: "offerType".tr,
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
                              title: "Select".tr,
                              color: AppColors.grey1,
                            ),
                            Icon(Icons.keyboard_arrow_down_outlined),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 16),
                    AppText(
                      title: "discValue".tr,
                      fontWeight: FontWeight.w500,
                    ),
                    SizedBox(height: 6),
                    appField(
                      context: context,
                      hint: "Typehere".tr,
                      border: AppColors.borderColor,
                      height: 17,
                    ),
                    SizedBox(height: 16),
                    AppText(
                      title: "startdate".tr,
                      fontWeight: FontWeight.w500,
                    ),
                    SizedBox(height: 6),
                    appField(
                      context: context,
                      hint: '00/00/0000',
                      suffixWidget: IconButton(
                        onPressed: () {
                          SelectDate(today);
                        },
                        icon: Icon(Icons.calendar_month_outlined),
                        color: AppColors.commonColor,
                      ),
                      border: AppColors.borderColor,
                      height: 17,
                    ),
                    SizedBox(height: 16),
                    AppText(
                      title: "endDate".tr,
                      fontWeight: FontWeight.w500,
                    ),
                    SizedBox(height: 6),
                    appField(
                      context: context,
                      hint: '00/00/0000',
                      suffixWidget: IconButton(
                        onPressed: () {
                          SelectDate(today);
                        },
                        icon: Icon(Icons.calendar_month_outlined),
                        color: AppColors.commonColor,
                      ),
                      border: AppColors.borderColor,
                      height: 17,
                    ),
                    SizedBox(height: 16),
                    AppText(
                      title: "target".tr,
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
                              title: "Select".tr,
                              color: AppColors.grey1,
                            ),
                            Icon(Icons.keyboard_arrow_down_outlined),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 16),
                    AppText(
                      title: "selectProduct".tr,
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
                              title: "Select".tr,
                              color: AppColors.grey1,
                            ),
                            Icon(Icons.keyboard_arrow_down_outlined),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 72),
                    AppButton(
                      buttonName: "createOfr".tr,
                      onTap: () {
                        Get.toNamed(Routes.discountOfferRoute);
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
