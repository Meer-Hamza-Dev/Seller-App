// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:seller_app/utils/app_colors/app_color.dart';

class AppTextFied extends StatefulWidget {
  AppTextFied({
    Key? key,
    this.hint = "",
    this.label,
    this.hintColor = Colors.black,
    this.hintSize,
    this.textInputType,
    this.textInputAction,
    this.prefixIcon,
    this.suffixIcon,
    this.isShowCursor = true,
    this.isReadOnly = false,
    this.maxLines,
    this.isVisible = true,
    this.enabled = true,
    this.onChange,
    this.onEditingComplete,
    this.cursorColor,
    this.onFieldSubmitted,
    this.onSaved,
    this.validator,
    this.isborderline = false,
    this.isborderline1 = false,
    this.isborderline2 = false,
    this.listInputParam,
    this.borderColor = Colors.transparent,
    this.borderColor1 = Colors.transparent,
    this.borderColor2 = Colors.transparent,
    this.borderRadius = BorderRadius.zero,
    this.borderRadius1 = BorderRadius.zero,
    this.borderRadius2 = BorderRadius.zero,
    /* this.intialValue = "",*/
    this.onTap,
    this.obsecure = false,
    this.controller,
    this.fillColor = Colors.transparent,
    this.isFill = false,
    this.fontFamily = "",
    this.maxLength,
    this.labelColor,
    this.labelFont,
    this.labelSize,
    this.heightTextField,
    this.onSuffixTap,
    this.autovalidateMode,
    this.isPrefix = false,
    this.isSuffix = false,
    this.padding = EdgeInsets.zero,
  }) : super(key: key);
  final bool obsecure;
  final String hint;
  final String? label;
  final bool isFill;
  final bool isVisible;
  final bool enabled;
  final String fontFamily;
  String? Function(String?)? validator;
  Function(String?)? onChange;
  final Color? hintColor;
  final double? hintSize;
  final TextEditingController? controller;
  final TextInputType? textInputType;
  List<TextInputFormatter>? listInputParam;
  final Widget? prefixIcon;
  final bool isShowCursor;

  final AutovalidateMode? autovalidateMode;
  final bool isReadOnly;
  final bool isPrefix;
  final bool isSuffix;
  final EdgeInsets padding;
  final int? maxLines;
  final int? maxLength;
  final Color borderColor;
  final Color borderColor1;
  final Color borderColor2;
  final Color? cursorColor;
  void Function()? onEditingComplete;
  void Function(String)? onFieldSubmitted;
  void Function(String?)? onSaved;
  final bool isborderline;
  final bool isborderline1;
  final bool isborderline2;
  final BorderRadius borderRadius;
  final BorderRadius borderRadius1;
  final BorderRadius borderRadius2;
  final Color? labelColor;
  final double? labelSize;
  final FontWeight? labelFont;

  final double? heightTextField;
  final Widget? suffixIcon;
  final TextInputAction? textInputAction;
  /*final String intialValue;*/
  final VoidCallback? onTap;
  final VoidCallback? onSuffixTap;
  final Color fillColor;

  @override
  State<AppTextFied> createState() => _AppTextFiedState();
}

