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

class Premium extends StatelessWidget {
  const Premium({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        surfaceTintColor: AppColors.transperentColor,

        automaticallyImplyLeading: false,
        title: MainAppBar(
          title: "Premium".tr,
          size: 24,
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
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16, 25, 16, 16),
              child: Column(
                children: [
                  Center(child: Image.asset(ImageConst.premium)),
                  SizedBox(height: 24),
                  Container(
                    decoration: BoxDecoration(
                      color: AppColors.WhiteColor,
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.blackColor.withOpacity(.14),
                          blurRadius: 14,
                          offset: Offset(0, 4),
                        )
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(16, 20, 16, 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AppText(
                            title: "plan".tr,
                            size: 16,
                            fontWeight: FontWeight.w600,
                            color: AppColors.grey3,
                          ),
                          SizedBox(height: 14),
                          AppText(
                            title: "planDetail".tr,
                            size: 12,
                            fontWeight: FontWeight.w400,
                            color: AppColors.hintColor,
                            height: 1.5,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 50),
                  AppButton(
                    buttonName: "subscribe".tr,
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
