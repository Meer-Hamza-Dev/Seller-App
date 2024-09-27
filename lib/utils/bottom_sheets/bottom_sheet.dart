import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seller_app/app/create_edit_plal/create_edit_plan.dart';
import 'package:seller_app/routes/app_pages.dart';
import 'package:seller_app/utils/app_buttons/app_buttons.dart';
import 'package:seller_app/utils/app_colors/app_color.dart';
import 'package:seller_app/utils/app_text/app_text.dart';
import 'package:seller_app/utils/app_text_field.dart';

Widget storeHours() {
  return Container(
    height: Get.height * .86,
    decoration: BoxDecoration(
      color: Color(0xffFCFCFC),
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(20),
        topRight: Radius.circular(20),
      ),
    ),
    child: SafeArea(
      minimum: EdgeInsets.fromLTRB(16, 5, 16, 20),
      child: Column(
        children: [
          Container(
            height: 5,
            width: 60,
            decoration: BoxDecoration(
              color: AppColors.grey1,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          SizedBox(height: 35),
          AppText(
            title: "storeHours".tr,
            size: 20,
            fontWeight: FontWeight.w600,
            color: Color(0xff333333),
          ),
          SizedBox(height: 48),
          Container(
            decoration: BoxDecoration(
              color: AppColors.WhiteColor,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          gradient: AppColors.commonGradient,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(8, 9, 8, 9),
                          child: AppText(
                            title: "mon".tr,
                            textAlign: TextAlign.center,
                            color: AppColors.WhiteColor,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      SizedBox(width: 16),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(3),
                          child: Container(
                            height: 10,
                            width: 10,
                            decoration: BoxDecoration(
                              color: AppColors.blackColor,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 8),
                      AppText(
                        title: "opened".tr,
                        fontWeight: FontWeight.w600,
                      ),
                      SizedBox(width: 20),
                      Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      SizedBox(width: 8),
                      AppText(
                        title: "closed".tr,
                        fontWeight: FontWeight.w600,
                      ),
                      SizedBox(width: 79),
                      Icon(Icons.keyboard_arrow_up, size: 27),
                    ],
                  ),
                  SizedBox(height: 19),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AppText(
                            title: "opening".tr,
                            fontWeight: FontWeight.w500,
                          ),
                          SizedBox(height: 6),
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: AppColors.borderColor),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(20, 10, 20, 10),
                              child: AppText(
                                title: '10:00 AM',
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 12),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AppText(
                            title: "closing".tr,
                            fontWeight: FontWeight.w500,
                          ),
                          SizedBox(height: 6),
                          Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  border:
                                      Border.all(color: AppColors.borderColor),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(20, 10, 20, 10),
                                  child: AppText(
                                    title: '11:00 PM',
                                  ),
                                ),
                              ),
                              SizedBox(width: 12),
                              AppButton(
                                buttonName: "Update".tr,
                                buttonHeight: 36,
                                buttonWidth: 120,
                                fontWeight: FontWeight.w500,
                                isShowShadow: false,
                                onTap: () {},
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 14),
          Container(
            decoration: BoxDecoration(
              color: AppColors.WhiteColor,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          gradient: AppColors.commonGradient,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(8, 9, 8, 9),
                          child: AppText(
                            title: "mon".tr,
                            textAlign: TextAlign.center,
                            color: AppColors.WhiteColor,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      SizedBox(width: 16),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(3),
                          child: Container(
                            height: 10,
                            width: 10,
                            decoration: BoxDecoration(
                              color: AppColors.blackColor,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 8),
                      AppText(
                        title: "opened".tr,
                        fontWeight: FontWeight.w600,
                      ),
                      SizedBox(width: 20),
                      Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      SizedBox(width: 8),
                      AppText(
                        title: "closed".tr,
                        fontWeight: FontWeight.w600,
                      ),
                      SizedBox(width: 79),
                      Icon(Icons.keyboard_arrow_down, size: 27),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 14),
          Container(
            decoration: BoxDecoration(
              color: AppColors.WhiteColor,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          gradient: AppColors.commonGradient,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(8, 9, 8, 9),
                          child: AppText(
                            title: "mon".tr,
                            textAlign: TextAlign.center,
                            color: AppColors.WhiteColor,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      SizedBox(width: 16),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(3),
                          child: Container(
                            height: 10,
                            width: 10,
                            decoration: BoxDecoration(
                              color: AppColors.blackColor,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 8),
                      AppText(
                        title: "opened".tr,
                        fontWeight: FontWeight.w600,
                      ),
                      SizedBox(width: 20),
                      Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      SizedBox(width: 8),
                      AppText(
                        title: "closed".tr,
                        fontWeight: FontWeight.w600,
                      ),
                      SizedBox(width: 79),
                      Icon(Icons.keyboard_arrow_down, size: 27),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 14),
          Container(
            decoration: BoxDecoration(
              color: AppColors.WhiteColor,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          gradient: AppColors.commonGradient,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(8, 9, 8, 9),
                          child: AppText(
                            title: "mon".tr,
                            textAlign: TextAlign.center,
                            color: AppColors.WhiteColor,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      SizedBox(width: 16),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(3),
                          child: Container(
                            height: 10,
                            width: 10,
                            decoration: BoxDecoration(
                              color: AppColors.blackColor,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 8),
                      AppText(
                        title: "opened".tr,
                        fontWeight: FontWeight.w600,
                      ),
                      SizedBox(width: 20),
                      Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      SizedBox(width: 8),
                      AppText(
                        title: "closed".tr,
                        fontWeight: FontWeight.w600,
                      ),
                      SizedBox(width: 79),
                      Icon(Icons.keyboard_arrow_down, size: 27),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 14),
          Container(
            decoration: BoxDecoration(
              color: AppColors.WhiteColor,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          gradient: AppColors.commonGradient,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(8, 9, 8, 9),
                          child: AppText(
                            title: "mon".tr,
                            textAlign: TextAlign.center,
                            color: AppColors.WhiteColor,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      SizedBox(width: 16),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(3),
                          child: Container(
                            height: 10,
                            width: 10,
                            decoration: BoxDecoration(
                              color: AppColors.blackColor,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 8),
                      AppText(
                        title: "opened".tr,
                        fontWeight: FontWeight.w600,
                      ),
                      SizedBox(width: 20),
                      Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      SizedBox(width: 8),
                      AppText(
                        title: "closed".tr,
                        fontWeight: FontWeight.w600,
                      ),
                      SizedBox(width: 79),
                      Icon(Icons.keyboard_arrow_down, size: 27),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 48),
          AppButton(buttonName: "Update".tr, onTap: () {}),
        ],
      ),
    ),
  );
}

Widget planCreated() {
  return Container(
    height: Get.height * .37,
    decoration: BoxDecoration(
      color: AppColors.WhiteColor,
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(24),
        topRight: Radius.circular(24),
      ),
    ),
    child: Padding(
      padding: const EdgeInsets.fromLTRB(16, 10, 16, 50),
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
          SizedBox(height: 18),
          AppText(
            title: "planCreateSucces".tr,
            fontWeight: FontWeight.w600,
            size: 19,
            color: AppColors.grey3,
          ),
          SizedBox(height: 3),
          AppText(
            title: "editYourPlan".tr,
            size: 12,
            color: Color(0xff828282),
            textAlign: TextAlign.center,
            height: 1.5,
          ),
          SizedBox(height: 48),
          AppButton(
            buttonName: "goBack".tr,
            onTap: () {
              Get.back();
              Get.toNamed(Routes.tiffinServicesRoute);
            },
          ),
        ],
      ),
    ),
  );
}

Widget EditMeal() {
  return Container(
    height: Get.height * .9,
    decoration: BoxDecoration(
      color: AppColors.WhiteColor,
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(24),
        topRight: Radius.circular(24),
      ),
    ),
    child: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 10, 16, 50),
        child: Column(
          children: [
            Container(
              height: 5,
              width: 130,
              decoration: BoxDecoration(
                color: Color(0xff828282),
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            SizedBox(height: 37),
            AppText(
              title: "edirMeal".tr,
              size: 20,
              fontWeight: FontWeight.w600,
              color: AppColors.grey3,
            ),
            SizedBox(height: 48),
            EditBasicPlan(
              mealText: "Breakfast".tr,
              mealText1: "aaluprantha".tr,
              mealText2: "gobhiprantha".tr,
              mealText3: "butter".tr,
              mealText4: "curd".tr,
              priceText: r'$0.00',
              btnText: "addMeal".tr,
              onTap: () {
                Get.bottomSheet(
                  isScrollControlled: true,
                  AddMeal(),
                );
              },
            ),
            SizedBox(height: 20),
            EditBasicPlan(
              mealText: "Lunch".tr,
              mealText1: "aaluprantha".tr,
              mealText2: "gobhiprantha".tr,
              mealText3: "butter".tr,
              mealText4: "curd".tr,
              priceText: r'$0.00',
              btnText: "addMeal".tr,
              onTap: () {},
            ),
            SizedBox(height: 20),
            EditBasicPlan(
              mealText: "Dinner".tr,
              mealText1: "mixVeg".tr,
              mealText2: "egg".tr,
              mealText3: "coffee".tr,
              mealText4: "extraRoti".tr,
              priceText: r'$0.00',
              btnText: "addMeal".tr,
              onTap: () {},
            ),
            SizedBox(height: 48),
            AppButton(
              buttonName: "save".tr,
              onTap: () {
                Get.back();
                Get.toNamed(Routes.createEditPlanRoute);
              },
            ),
          ],
        ),
      ),
    ),
  );
}

class AddMeal extends StatelessWidget {
  const AddMeal({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height * .9,
      decoration: BoxDecoration(
        color: AppColors.WhiteColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24),
          topRight: Radius.circular(24),
        ),
      ),
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 10, 16, 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  height: 5,
                  width: 130,
                  decoration: BoxDecoration(
                    color: Color(0xff828282),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              SizedBox(height: 37),
              Center(
                child: AppText(
                  title: "edirMeal".tr,
                  size: 20,
                  fontWeight: FontWeight.w600,
                  color: AppColors.grey3,
                ),
              ),
              SizedBox(height: 48),
              EditBasicPlan(
                mealText: "Breakfast".tr,
                mealText1: "aaluprantha".tr,
                mealText2: "gobhiprantha".tr,
                mealText3: "butter".tr,
                btnText: 'Add'.tr,
                mealText4: "curd".tr,
                priceText: r'$0.00',
                onTap: () {},
                column: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 16),
                    DottedLine(dashColor: AppColors.borderColor),
                    SizedBox(height: 16),
                    AppText(
                      title: "addMeal".tr,
                      size: 16,
                      fontWeight: FontWeight.w600,
                      color: AppColors.grey3,
                    ),
                    SizedBox(height: 16),
                    AppText(
                      title: "addMeal".tr,
                      size: 14,
                      fontWeight: FontWeight.w500,
                    ),
                    SizedBox(height: 6),
                    appField(
                      context: context,
                      hint: "Typehere".tr,
                      border: AppColors.borderColor,
                    ),
                    SizedBox(height: 16),
                    AppText(
                      title: "price".tr,
                      size: 14,
                      fontWeight: FontWeight.w500,
                    ),
                    SizedBox(height: 6),
                    appField(
                      context: context,
                      hint: "Typehere".tr,
                      border: AppColors.borderColor,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16),
              SizedBox(height: 20),
              EditBasicPlan(
                mealText: "Lunch".tr,
                mealText1: "aaluprantha".tr,
                mealText2: "gobhiprantha".tr,
                mealText3: "butter".tr,
                btnText: "addMeal".tr,
                mealText4: "curd".tr,
                priceText: r'$0.00',
                onTap: () {},
              ),
              SizedBox(height: 20),
              EditBasicPlan(
                mealText: "Dinner".tr,
                mealText1: "mixVeg".tr,
                mealText2: "egg".tr,
                mealText3: "coffee".tr,
                mealText4: "extraRoti".tr,
                btnText: "addMeal".tr,
                priceText: r'$0.00',
                onTap: () {},
              ),
              SizedBox(height: 48),
              AppButton(
                buttonName: "save".tr,
                onTap: () {
                  Get.back();
                  Get.toNamed(Routes.createEditPlanRoute);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