class _AppTextFiedState extends State<AppTextFied> {
  bool isClear = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.heightTextField,
      child: TextFormField(
        autovalidateMode: widget.autovalidateMode,
        onChanged: widget.onChange ??
            (value) {
              if (value.isNotEmpty) {
                setState(() {
                  isClear = true;
                });
              } else {
                setState(() {
                  isClear = false;
                });
              }
            },
        onEditingComplete: widget.onEditingComplete,
        onSaved: widget.onSaved,
        onFieldSubmitted: widget.onFieldSubmitted,
        validator: widget.validator,
        controller: widget.controller,
        style: GoogleFonts.poppins(
            textStyle: TextStyle(
          fontSize: widget.hintSize ?? 15,
          fontWeight: FontWeight.w400,
        )),
        maxLength: widget.maxLength,
        obscureText: widget.obsecure,
        onTap: widget.onTap,
        cursorColor: widget.cursorColor ?? AppColors.commonColor,
        maxLines: widget.maxLines,
        showCursor: widget.isShowCursor,
        readOnly: widget.isReadOnly,
        keyboardType: widget.textInputType,
        textInputAction: widget.textInputAction,
        inputFormatters: widget.listInputParam,
        decoration: InputDecoration(
          contentPadding: widget.padding,
          border: InputBorder.none,
          fillColor: widget.fillColor,
          filled: widget.isFill,
          hintText: widget.hint,
          labelText: widget.label,
          labelStyle: GoogleFonts.poppins(
              textStyle: TextStyle(
                  color: widget.labelColor,
                  fontSize: widget.labelSize,
                  fontWeight: widget.labelFont)),
          floatingLabelBehavior: FloatingLabelBehavior.auto,
          suffixIcon: widget.isSuffix ? widget.suffixIcon : null,
          prefixIcon: widget.isPrefix ? widget.prefixIcon : null,
          hintStyle: GoogleFonts.inter(
              textStyle: TextStyle(
            color: widget.hintColor,
            fontSize: widget.hintSize,
            fontWeight: FontWeight.w400,
          )),
          errorStyle: GoogleFonts.poppins(
              textStyle: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.w400,
                  fontSize: 13)),
          enabledBorder: widget.isborderline
              ? OutlineInputBorder(
                  borderSide: BorderSide(color: widget.borderColor, width: 1),
                  borderRadius: widget.borderRadius,
                )
              : null,
          disabledBorder: widget.isborderline1
              ? OutlineInputBorder(
                  borderSide: BorderSide(width: 1, color: widget.borderColor1),
                  borderRadius: widget.borderRadius1,
                )
              : null,
          errorBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              width: 1.5,
              color: Colors.red,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          focusedErrorBorder: widget.isborderline2
              ? OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 1,
                    color: widget.borderColor2,
                  ),
                  borderRadius: widget.borderRadius2,
                )
              : null,
          focusedBorder: widget.isborderline2
              ? OutlineInputBorder(
                  borderRadius: widget.borderRadius2,
                  borderSide: BorderSide(width: 1, color: widget.borderColor2),
                )
              : null,
        ),
      ),
    );
  }
}

Widget appField({
  TextEditingController? controller,
  String? hint = "",
  String? label,
  EdgeInsets? paddingALl,
  Color? labelColor,
  Color? hintColor,
  double? labelSize,
  FontWeight? labelFont,
  Color fillColor = Colors.transparent,
  Color? border,
  TextInputType? textInputType,
  TextInputAction? textInputAction,
  bool obscure = false,
  bool isBorderLine = true,
  bool isSuffix = true,
  bool isPrefix = false,
  bool isRead = false,
  bool isCur = true,
  final VoidCallback? onTap,
  String? Function(String?)? validator,
  Function(String?)? onChange,
  required BuildContext context,
  double? height,
  double? hintSize,
  List<TextInputFormatter>? listInputParam,
  int? max,
  Widget? suffixWidget,
  BorderRadius? borderRadius,
  Widget? prefixWidget,
}) {
  return AppTextFied(
    isborderline: isBorderLine,
    autovalidateMode: AutovalidateMode.onUserInteraction,
    isborderline2: isBorderLine,
    validator: validator,
    obsecure: obscure,
    listInputParam: listInputParam,
    isFill: true,
    label: label,
    labelFont: labelFont,
    labelSize: labelSize,
    labelColor: labelColor,
    isPrefix: isPrefix,
    onTap: onTap,
    isborderline1: isBorderLine,
    fillColor: fillColor,
    prefixIcon: prefixWidget ?? const SizedBox.shrink(),
    onChange: onChange,
    isReadOnly: isRead,
    isShowCursor: isCur,
    suffixIcon: suffixWidget ?? const SizedBox.shrink(),
    padding: paddingALl ??
        EdgeInsets.symmetric(horizontal: 16, vertical: height ?? 10),
    borderRadius: borderRadius ?? BorderRadius.circular(10),
    borderRadius2: borderRadius ?? BorderRadius.circular(10),
    borderColor: border ?? AppColors.borderColor,
    borderColor1: border ?? AppColors.borderColor,
    hint: hint ?? "",
    hintColor: hintColor ?? AppColors.hintColor,
    textInputType: textInputType ?? TextInputType.name,
    textInputAction: textInputAction ?? TextInputAction.next,
    hintSize: hintSize ?? 14,
    isSuffix: isSuffix,
    controller: controller,
    borderColor2: border ?? AppColors.borderColor,
    maxLines: max ?? 1,
  );
}
