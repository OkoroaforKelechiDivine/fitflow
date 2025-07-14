

import 'package:fitflow/core/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

extension HexColor on Color {
  static Color fromHex(String hexColorString) {
    hexColorString = hexColorString.replaceAll('#', '');
    if (hexColorString.length == 6) {
      hexColorString = "FF$hexColorString";
    }
    return Color(int.parse(hexColorString, radix: 16));
  }
}

ThemeData getApplicationTheme() {
  final TextStyle baseTextStyle = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.normal,
  );

  return ThemeData(
    scaffoldBackgroundColor: AppColors.deepBlack,
    appBarTheme: AppBarTheme(
      elevation: 0,
      titleTextStyle: baseTextStyle.copyWith(
        fontSize: 20.sp,
        fontWeight: FontWeight.w700,
      ),
      iconTheme: IconThemeData(
        size: 24.sp,
      ),
      actionsIconTheme: IconThemeData(
        size: 24.sp,
      ),
    ),
    textTheme: TextTheme(
      displayLarge: baseTextStyle.copyWith(
        fontSize: 32.sp,
        fontWeight: FontWeight.w700,
      ),
      displayMedium: baseTextStyle.copyWith(
        fontSize: 28.sp,
        fontWeight: FontWeight.w600,
      ),
      headlineLarge: baseTextStyle.copyWith(
        fontSize: 24.sp,
        fontWeight: FontWeight.w600,
      ),
      headlineMedium: baseTextStyle.copyWith(
        fontSize: 20.sp,
        fontWeight: FontWeight.w600,
      ),
      titleLarge: baseTextStyle.copyWith(
        fontSize: 18.sp,
        fontWeight: FontWeight.w500,
      ),
      bodyLarge: baseTextStyle.copyWith(
        fontSize: 16.sp,
        fontWeight: FontWeight.w400,
      ),
      bodyMedium: baseTextStyle.copyWith(
        fontSize: 14.sp,
        fontWeight: FontWeight.w400,
      ),
      labelLarge: baseTextStyle.copyWith(
        fontSize: 14.sp,
        fontWeight: FontWeight.w500,
      ),
    ),
    iconTheme: IconThemeData(
      size: 24.sp,
    ),
    primaryIconTheme: IconThemeData(
      size: 24.sp,
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        textStyle: baseTextStyle.copyWith(
          fontSize: 14.sp,
          fontWeight: FontWeight.w500,
        ),
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        textStyle: baseTextStyle.copyWith(
          fontSize: 16.sp,
          fontWeight: FontWeight.w600,
        ),
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 12.h),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.r),
        ),
        elevation: 2,
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        textStyle: baseTextStyle.copyWith(
          fontSize: 14.sp,
          fontWeight: FontWeight.w500,
        ),
        side: BorderSide(width: 1.5.w),
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 12.h),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.r),
        ),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12.r),
        borderSide: BorderSide(width: 1.w),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12.r),
        borderSide: BorderSide(width: 1.w),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12.r),
        borderSide: BorderSide(width: 2.w),
      ),
      labelStyle: baseTextStyle.copyWith(
        fontSize: 14.sp,
      ),
      hintStyle: baseTextStyle.copyWith(
        fontSize: 14.sp,
      ),
    ),
    dividerTheme: DividerThemeData(
      thickness: 1.w,
      space: 16.h,
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.r),
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedLabelStyle: baseTextStyle.copyWith(
        fontSize: 12.sp,
        fontWeight: FontWeight.w600,
      ),
      unselectedLabelStyle: baseTextStyle.copyWith(
        fontSize: 12.sp,
        fontWeight: FontWeight.w400,
      ),
    ),
    snackBarTheme: SnackBarThemeData(
      contentTextStyle: baseTextStyle.copyWith(
        fontSize: 14.sp,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.r),
      ),
      behavior: SnackBarBehavior.floating,
    ),
  );
}

