import 'package:fitflow/core/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomText extends StatelessWidget {
  final String text;
  final TextStyle? style;
  final Color? color;
  final TextAlign textAlign;
  final bool isCenterAligned;
  final VoidCallback? onTap;
  final double? fontSize;
  final FontWeight? fontWeight;
  final double? letterSpacing;
  final double? height;
  final TextDecoration? decoration;
  final TextDirection? textDirection;
  final bool softWrap;
  final String? fontFamily;

  const CustomText({
    super.key,
    required this.text,
    this.style,
    this.color,
    this.textAlign = TextAlign.start,
    this.isCenterAligned = false,
    this.onTap,
    this.fontSize,
    this.fontWeight,
    this.letterSpacing,
    this.height,
    this.decoration,
    this.textDirection,
    this.softWrap = true,
    this.fontFamily,
  });

  @override
  Widget build(BuildContext context) {
    final TextStyle baseStyle;

    if (style != null) {
      baseStyle = style!;
    } else if (fontFamily != null) {
      baseStyle = TextStyle(
        fontFamily: fontFamily,
        fontSize: fontSize ?? 12.sp,
        fontWeight: fontWeight ?? FontWeight.normal,
        color: color ?? AppColors.deepBlack,
        letterSpacing: letterSpacing,
        height: height,
        decoration: decoration,
      );
    } else {
      baseStyle = GoogleFonts.workSans(
        fontSize: fontSize ?? 14.sp,
        fontWeight: fontWeight ?? FontWeight.normal,
        color: color ?? AppColors.deepBlack,
        letterSpacing: letterSpacing,
        height: height,
        decoration: decoration,
      );
    }

    final finalStyle = baseStyle.copyWith(
      color: color ?? (onTap != null ? AppColors.deepBlack : baseStyle.color),
    );

    final effectiveTextAlign = isCenterAligned ? TextAlign.center : textAlign;

    final textWidget = Text(
      text,
      style: finalStyle,
      textAlign: effectiveTextAlign,
      softWrap: softWrap,
      textDirection: textDirection,
    );

    final alignedWidget = isCenterAligned ? Center(child: textWidget) : textWidget;

    return onTap != null
        ? GestureDetector(
            onTap: onTap,
            behavior: HitTestBehavior.opaque,
            child: alignedWidget,
          )
        : alignedWidget;
  }
}
