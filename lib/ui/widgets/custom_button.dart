import 'package:fitflow/core/constants/app_colors.dart';
import 'package:fitflow/ui/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomGestureButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String text;
  final bool isEnabled;
  final Color? textColor;
  final Color? borderColor;
  final Color? backgroundColor;
  final double? height;
  final double? width;
  final String? imagePath;
  final double? fontSize;
  final TextStyle? fontType;

  const CustomGestureButton({
    super.key,
    this.onPressed,
    required this.text,
    this.textColor,
    this.borderColor,
    this.backgroundColor,
    this.height,
    this.width,
    this.imagePath,
    this.fontSize,
    this.fontType,
    this.isEnabled = true,
  });

  @override
  Widget build(BuildContext context) {
    
    final Color finalBackgroundColor = isEnabled ? (backgroundColor ?? AppColors.white) : AppColors.grey;
    final Color finalTextColor = isEnabled ? (textColor ?? AppColors.white) : AppColors.white;
    // final Color finalBorderColor = borderColor ?? AppColors.grey;

    return GestureDetector(
      onTap: isEnabled ? onPressed : null,
      child: Container(
        width: width ?? double.infinity,
        height: height ?? 45.h,
        padding: EdgeInsets.symmetric(horizontal: 12.w),
        decoration: BoxDecoration(
          color: finalBackgroundColor,
          borderRadius: BorderRadius.circular(8.r),
          // border: Border.all(color: finalBorderColor, width: 1),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (imagePath != null) ...[
              Image.asset(imagePath!, height: 20.h, width: 20.w),
              SizedBox(width: 5.w),
            ],
            CustomText(
              text: text,
              color: finalTextColor,
              fontSize: fontSize ?? 12.sp,
              fontWeight: FontWeight.bold,
              isCenterAligned: true,
              // type: fontType,
              // overflow: TextOverflow.visible,
            ),
          ],
        ),
      ),
    );
  }
}