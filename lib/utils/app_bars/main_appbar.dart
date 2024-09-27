// ignore_for_file: must_be_immutable, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:seller_app/utils/app_colors/app_color.dart';
import 'package:seller_app/utils/app_text/app_text.dart';

class MainAppBar extends StatelessWidget {
  MainAppBar({
    Key? key,
    this.title,
    this.subTitle,
    this.width,
    this.child,
    this.size,
    this.imageSuffix,
    this.imageSuffix2,
    this.imageSuffix3,
    this.imageSuffix4,
    this.onTap,
    this.leadingWidget,
    this.icon = 'assets/images/backBtn.svg',
    this.color,
    this.sizedBoxWidth = 0,
  }) : super(key: key);

  final String? title;
  final String? subTitle;
  final String icon;
  double? width;
  double? size;
  VoidCallback? onTap;
  Widget? child;
  Widget? imageSuffix;
  Widget? imageSuffix2;
  Widget? imageSuffix3;
  Widget? imageSuffix4;
  Widget? leadingWidget;
  Color? color;
  final double sizedBoxWidth;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            leadingWidget ??
                GestureDetector(
                  onTap: () {
                    Get.back();
                  },
                  child: SvgPicture.asset(icon),
                ),
            SizedBox(width: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                child ??
                    AppText(
                      title: title ?? '',
                      fontWeight: FontWeight.w600,
                      size: size ?? 24,
                      color: color ?? const Color(0xff434343),
                    ),
                if (subTitle != null) ...[
                  SizedBox(height: 3),
                  AppText(
                    title: subTitle ?? '',
                    fontWeight: FontWeight.w400,
                    size: size ?? 12,
                    color: AppColors.grey1,
                  ),
                ],
              ],
            ),
          ],
        ),
        Row(
          children: [
            GestureDetector(
              onTap: () {},
              child: imageSuffix ??
                  SvgPicture.asset(
                    'assets/images/search.svg',
                    color: Colors.transparent,
                  ),
            ),
            SizedBox(width: 12),
            GestureDetector(
              onTap: () {},
              child: imageSuffix2 ??
                  SvgPicture.asset(
                    'assets/images/notification.svg',
                    color: Colors.transparent,
                  ),
            ),
            SizedBox(width: sizedBoxWidth),
            imageSuffix3 ?? SizedBox.shrink(),
            SizedBox(width: sizedBoxWidth),
            imageSuffix4 ?? SizedBox.shrink(),
          ],
        ),
      ],
    );
  }
}
