import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:seller_app/app/upload_create_video/upload_create_controller.dart';
import 'package:seller_app/routes/app_pages.dart';
import 'package:seller_app/utils/app_bars/main_appbar.dart';
import 'package:seller_app/utils/app_colors/app_color.dart';
import 'package:seller_app/utils/app_constants/const_images.dart';
import 'package:seller_app/utils/app_text/app_text.dart';
import 'package:video_player/video_player.dart';

class UploadCreateVideo extends StatelessWidget {
  UploadCreateVideo({super.key});
  final PickerController pickerController = Get.put(PickerController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        surfaceTintColor: AppColors.transperentColor,
        automaticallyImplyLeading: false,
        title: MainAppBar(
          color: AppColors.blackColor,
          leadingWidget: GestureDetector(
            onTap: () {
              Get.back();
            },
            child: Icon(
              Icons.close,
              color: AppColors.WhiteColor,
            ),
          ),
          imageSuffix2: GestureDetector(
            onTap: () {
              Get.toNamed(Routes.addMusicEmojiRoute);
            },
            child: Container(
              decoration: BoxDecoration(
                color: AppColors.WhiteColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(11, 4.5, 11, 4.5),
                child: AppText(
                  title: "next".tr,
                  gradient: AppColors.commonGradient,
                  fontWeight: FontWeight.w500,
                  size: 14,
                ),
              ),
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
          Obx(
            () {
              if (pickerController.selectedFile.value == null) {
                return Image.asset(
                  ImageConst.videoImg,
                  width: Get.width,
                  fit: BoxFit.cover,
                  height: Get.height,
                );
              } else {
                final file = pickerController.selectedFile.value!;
                final isVideo =
                    file.path.endsWith('.mp4') || file.path.endsWith('.mov');

                if (isVideo && pickerController.videoPlayerController != null) {
                  return AspectRatio(
                    aspectRatio: pickerController
                        .videoPlayerController!.value.aspectRatio,
                    child: Container(
                      height: Get.height,
                      width: Get.width,
                      child: VideoPlayer(
                        pickerController.videoPlayerController!,
                      ),
                    ),
                  );
                }

                return Stack(
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
                          pickerController.isPlaying.value
                              ? Icons.pause
                              : Icons.play_arrow,
                          size: 45,
                        ),
                      ),
                    ),
                  ],
                );
              }
            },
          ),
          Obx(
            () {
              if (pickerController.selectedFile.value != null &&
                  pickerController.selectedFile.value!.path.endsWith('.mp4')) {
                return Positioned(
                  child: GestureDetector(
                    onTap: () {
                      pickerController.playPauseVideo();
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: AppColors.WhiteColor.withOpacity(.36),
                        borderRadius: BorderRadius.circular(35),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          pickerController.isPlaying.value
                              ? Icons.pause
                              : Icons.play_arrow,
                          size: 45,
                        ),
                      ),
                    ),
                  ),
                );
              }
              return SizedBox();
            },
          ),
        ],
      ),
    );
  }
}
