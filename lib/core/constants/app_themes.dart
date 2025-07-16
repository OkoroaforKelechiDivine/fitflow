import 'package:fitflow/core/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

final fitflowTheme = ThemeData(
  useMaterial3: true,
  scaffoldBackgroundColor: AppColors.white,
  primaryColor: AppColors.yellow,
  textTheme: _fitflowTextTheme,
  colorScheme: ColorScheme.fromSwatch(
    // primarySwatch: AppColors.yellow,
  ).copyWith(
    surface: AppColors.white,
    secondary: AppColors.deepBlack,
    onPrimary: AppColors.white,
    brightness: Brightness.light,
  ),
  appBarTheme: AppBarTheme(
    elevation: 0,
    backgroundColor: AppColors.white,
    titleTextStyle: _baseTextStyle.copyWith(
      fontSize: 20.sp,
      fontWeight: FontWeight.w700,
    ),
    iconTheme: IconThemeData(size: 24.sp),
    actionsIconTheme: IconThemeData(size: 24.sp),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: AppColors.yellow,
      foregroundColor: AppColors.deepBlack,
      textStyle: _baseTextStyle.copyWith(
        fontSize: 16.sp,
        fontWeight: FontWeight.w600,
      ),
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 12.h),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.r),
      ),
    ),
  ),
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
      textStyle: _baseTextStyle.copyWith(
        fontSize: 14.sp,
        fontWeight: FontWeight.w500,
      ),
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
    ),
  ),
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      textStyle: _baseTextStyle.copyWith(
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
    labelStyle: _baseTextStyle.copyWith(fontSize: 14.sp),
    hintStyle: _baseTextStyle.copyWith(fontSize: 14.sp),
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
    selectedLabelStyle: _baseTextStyle.copyWith(
      fontSize: 12.sp,
      fontWeight: FontWeight.w600,
    ),
    unselectedLabelStyle: _baseTextStyle.copyWith(
      fontSize: 12.sp,
      fontWeight: FontWeight.w400,
    ),
  ),
  snackBarTheme: SnackBarThemeData(
    contentTextStyle: _baseTextStyle.copyWith(fontSize: 14.sp),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12.r),
    ),
    behavior: SnackBarBehavior.floating,
  ),
);

final TextStyle _baseTextStyle = TextStyle(
  fontSize: 14.sp,
  fontWeight: FontWeight.normal,
);

final TextTheme _fitflowTextTheme = TextTheme(
  displayLarge: _baseTextStyle.copyWith(fontSize: 32.sp, fontWeight: FontWeight.w700),
  displayMedium: _baseTextStyle.copyWith(fontSize: 28.sp, fontWeight: FontWeight.w600),
  headlineLarge: _baseTextStyle.copyWith(fontSize: 24.sp, fontWeight: FontWeight.w600),
  headlineMedium: _baseTextStyle.copyWith(fontSize: 20.sp, fontWeight: FontWeight.w600),
  titleLarge: _baseTextStyle.copyWith(fontSize: 18.sp, fontWeight: FontWeight.w500),
  bodyLarge: _baseTextStyle.copyWith(fontSize: 16.sp, fontWeight: FontWeight.w400),
  bodyMedium: _baseTextStyle.copyWith(fontSize: 12.sp, fontWeight: FontWeight.w500),
  labelLarge: _baseTextStyle.copyWith(fontSize: 14.sp, fontWeight: FontWeight.w500),
);
