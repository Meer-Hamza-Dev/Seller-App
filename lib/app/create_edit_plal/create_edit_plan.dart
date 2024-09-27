import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:seller_app/app/setting/setting.dart';
import 'package:seller_app/utils/app_bars/main_appbar.dart';
import 'package:seller_app/utils/app_buttons/app_buttons.dart';
import 'package:seller_app/utils/app_colors/app_color.dart';
import 'package:seller_app/utils/app_constants/const_images.dart';
import 'package:seller_app/utils/app_text/app_text.dart';
import 'package:seller_app/utils/app_text_field.dart';
import 'package:seller_app/utils/bottom_sheets/bottom_sheet.dart';

class CreateEditPlan extends StatelessWidget {
  const CreateEditPlan({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        surfaceTintColor: AppColors.transperentColor,

        automaticallyImplyLeading: false,
        title: MainAppBar(
          title: "editPlan".tr,
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
          Background(),
          SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.fromLTRB(16, 20, 16, 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppText(
                      title: "planName".tr,
                      fontWeight: FontWeight.w500,
                    ),
                    SizedBox(height: 6),
                    appField(
                      context: context,
                      hint: "Typehere".tr,
                    ),
                    SizedBox(height: 16),
                    AppText(
                      title: "description".tr,
                      fontWeight: FontWeight.w500,
                    ),
                    SizedBox(height: 6),
                    appField(
                      context: context,
                      hint: "Typehere".tr,
                      max: 5,
                    ),
                    SizedBox(height: 16),
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AppText(
                                title: "price".tr,
                                fontWeight: FontWeight.w500,
                              ),
                              SizedBox(height: 8),
                              appField(
                                context: context,
                                hint: "Typehere".tr,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 18),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AppText(
                                title: "billingCycle".tr,
                                fontWeight: FontWeight.w500,
                              ),
                              SizedBox(height: 8),
                              DropdownButtonHideUnderline(
                                child: Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: AppColors.borderColor),
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
                                      padding: const EdgeInsets.only(right: 5),
                                      child: Icon(
                                        Icons.keyboard_arrow_down_rounded,
                                        color: AppColors.blackColor,
                                      ),
                                    ),
                                    isExpanded: true,
                                    items: [],
                                    onChanged: (String) {},
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 16),
                    AppText(
                      title: "meals".tr,
                      fontWeight: FontWeight.w500,
                    ),
                    SizedBox(height: 6),
                    EditBasicPlan(
                      mealText1: "breakfast".tr,
                      mealText2: "lunch".tr,
                      mealText3: "dinner".tr,
                      btnText: "edirMeal".tr,
                      onTap: () {
                        Get.bottomSheet(
                          isScrollControlled: true,
                          EditMeal(),
                        );
                      },
                    ),
                    SizedBox(height: 16),
                    AppText(
                      title: "customizationOptions".tr,
                      fontWeight: FontWeight.w500,
                    ),
                    SizedBox(height: 6),
                    EditBasicPlan(
                      mealText1: "butter".tr,
                      mealText2: "curd".tr,
                      mealText3: "coffee".tr,
                      btnText: "editOption".tr,
                      onTap: () {
                        Get.bottomSheet(
                          isScrollControlled: true,
                          EditMeal(),
                        );
                      },
                    ),
                    SizedBox(height: 16),
                    AppText(
                      title: "uploadImg".tr,
                      fontWeight: FontWeight.w500,
                    ),
                    SizedBox(height: 6),
                    Container(
                      width: Get.width,
                      decoration: BoxDecoration(
                        border: Border.all(color: AppColors.borderColor),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 44, 0, 44),
                        child: Icon(Icons.add),
                      ),
                    ),
                    SizedBox(height: 16),
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: AppColors.blackColor,
                            borderRadius: BorderRadius.circular(3),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(2),
                            child: Icon(
                              Icons.done,
                              color: AppColors.WhiteColor,
                              size: 18,
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: 'Yes, I agree to the',
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Color(0xff3E444D),
                                ),
                              ),
                              TextSpan(
                                text: ' Terms & conditions ',
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Color(0xff2F80ED),
                                ),
                              ),
                              TextSpan(
                                text: ' and  ',
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Color(0xff3E444D),
                                ),
                              ),
                              TextSpan(
                                text: 'Privacy Policy',
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Color(0xff2F80ED),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 48),
                    AppButton(
                      buttonName: "createPlan".tr,
                      onTap: () {
                        Get.bottomSheet(planCreated());
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

Container EditBasicPlan({
  required String mealText1,
  required String mealText2,
  required String mealText3,
  required String btnText,
  String? mealText4,
  String? mealText,
  String? anotherMeal,
  String? priceText,
  required VoidCallback onTap,
  Widget? column,
}) {
  return Container(
    decoration: BoxDecoration(
      color: AppColors.WhiteColor,
      borderRadius: BorderRadius.circular(8),
      boxShadow: [
        BoxShadow(
          color: AppColors.blackColor.withOpacity(.02),
          blurRadius: 2,
          offset: Offset(0, 4),
        ),
      ],
    ),
    child: Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (mealText != null && mealText.isNotEmpty)
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: AppText(
                title: mealText,
                size: 16,
                fontWeight: FontWeight.w600,
                color: AppColors.grey3,
              ),
            ),
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppText(
                title: mealText1,
                color: AppColors.grey2,
                fontWeight: FontWeight.w500,
              ),
              Row(
                children: [
                  if (priceText != null && priceText.isNotEmpty)
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: AppText(title: priceText),
                    ),
                  Container(
                    decoration: BoxDecoration(
                      color: AppColors.greenColor,
                      borderRadius: BorderRadius.circular(3),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(2),
                      child: Icon(
                        Icons.done,
                        color: AppColors.WhiteColor,
                        size: 18,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 19),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppText(
                title: mealText2,
                color: AppColors.grey2,
                fontWeight: FontWeight.w500,
              ),
              Row(
                children: [
                  if (priceText != null && priceText.isNotEmpty)
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: AppText(title: priceText),
                    ),
                  Container(
                    decoration: BoxDecoration(
                      color: AppColors.greenColor,
                      borderRadius: BorderRadius.circular(3),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(2),
                      child: Icon(
                        Icons.done,
                        color: AppColors.WhiteColor,
                        size: 18,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 19),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppText(
                title: mealText3,
                color: AppColors.grey2,
                fontWeight: FontWeight.w500,
              ),
              Row(
                children: [
                  if (priceText != null && priceText.isNotEmpty)
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: AppText(title: priceText),
                    ),
                  Container(
                    decoration: BoxDecoration(
                      color: AppColors.greenColor,
                      borderRadius: BorderRadius.circular(3),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(2),
                      child: Icon(
                        Icons.done,
                        color: AppColors.WhiteColor,
                        size: 18,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 19),
          if (mealText4 != null && mealText4.isNotEmpty)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppText(
                  title: mealText4,
                  color: AppColors.grey2,
                  fontWeight: FontWeight.w500,
                ),
                Row(
                  children: [
                    if (priceText != null && priceText.isNotEmpty)
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: AppText(title: priceText),
                      ),
                    Container(
                      decoration: BoxDecoration(
                        color: AppColors.greenColor,
                        borderRadius: BorderRadius.circular(3),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(2),
                        child: Icon(
                          Icons.done,
                          color: AppColors.WhiteColor,
                          size: 18,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          if (column != null) column,
          SizedBox(height: 20),
          AppButton(
            buttonName: btnText,
            isShowGradient: false,
            isShowShadow: false,
            borderColor: AppColors.grey3,
            textColor: AppColors.grey3,
            onTap: onTap,
          ),
        ],
      ),
    ),
  );
}
