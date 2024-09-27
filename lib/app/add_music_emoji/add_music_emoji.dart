import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:seller_app/routes/app_pages.dart';
import 'package:seller_app/utils/app_bars/main_appbar.dart';
import 'package:seller_app/utils/app_buttons/app_buttons.dart';
import 'package:seller_app/utils/app_colors/app_color.dart';
import 'package:seller_app/utils/app_constants/const_images.dart';

class AddMusicEmoji extends StatelessWidget {
  const AddMusicEmoji({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: MainAppBar(
          color: AppColors.blackColor,
          leadingWidget: GestureDetector(
            onTap: () {
              Get.back();
            },
            child: Container(
              decoration: BoxDecoration(
                color: AppColors.WhiteColor,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Icon(Icons.close),
              ),
            ),
          ),
          imageSuffix: Container(
            decoration: BoxDecoration(
              color: AppColors.WhiteColor,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Icon(Icons.music_note),
            ),
          ),
          imageSuffix2: Container(
            decoration: BoxDecoration(
              color: AppColors.WhiteColor,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Icon(Icons.emoji_emotions_outlined),
            ),
          ),
          sizedBoxWidth: 12,
          imageSuffix3: Container(
            decoration: BoxDecoration(
              color: AppColors.WhiteColor,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Icon(Icons.text_fields_rounded),
            ),
          ),
        ),
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      extendBodyBehindAppBar: true,
      extendBody: true,
      body: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset(
            ImageConst.videoImg,
            height: Get.height,
            width: Get.width,
            fit: BoxFit.cover,
          ),
          Container(
            decoration: BoxDecoration(
              color: AppColors.WhiteColor.withOpacity(.36),
              borderRadius: BorderRadius.circular(35),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.play_arrow,
                size: 45,
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(left: 16, right: 16, bottom: 48),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppButton(
                        buttonName: 'back'.tr,
                        isShowGradient: false,
                        buttonColor: AppColors.WhiteColor,
                        textColor: AppColors.blackColor,
                        buttonWidth: 135,
                        onTap: () {
                          Get.back();
                        },
                      ),
                      AppButton(
                        buttonName: 'next'.tr,
                        buttonWidth: 135,
                        onTap: () {
                          Get.toNamed(Routes.publishVideoRoute);
                        },
                      ),
                    ],
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
