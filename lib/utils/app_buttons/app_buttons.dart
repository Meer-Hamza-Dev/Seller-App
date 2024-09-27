import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:seller_app/utils/app_colors/app_color.dart';
import 'package:seller_app/utils/app_text/app_text.dart';

class AppButton extends StatelessWidget {
  final String buttonName;
  final double textSize;
  final double buttonWidth;
  final double buttonHeight;
  final Color? buttonColor;
  final Color? color;
  final Color textColor;
  final Color iconColor;
  final FontWeight? fontWeight;
  final BorderRadius? buttonRadius;
  final IconData icon;
  final String iconImage;
  final String loadingText;
  final bool isIcon;
  final bool isCenter;
  final bool loading;
  final double iconSize;
  final double paddingBtwn;
  final VoidCallback onTap;
  final double borderWidth;
  final Color borderColor;
  final bool? isShowGradient;
  final bool? isShowShadow;

  const AppButton({
    Key? key,
    this.isShowGradient = true,
    this.isShowShadow = true,
    required this.buttonName,
    this.buttonWidth = double.infinity,
    this.buttonHeight = 52,
    this.buttonColor,
    this.color,
    this.textColor = Colors.white,
    this.fontWeight = FontWeight.w600,
    this.buttonRadius,
    this.iconColor = Colors.white,
    this.icon = Icons.home,
    this.iconImage = "",
    this.loadingText = "Please wait...",
    this.isIcon = false,
    this.isCenter = false,
    this.loading = false,
    this.iconSize = 30,
    this.paddingBtwn = 0,
    required this.onTap,
    this.textSize = 16,
    this.borderWidth = 0,
    this.borderColor = Colors.transparent,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: loading ? null : onTap,
      child: Container(
        height: buttonHeight,
        width: buttonWidth,
        decoration: BoxDecoration(
            color: isShowGradient == true ? null : color ?? buttonColor,
            borderRadius: buttonRadius ?? BorderRadius.circular(8),
            gradient: isShowGradient == true ? AppColors.commonGradient : null,
            border: Border.all(
              width: borderWidth,
              color: borderColor,
            ),
            boxShadow: isShowShadow == true
                ? [
                    BoxShadow(
                      color: Color(0xffF4494B).withOpacity(0.24),
                      offset: Offset(0, 12),
                      blurRadius: 24,
                    ),
                  ]
                : null),
        child: loading
            ? Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CupertinoActivityIndicator(
                      color: textColor,
                      radius: 10,
                    ),
                    SizedBox(width: 10),
                    AppText(
                      title: loadingText,
                      color: textColor,
                      size: textSize,
                    ),
                  ],
                ),
              )
            : Padding(
                padding: isCenter
                    ? const EdgeInsets.symmetric(horizontal: 20)
                    : EdgeInsets.only(left: paddingBtwn == 0 ? 0 : 15),
                child: Row(
                  mainAxisAlignment: paddingBtwn == 0
                      ? MainAxisAlignment.center
                      : MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    if (isIcon)
                      iconImage.isEmpty
                          ? Icon(
                              icon,
                              color: iconColor,
                              size: iconSize,
                            )
                          : Image.asset(
                              iconImage,
                              height: iconSize,
                            ),
                    if (!isCenter)
                      SizedBox(
                          width: paddingBtwn == 0
                              ? (isIcon ? 10 : 0)
                              : paddingBtwn),
                    Center(
                      child: AppText(
                        title: buttonName,
                        color: textColor,
                        fontWeight: fontWeight ?? FontWeight.w600,
                        size: 16,
                      ),
                    ),
                    isCenter ? const Spacer() : Container(),
                    isCenter
                        ? isIcon
                            ? iconImage == ""
                                ? Icon(
                                    icon,
                                    color: iconColor,
                                    size: iconSize,
                                  )
                                : Image.asset(iconImage,
                                    height: iconSize, color: Colors.transparent)
                            : Container()
                        : Container(),
                  ],
                ),
              ),
      ),
    );
  }
}
