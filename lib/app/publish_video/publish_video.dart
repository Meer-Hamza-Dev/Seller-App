import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:seller_app/routes/app_pages.dart';
import 'package:seller_app/utils/app_bars/main_appbar.dart';
import 'package:seller_app/utils/app_buttons/app_buttons.dart';
import 'package:seller_app/utils/app_colors/app_color.dart';
import 'package:seller_app/utils/app_constants/const_images.dart';
import 'package:seller_app/utils/app_text/app_text.dart';
import 'package:seller_app/utils/app_text_field.dart';

class PublishVideo extends StatelessWidget {
  const PublishVideo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        surfaceTintColor: AppColors.transperentColor,
        automaticallyImplyLeading: false,
        title: MainAppBar(
          title: "newVideo".tr,
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
                padding: const EdgeInsets.fromLTRB(16, 24, 16, 20),
                child: Column(
                  children: [
                    Center(
                      child: Image.asset(
                        ImageConst.video,
                        width: 200,
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: AppColors.borderColor,
                          ),
                        ),
                      ),
                      child: appField(
                        context: context,
                        isBorderLine: false,
                        hint: "writeCaption".tr,
                        hintColor: AppColors.greyMain,
                      ),
                    ),
                    SizedBox(height: 12),
                    Row(
                      children: [
                        Icon(Icons.location_on_outlined),
                        SizedBox(width: 9),
                        AppText(
                          title: "addLocation".tr,
                          size: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppText(
                          title: "selectDay".tr,
                          fontWeight: FontWeight.w500,
                          color: AppColors.grey3,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: AppColors.borderColor),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(36, 9, 36, 9),
                            child: AppText(
                              title: "fivedays".tr,
                              fontWeight: FontWeight.w500,
                              color: AppColors.grey3,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppText(
                          title: "selectBudget".tr,
                          fontWeight: FontWeight.w500,
                          color: AppColors.grey3,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: AppColors.borderColor),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(36, 9, 36, 9),
                            child: AppText(
                              title: r'$120.00',
                              fontWeight: FontWeight.w500,
                              color: AppColors.grey3,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 23),
                    RichText(
                      text: TextSpan(
                        text: "walletBalance".tr,
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            color: AppColors.grey2,
                          ),
                        ),
                        children: [
                          TextSpan(
                            text: r' $1200.00',
                            style: TextStyle(
                              color: AppColors.commonColor,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 72),
                    Row(
                      children: [
                        AppButton(
                          buttonName: "saveDraft".tr,
                          isShowGradient: false,
                          isShowShadow: false,
                          borderColor: AppColors.grey2,
                          textColor: AppColors.grey2,
                          fontWeight: FontWeight.w600,
                          textSize: 16,
                          buttonWidth: 136,
                          onTap: () {},
                        ),
                        Spacer(),
                        AppButton(
                          buttonName: "payPublish".tr,
                          fontWeight: FontWeight.w600,
                          textSize: 16,
                          buttonWidth: 210,
                          onTap: () {
                            Get.toNamed(Routes.videoAdvertisementRoute);
                          },
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
