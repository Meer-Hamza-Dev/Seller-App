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

class CreateProduct extends StatelessWidget {
  const CreateProduct({super.key});

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
          title: "productlists".tr,
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
                padding: const EdgeInsets.fromLTRB(16, 20, 16, 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              gradient: AppColors.commonGradient,
                              borderRadius: BorderRadius.circular(8),
                              border:
                                  Border.all(color: AppColors.transperentColor),
                              boxShadow: [
                                BoxShadow(
                                    color:
                                        AppColors.blackColor.withOpacity(0.02),
                                    blurRadius: 2,
                                    offset: Offset(0, 4)),
                              ],
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(6.5, 10, 6.5, 10),
                              child: AppText(
                                title: "newList".tr,
                                color: AppColors.WhiteColor,
                                fontWeight: FontWeight.w500,
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 11),
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                                color: AppColors.transperentColor,
                                borderRadius: BorderRadius.circular(8),
                                boxShadow: [
                                  BoxShadow(
                                      color: AppColors.blackColor
                                          .withOpacity(0.02),
                                      blurRadius: 2,
                                      offset: Offset(0, 4)),
                                ],
                                border: Border.all(color: AppColors.grey2)),
                            child: Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(6.5, 10, 6.5, 10),
                              child: AppText(
                                title: "Topselling".tr,
                                color: AppColors.grey2,
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 11),
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                                color: AppColors.transperentColor,
                                borderRadius: BorderRadius.circular(8),
                                boxShadow: [
                                  BoxShadow(
                                      color: AppColors.blackColor
                                          .withOpacity(0.02),
                                      blurRadius: 2,
                                      offset: Offset(0, 4)),
                                ],
                                border: Border.all(color: AppColors.grey2)),
                            child: Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(6.5, 10, 6.5, 10),
                              child: AppText(
                                title: "Popular".tr,
                                color: AppColors.grey2,
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    AppText(
                      title: "listName".tr,
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
                      title: "selectOfr".tr,
                      fontWeight: FontWeight.w500,
                    ),
                    SizedBox(height: 6),
                    DropdownButtonHideUnderline(
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: AppColors.borderColor),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: DropdownButton(
                            hint: Padding(
                              padding: const EdgeInsets.all(15),
                              child: AppText(
                                title: "Select".tr,
                                color: AppColors.grey1,
                                size: 13,
                              ),
                            ),
                            icon: Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Icon(
                                Icons.keyboard_arrow_down_rounded,
                                color: AppColors.blackColor,
                              ),
                            ),
                            isExpanded: true,
                            items: [],
                            onChanged: (String) {}),
                      ),
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
                    SizedBox(height: 72),
                    AppButton(
                      buttonName: "createList".tr,
                      onTap: () {
                        Get.toNamed(Routes.topSellingProduvtRoute);
                        ;
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
