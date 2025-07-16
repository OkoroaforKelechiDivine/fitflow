import 'package:fitflow/core/constants/app_colors.dart';
import 'package:fitflow/core/constants/strings.dart';
import 'package:fitflow/ui/views/onboarding/intro/get_started_viewmodel.dart';
import 'package:fitflow/ui/widgets/custom_button.dart';
import 'package:fitflow/ui/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked/stacked.dart';
import 'package:word_colorizer/word_colorizer.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.nonReactive(
      viewModelBuilder: () => GetStartedViewModel(),
      builder: (context, viewmodel, child) {
        return Scaffold(
          body: SafeArea(
            child: SingleChildScrollView(
              padding: EdgeInsets.symmetric(horizontal: 40.w, vertical: 24.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 30.h),
                  Image.asset(
                    ImagesConstant.intro,
                    fit: BoxFit.contain,
                  ),
                  SizedBox(height: 10.h),
                  WordColorizer(
                    text: "FitFlow.",
                    defaultColor: AppColors.yellow,
                    highlightWordsWithColors: {
                      "Flow": AppColors.deepBlack,
                    },
                    fontFamily: "Google.Nunito",
                    fontWeight: FontWeight.bold,
                    fontSize: 30.sp,
                  ),
                  SizedBox(height: 5.h),
                  CustomText(
                    text: "Empower your journey. Embrace your strength. Transform your life.",
                    isCenterAligned: true,
                    fontWeight: FontWeight.w500,
                    color: AppColors.deepBlack,
                  ),
                  SizedBox(height: 60.h),
                  CustomGestureButton(
                    text: "Get Started >",
                    backgroundColor: AppColors.yellow,
                    onPressed: viewmodel.navigateToCreateAccount,
                  ),
                  SizedBox(height: 20.h),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
