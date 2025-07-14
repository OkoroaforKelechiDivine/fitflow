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
  });

  @override
  Widget build(BuildContext context) {
    final baseStyle = style ??
        GoogleFonts.workSans(
          fontSize: fontSize ?? 14.sp,
          fontWeight: fontWeight ?? FontWeight.normal,
          color: color ?? Theme.of(context).textTheme.bodyMedium!.color,
          letterSpacing: letterSpacing,
          height: height,
          decoration: decoration,
        );

    final textWidget = Text(
      text,
      style: baseStyle,
      textAlign: textAlign,
      softWrap: softWrap,
      textDirection: textDirection,
    );

    return onTap != null
        ? GestureDetector(
            onTap: onTap,
            behavior: HitTestBehavior.opaque,
            child: isCenterAligned ? Center(child: textWidget) : textWidget,
          )
        : isCenterAligned ? Center(child: textWidget) : textWidget;
  }
}