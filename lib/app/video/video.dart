import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:seller_app/app/upload_create_video/upload_create_controller.dart';
import 'package:seller_app/app/video/video_controller.dart';
import 'package:seller_app/routes/app_pages.dart';
import 'package:seller_app/utils/app_bars/main_appbar.dart';
import 'package:seller_app/utils/app_buttons/app_buttons.dart';
import 'package:seller_app/utils/app_colors/app_color.dart';
import 'package:seller_app/utils/app_constants/const_images.dart';
import 'package:seller_app/utils/app_text/app_text.dart';

class VideoAdvertisement extends StatelessWidget {
  final PickerController pickerController = Get.put(PickerController());

  @override
  final VideoController controller = VideoController();
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        surfaceTintColor: AppColors.transperentColor,
        automaticallyImplyLeading: false,
        title: MainAppBar(
          title: "videoAdver".tr,
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
            child: Obx(() {
              return SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(16, 20, 16, 20),
                      child: Row(
                        children: [
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                controller.updateSelectedType('AllVideo');
                              },
                              child: Container(
                                decoration: controller.selectedType.value ==
                                        'AllVideo'
                                    ? BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        gradient: AppColors.commonGradient,
                                        boxShadow: [
                                          BoxShadow(
                                            color: AppColors.blackColor
                                                .withOpacity(.02),
                                            blurRadius: 2,
                                            offset: Offset(0, 4),
                                          ),
                                        ],
                                      )
                                    : BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        color: AppColors.WhiteColor,
                                        boxShadow: [
                                          BoxShadow(
                                            color: AppColors.blackColor
                                                .withOpacity(.02),
                                            blurRadius: 2,
                                            offset: Offset(0, 4),
                                          ),
                                        ],
                                      ),
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 13, 0, 13),
                                  child: AppText(
                                    title: "allVideo".tr,
                                    fontWeight: FontWeight.w500,
                                    color: controller.selectedType.value ==
                                            'AllVideo'
                                        ? AppColors.WhiteColor
                                        : AppColors.grey2,
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 18),
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                controller.updateSelectedType('MyVideo');
                              },
                              child: Container(
                                decoration: controller.selectedType.value ==
                                        'MyVideo'
                                    ? BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        gradient: AppColors.commonGradient,
                                        boxShadow: [
                                          BoxShadow(
                                            color: AppColors.blackColor
                                                .withOpacity(.02),
                                            blurRadius: 2,
                                            offset: Offset(0, 4),
                                          ),
                                        ],
                                      )
                                    : BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        color: AppColors.WhiteColor,
                                        boxShadow: [
                                          BoxShadow(
                                            color: AppColors.blackColor
                                                .withOpacity(.02),
                                            blurRadius: 2,
                                            offset: Offset(0, 4),
                                          ),
                                        ],
                                      ),
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 13, 0, 13),
                                  child: AppText(
                                    title: "myVideo".tr,
                                    fontWeight: FontWeight.w500,
                                    color: controller.selectedType.value ==
                                            'MyVideo'
                                        ? AppColors.WhiteColor
                                        : AppColors.grey2,
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    controller.selectedType.value == 'AllVideo'
                        ? Container(
                            height: Get.height - 207.9,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                  ImageConst.videoImg,
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(16),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 30),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Image.asset(ImageConst.videoLogo),
                                            SizedBox(width: 4),
                                            AppText(
                                              title: "suhani".tr,
                                              size: 16,
                                              fontWeight: FontWeight.w700,
                                              color: AppColors.WhiteColor,
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 6.73),
                                        AppText(
                                          title: "goodMorning".tr,
                                          size: 12,
                                          color: AppColors.WhiteColor,
                                        ),
                                        SizedBox(height: 58.53),
                                        Container(
                                          decoration: BoxDecoration(
                                            color: AppColors.WhiteColor
                                                .withOpacity(.20),
                                            borderRadius:
                                                BorderRadius.circular(22),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                12, 3.5, 12, 3.5),
                                            child: Row(
                                              children: [
                                                Icon(
                                                  Icons.music_note,
                                                  color: AppColors.WhiteColor,
                                                  size: 20,
                                                ),
                                                AppText(
                                                  title: "originalAudio".tr,
                                                  size: 12,
                                                  color: AppColors.WhiteColor,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 135),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        SvgPicture.asset(ImageConst.like),
                                        SizedBox(height: 44),
                                        SvgPicture.asset(ImageConst.comment),
                                        SizedBox(height: 44),
                                        SvgPicture.asset(ImageConst.share),
                                        SizedBox(height: 44),
                                        SvgPicture.asset(ImageConst.shape),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )
                        : Padding(
                            padding: const EdgeInsets.fromLTRB(16, 0, 16, 50),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    FoodVideos(),
                                    FoodVideos(),
                                  ],
                                ),
                                SizedBox(height: 20),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    FoodVideos(),
                                    FoodVideos(),
                                  ],
                                ),
                                SizedBox(height: 20),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    FoodVideos(),
                                    FoodVideos(),
                                  ],
                                ),
                                SizedBox(height: 69),
                                AppButton(
                                  buttonName: "uploadVideo".tr,
                                  onTap: () async {
                                    Get.toNamed(Routes.uploadCreateVideoRoute);
                                    await pickerController
                                        .pickVideo(ImageSource.gallery);
                                  },
                                ),
                              ],
                            ),
                          ),
                  ],
                ),
              );
            }),
          ),
        ],
      ),
    );
  }

  Container FoodVideos() {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.grey5),
        borderRadius: BorderRadius.circular(8),
        color: AppColors.WhiteColor,
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(6, 6, 6, 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Image.asset(ImageConst.dish),
                Container(
                  decoration: BoxDecoration(
                    gradient: AppColors.commonGradient,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.play_arrow,
                      color: AppColors.WhiteColor,
                      size: 15,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 12),
            AppText(
              title: "foodVideo".tr,
              fontWeight: FontWeight.w500,
            ),
            SizedBox(height: 3),
            RichText(
              text: TextSpan(
                text: "upload".tr,
                style: GoogleFonts.roboto(
                  textStyle: TextStyle(
                    fontSize: 10,
                    color: AppColors.grey4,
                  ),
                ),
                children: [
                  TextSpan(
                    text: "dateTime".tr,
                    style: GoogleFonts.roboto(
                      textStyle: TextStyle(
                        fontSize: 10,
                        color: AppColors.hintColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 8),
            Row(
              children: [
                SvgPicture.asset(
                  ImageConst.like,
                  color: AppColors.hintColor,
                  height: 15,
                ),
                SizedBox(width: 4),
                AppText(
                  title: '2k',
                  size: 10,
                  fontWeight: FontWeight.w500,
                  color: AppColors.hintColor,
                ),
                SizedBox(width: 24),
                SvgPicture.asset(
                  ImageConst.comment,
                  color: AppColors.hintColor,
                  height: 15,
                ),
                SizedBox(width: 4),
                AppText(
                  title: '24',
                  size: 10,
                  fontWeight: FontWeight.w500,
                  color: AppColors.hintColor,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
