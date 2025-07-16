import 'package:fitflow/core/constants/app_colors.dart';
import 'package:fitflow/ui/views/onboarding/splash/splash_screen_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked/stacked.dart';
import 'package:word_colorizer/word_colorizer.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      onViewModelReady: (viewModel) {
        viewModel.initializeSplashScreen();
      },
      viewModelBuilder: () => SplashScreenViewModel(),
      builder: (context, model, _) {
        return Scaffold(
          backgroundColor: AppColors.deepBlack,
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                WordColorizer(
                  text: "FitFlow.",
                  defaultColor: AppColors.white,
                  highlightWordsWithColors: {
                    "Fit": AppColors.yellow,
                    ".": AppColors.yellow
                  },
                  fontFamily: 'Google.Nunito',
                  fontWeight: FontWeight.w700,
                  fontSize: 40.sp,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}