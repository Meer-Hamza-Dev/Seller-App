// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:seller_app/utils/app_bars/main_appbar.dart';
import 'package:seller_app/utils/app_colors/app_color.dart';
import 'package:seller_app/utils/app_constants/const_images.dart';
import 'package:seller_app/utils/app_text/app_text.dart';
import 'package:url_launcher/url_launcher.dart';

class Store_View extends StatelessWidget {
  const Store_View({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        surfaceTintColor: AppColors.transperentColor,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: MainAppBar(
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
      backgroundColor: Color(0xffFB6D72),
      body: Stack(
        children: [
          Container(
            height: 330,
            color: Color(0xffFB6D72),
            child: Center(
              child: Image.asset(
                ImageConst.bigZaika,
              ),
            ),
          ),
          DraggableScrollableSheet(
            initialChildSize: 0.52,
            minChildSize: 0.52,
            maxChildSize: 0.52,
            builder: (BuildContext context, ScrollController scrollController) {
              return Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20.0),
                    topLeft: Radius.circular(20.0),
                  ),
                ),
                child: ListView(
                  controller: scrollController,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(16, 0, 16, 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  AppText(
                                    title: "zaikacaterings".tr,
                                    color: AppColors.itemNameClor,
                                    size: 24,
                                    fontWeight: FontWeight.w600,
                                  ),
                                  SizedBox(height: 4),
                                  Row(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          gradient: LinearGradient(
                                            colors: [
                                              Color(0xffF33F41)
                                                  .withOpacity(0.1),
                                              Color(0xffFB6D72)
                                                  .withOpacity(0.1),
                                            ],
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(32),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              4, 5, 4, 5),
                                          child: Icon(
                                            Icons.star,
                                            color: AppColors.commonColor,
                                            size: 16,
                                          ),
                                        ),
                                      ),
                                      SizedBox(width: 6),
                                      AppText(
                                        title: '234 reviews',
                                        color: AppColors.greyMain,
                                        fontWeight: FontWeight.w500,
                                        size: 12,
                                      ),
                                      SizedBox(width: 20),
                                      Container(
                                        decoration: BoxDecoration(
                                          gradient: LinearGradient(
                                            colors: [
                                              Color(0xffF33F41)
                                                  .withOpacity(0.1),
                                              Color(0xffFB6D72)
                                                  .withOpacity(0.1),
                                            ],
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(32),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              4, 5, 4, 5),
                                          child: Icon(
                                            Icons.location_on_outlined,
                                            color: AppColors.commonColor,
                                            size: 24,
                                          ),
                                        ),
                                      ),
                                      SizedBox(width: 6),
                                      AppText(
                                        title: '2.5 km',
                                        color: AppColors.greyMain,
                                        fontWeight: FontWeight.w500,
                                        size: 12,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        colors: [
                                          Color(0xffF33F41).withOpacity(0.1),
                                          Color(0xffFB6D72).withOpacity(0.1),
                                        ],
                                      ),
                                      borderRadius: BorderRadius.circular(32),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(10),
                                      child: Icon(
                                        Icons.file_download_outlined,
                                        color: AppColors.commonColor,
                                        size: 15,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 4),
                                  AppText(
                                    title: "downlaodmenu".tr,
                                    fontWeight: FontWeight.w500,
                                    size: 10,
                                    textAlign: TextAlign.center,
                                    color: AppColors.greyMain,
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 14),
                          Row(
                            children: [
                              Icon(
                                Icons.thumb_up_off_alt,
                                size: 18,
                                color: AppColors.greyMain,
                              ),
                              SizedBox(width: 8),
                              AppText(
                                title: "6k",
                                size: 12,
                                color: AppColors.grey3,
                              ),
                              SizedBox(width: 36),
                              Icon(
                                Icons.bookmark_outline_outlined,
                                size: 18,
                                color: AppColors.greyMain,
                              ),
                              SizedBox(width: 8),
                              AppText(
                                title: "4k",
                                size: 12,
                                color: AppColors.grey3,
                              ),
                            ],
                          ),
                          SizedBox(height: 16),
                          DottedLine(
                            dashColor: AppColors.greyMain,
                          ),
                          SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.location_on,
                                    size: 18,
                                    color: AppColors.grey1,
                                  ),
                                  SizedBox(width: 16),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      AppText(
                                        title: "sauthFraserWay".tr,
                                        fontWeight: FontWeight.w500,
                                        color: AppColors.grey3,
                                      ),
                                      SizedBox(height: 2),
                                      AppText(
                                        title: "abbotsfordBC".tr,
                                        size: 10,
                                        color: AppColors.grey1,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Icon(
                                Icons.arrow_outward,
                                size: 20,
                                color: Colors.blue,
                              )
                            ],
                          ),
                          SizedBox(height: 16),
                          DottedLine(
                            dashColor: AppColors.greyMain,
                          ),
                          SizedBox(height: 16),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.access_time_filled_sharp,
                                    size: 24,
                                    color: AppColors.grey1,
                                  ),
                                  SizedBox(width: 16),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      AppText(
                                        title: "open".tr,
                                        fontWeight: FontWeight.w500,
                                        size: 12,
                                        color: Color(0xff45A843),
                                      ),
                                      SizedBox(height: 2),
                                      AppText(
                                        title: "acceptingorders".tr,
                                        size: 10,
                                        color: AppColors.grey1,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Icon(
                                Icons.keyboard_arrow_down,
                                size: 20,
                                color: Colors.black,
                              )
                            ],
                          ),
                          SizedBox(height: 16),
                          DottedLine(
                            dashColor: AppColors.greyMain,
                          ),
                          SizedBox(height: 16),
                          Row(
                            children: [
                              Icon(
                                Icons.phone,
                                size: 24,
                                color: AppColors.grey1,
                              ),
                              SizedBox(width: 16),
                              AppText(
                                title: "+16047560535",
                                color: Color(0xff2F80ED),
                              ),
                            ],
                          ),
                          SizedBox(height: 16),
                          DottedLine(
                            dashColor: AppColors.greyMain,
                          ),
                          SizedBox(height: 16),
                          Row(
                            children: [
                              SvgPicture.asset(ImageConst.web),
                              SizedBox(width: 16),
                              GestureDetector(
                                onTap: () {
                                  const link = "https://zaikatastesindia.com/";
                                  launchUrl(Uri.parse(link),
                                      mode: LaunchMode.inAppWebView);
                                },
                                child: AppText(
                                  title: "https://zaikatastesindia.com/",
                                  color: Color(0xff2F80ED),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 36),
                          AppText(
                            title: "about".tr,
                            color: AppColors.itemNameClor,
                            size: 20,
                            fontWeight: FontWeight.w600,
                          ),
                          SizedBox(height: 6),
                          AppText(
                            title: "aboutdesc".tr,
                            color: AppColors.grey1,
                          ),
                          SizedBox(height: 20),
                          Row(
                            children: [
                              overviewStore(
                                gradient: AppColors.commonGradient,
                                imagePath: ImageConst.user,
                                priceText: "4k",
                                text: "customer".tr,
                              ),
                              SizedBox(width: 18),
                              overviewStore(
                                gradient: AppColors.linearGreen,
                                imagePath: ImageConst.list,
                                priceText: '100+',
                                text: "employees".tr,
                              ),
                            ],
                          ),
                          SizedBox(height: 20),
                          Row(
                            children: [
                              overviewStore(
                                gradient: AppColors.linearOrange,
                                imagePath: ImageConst.brown,
                                priceText: '10k',
                                text: "storeWishlisted".tr,
                              ),
                              SizedBox(width: 18),
                              overviewStore(
                                gradient: AppColors.linearPurple,
                                imagePath: ImageConst.purpule,
                                priceText: '20k',
                                text: "productsWishlisted".tr,
                              ),
                            ],
                          ),
                          SizedBox(height: 16),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              AppText(
                                title: "Review".tr,
                                color: AppColors.itemNameClor,
                                size: 20,
                                fontWeight: FontWeight.w600,
                              ),
                              AppText(
                                title: "Viewall".tr,
                                color: AppColors.commonColor,
                                size: 12,
                                fontWeight: FontWeight.w500,
                              ),
                            ],
                          ),
                          SizedBox(height: 16),
                          JohnReview(),
                          SizedBox(height: 16),
                          JohnReview(),
                          SizedBox(height: 16),
                          JohnReview(),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

Container JohnReview() {
  return Container(
    decoration: BoxDecoration(
      color: AppColors.WhiteColor,
      borderRadius: BorderRadius.circular(8),
      boxShadow: [
        BoxShadow(
          color: AppColors.blackColor.withOpacity(0.02),
          blurRadius: 2,
          offset: Offset(0, 4),
        ),
      ],
    ),
    child: Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          Image.asset(ImageConst.john),
          SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppText(
                      title: "john".tr,
                      color: AppColors.grey3,
                      size: 16,
                      fontWeight: FontWeight.w600,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: AppColors.commonColor.withOpacity(0.32),
                        borderRadius: BorderRadius.circular(2),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(4),
                        child: Row(
                          children: [
                            AppText(
                              title: "N45".tr,
                              fontWeight: FontWeight.w600,
                              size: 10,
                              color: AppColors.commonColor,
                            ),
                            SizedBox(width: 2),
                            Icon(
                              Icons.star,
                              color: AppColors.commonColor,
                              size: 8,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 4),
                AppText(
                  title: "jhonReview".tr,
                  size: 10,
                  color: Color(0xff898989),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}

Expanded overviewStore(
    {required gradient,
    required String imagePath,
    required String text,
    required String priceText}) {
  return Expanded(
    child: Container(
      decoration: BoxDecoration(
        gradient: gradient,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 20, 0, 17),
        child: Column(
          children: [
            Row(
              children: [
                SvgPicture.asset(imagePath),
                SizedBox(width: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppText(
                      title: priceText,
                      fontWeight: FontWeight.w600,
                      color: AppColors.WhiteColor,
                      size: 16,
                    ),
                    AppText(
                      title: text,
                      color: AppColors.WhiteColor,
                      fontWeight: FontWeight.w500,
                      size: 12,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}
