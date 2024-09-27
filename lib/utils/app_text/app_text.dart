import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppText extends StatelessWidget {
  AppText({
    Key? key,
    this.title = "Business App",
    this.color = Colors.black,
    this.decoration = TextDecoration.none,
    this.size,
    this.fontWeight,
    this.fontFamily,
    this.textAlign,
    this.height,
    this.letterSpacing,
    this.maxLines,
    this.overFlow,
    this.fontStyle,
    this.gradient,
  }) : super(key: key);

  final Color color;
  final TextOverflow? overFlow;
  final String title;
  final double? size;
  final double? height;
  final FontWeight? fontWeight;
  final TextDecoration decoration;
  final FontStyle? fontStyle;
  final String? fontFamily;
  final TextAlign? textAlign;
  final double? letterSpacing;
  final int? maxLines;
  final Gradient? gradient;

  @override
  Widget build(BuildContext context) {
    return gradient != null
        ? ShaderMask(
            shaderCallback: (bounds) => gradient!.createShader(
              Rect.fromLTWH(0, 0, bounds.width, bounds.height),
            ),
            child: Text(
              title,
              style: GoogleFonts.inter(
                textStyle: TextStyle(
                  color: Colors.white, 
                  fontSize: size,
                  height: height ?? 1.2,
                  fontStyle: fontStyle,
                  fontWeight: fontWeight,
                  decoration: decoration,
                  letterSpacing: letterSpacing,
                ),
              ),
              overflow: overFlow,
              textAlign: textAlign,
              maxLines: maxLines,
            ),
          )
        : Text(
            title,
            style: GoogleFonts.inter(
              textStyle: TextStyle(
                color: color,
                fontSize: size,
                height: height ?? 1.2,
                fontStyle: fontStyle,
                fontWeight: fontWeight,
                decoration: decoration,
                letterSpacing: letterSpacing,
              ),
            ),
            overflow: overFlow,
            textAlign: textAlign,
            maxLines: maxLines,
          );
  }
}
