import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:seller_app/utils/app_bars/main_appbar.dart';
import 'package:seller_app/utils/app_buttons/app_buttons.dart';
import 'package:seller_app/utils/app_colors/app_color.dart';
import 'package:seller_app/utils/app_constants/const_images.dart';
import 'package:seller_app/utils/app_text/app_text.dart';

class Rewards extends StatelessWidget {
  const Rewards({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        surfaceTintColor: AppColors.transperentColor,
        automaticallyImplyLeading: false,
        title: MainAppBar(
          title: "reward".tr,
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
            child: Padding(
              padding: EdgeInsets.fromLTRB(16, 20, 16, 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      gradient: AppColors.commonGradient,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(14, 19, 16, 19),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AppText(
                                title: "rewardPoints".tr,
                                size: 16,
                                fontWeight: FontWeight.w600,
                                color: AppColors.WhiteColor,
                              ),
                              SizedBox(height: 12),
                              Container(
                                decoration: BoxDecoration(
                                  border:
                                      Border.all(color: AppColors.WhiteColor),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(16, 10, 16, 10),
                                  child: Row(
                                    children: [
                                      SvgPicture.asset(
                                        ImageConst.vector,
                                        color: AppColors.WhiteColor,
                                      ),
                                      SizedBox(width: 4),
                                      AppText(
                                        title: '200',
                                        size: 20,
                                        fontWeight: FontWeight.w600,
                                        color: AppColors.WhiteColor,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(height: 28),
                              Image.asset(
                                ImageConst.divider,
                                color: AppColors.WhiteColor,
                              ),
                            ],
                          ),
                          Image.asset(ImageConst.coin),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  AppText(
                    title: "rewardHistory".tr,
                    size: 20,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff434343),
                  ),
                  SizedBox(height: 18),
                  Row(
                    children: [
                      AppButton(
                        buttonName: "earned".tr,
                        buttonHeight: 38,
                        buttonWidth: 110,
                        isShowShadow: false,
                        textSize: 14,
                        fontWeight: FontWeight.w600,
                        onTap: () {},
                      ),
                      SizedBox(width: 12),
                      Container(
                        decoration: BoxDecoration(boxShadow: [
                          BoxShadow(
                            color: AppColors.blackColor.withOpacity(.1),
                            blurRadius: 2,
                            offset: Offset(0, 2),
                          ),
                        ], borderRadius: BorderRadius.circular(8)),
                        child: AppButton(
                          buttonName: "Redeem".tr,
                          buttonHeight: 38,
                          buttonWidth: 110,
                          isShowGradient: false,
                          textSize: 14,
                          fontWeight: FontWeight.w400,
                          buttonColor: AppColors.WhiteColor,
                          isShowShadow: false,
                          textColor: Color(0xff393939),
                          onTap: () {},
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  InvoiceNoEarned(),
                  SizedBox(height: 20),
                  InvoiceNoEarned(),
                  SizedBox(height: 20),
                  InvoiceNoEarned(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget InvoiceNoEarned() {
  return DottedBorder(
    color: Color(0xffD9D9D9),
    radius: Radius.circular(12),
    borderType: BorderType.RRect,
    strokeCap: StrokeCap.round,
    dashPattern: [6, 6],
    child: ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.WhiteColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppText(
                    title: "Invoiceno".tr,
                    fontWeight: FontWeight.w600,
                    size: 16,
                  ),
                  SizedBox(height: 6),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "earned".tr,
                          style: TextStyle(
                              color: AppColors.grey3,
                              fontWeight: FontWeight.w500),
                        ),
                        TextSpan(
                          text: "rewardEarned".tr,
                          style: TextStyle(color: AppColors.grey2, height: 1.4),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 6),
                  AppText(
                    title: "Date1222023".tr,
                    fontWeight: FontWeight.w400,
                    size: 12,
                    color: AppColors.grey1,
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: AppColors.commonColor),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(6, 4, 6, 4),
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            ImageConst.vector,
                          ),
                          SizedBox(width: 4),
                          AppText(
                            title: '10',
                            size: 16,
                            fontWeight: FontWeight.w500,
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 11),
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xff5DC161),
                      borderRadius: BorderRadius.circular(36),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Icon(
                        Icons.done,
                        size: 20,
                        color: AppColors.WhiteColor,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    ),
  );
}






// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:lottie/lottie.dart';
// import 'package:seller_app/utils/app_buttons/app_buttons.dart';
// import 'package:seller_app/utils/app_colors/app_color.dart';
// import 'package:seller_app/utils/app_constants/const_images.dart';
// import 'package:seller_app/utils/app_text/app_text.dart';

// class Rewards extends StatelessWidget {
//   const Rewards({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         alignment: Alignment.topCenter,
//         children: [
//           Image.asset(
//             ImageConst.ads,
//             height: Get.height,
//             width: Get.width,
//             fit: BoxFit.cover,
//           ),
//           Container(
//             width: Get.width,
//             height: Get.height,
//             color: Colors.black.withOpacity(0.56),
//           ),
//           SafeArea(
//             child: Column(
//               children: [
//                 AppText(
//                   title: 'Timer',
//                   size: 12,
//                   color: AppColors.WhiteColor,
//                 ),
//                 SizedBox(height: 15),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     buildTimerUnit(value: '24', label: 'Hours'),
//                     SizedBox(width: 7),
//                     buildTimerUnit(value: '60', label: 'Minutes'),
//                     SizedBox(width: 7),
//                     buildTimerUnit(value: '60', label: 'Seconds'),
//                   ],
//                 ),
//                 Spacer(),
//                 Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 25),
//                   child: Row(
//                     children: [
//                       Expanded(
//                         child: AppButton(
//                           buttonName: 'Cancel',
//                           buttonRadius: BorderRadius.circular(40),
//                           isShowGradient: false,
//                           fontWeight: FontWeight.w500,
//                           color: AppColors.WhiteColor,
//                           textColor: Color(0xffC9C9C9),
//                           isShowShadow: false,
//                           onTap: () {},
//                         ),
//                       ),
//                       SizedBox(width: 15),
//                       Expanded(
//                         child: AppButton(
//                           buttonName: 'Next',
//                           buttonRadius: BorderRadius.circular(40),
//                           fontWeight: FontWeight.w500,
//                           isShowGradient: false,
//                           buttonColor: Color(0xffF33F41),
//                           isShowShadow: false,
//                           onTap: () {
//                             Get.dialog(
//                               Column(
//                                 mainAxisAlignment: MainAxisAlignment.center,
//                                 children: [
//                                   Padding(
//                                     padding: const EdgeInsets.only(
//                                         left: 25, right: 25),
//                                     child: Container(
//                                       width: Get.width,
//                                       decoration: BoxDecoration(
//                                         color: AppColors.WhiteColor,
//                                         borderRadius: BorderRadius.circular(10),
//                                       ),
//                                       child: Padding(
//                                         padding: const EdgeInsets.all(25),
//                                         child: Column(
//                                           children: [
//                                             Align(
//                                               alignment: Alignment.topRight,
//                                               child: Container(
//                                                 decoration: BoxDecoration(
//                                                   color: Color(0xffF8F8F8),
//                                                   borderRadius:
//                                                       BorderRadius.circular(20),
//                                                 ),
//                                                 child: Padding(
//                                                   padding:
//                                                       const EdgeInsets.all(5),
//                                                   child: Icon(
//                                                     Icons.close,
//                                                     size: 15,
//                                                   ),
//                                                 ),
//                                               ),
//                                             ),
//                                             Lottie.asset(
//                                               ImageConst.lottie,
//                                               height: 93,
//                                               width: 93,
//                                             ),
//                                             SizedBox(height: 9),
//                                             AppText(
//                                               title: 'Earn from ADS ?',
//                                               size: 14,
//                                               fontWeight: FontWeight.w600,
//                                             ),
//                                             SizedBox(height: 15),
//                                             AppText(
//                                               title:
//                                                   'Do you want to make money from \nwatching the ads?',
//                                               color: Color(0xff606060),
//                                               textAlign: TextAlign.center,
//                                               size: 13,
//                                               fontWeight: FontWeight.w400,
//                                               height: 1.5,
//                                             ),
//                                             SizedBox(height: 25),
//                                             AppButton(
//                                               buttonName: 'Done',
//                                               isShowGradient: false,
//                                               isShowShadow: false,
//                                               buttonColor: Color(0xffF33F41),
//                                               buttonRadius:
//                                                   BorderRadius.circular(25),
//                                               onTap: () {},
//                                             ),
//                                           ],
//                                         ),
//                                       ),
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             );
//                           },
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 SizedBox(height: 25),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget buildTimerUnit({required String value, required String label}) {
//     return Container(
//       decoration: BoxDecoration(
//         color: AppColors.WhiteColor,
//         borderRadius: BorderRadius.circular(6),
//       ),
//       child: Padding(
//         padding: const EdgeInsets.fromLTRB(13, 13.56, 12.6, 8),
//         child: Column(
//           children: [
//             AppText(
//               title: value,
//               size: 12,
//               color: Color(0xff6A6A6A),
//               fontWeight: FontWeight.w700,
//             ),
//             SizedBox(height: 3),
//             AppText(
//               title: label,
//               size: 4,
//               color: Color(0xffF33F41),
//               fontWeight: FontWeight.w500,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
