import 'package:fitflow/core/constants/app_colors.dart';
import 'package:fitflow/core/constants/app_themes.dart';
import 'package:fitflow/core/network/service_locator.dart';
import 'package:fitflow/ui/views/onboarding/splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:overlay_support/overlay_support.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return OverlaySupport(
      toastTheme: ToastThemeData(textColor: AppColors.deepBlack),
      child: ScreenUtilInit(
        builder: (context, child) {
          return GestureDetector(
            child: MaterialApp(
              navigatorKey: navigationService.navigatorKey,
              title: 'Figorate',
              debugShowCheckedModeBanner: false,
              theme: getApplicationTheme(),
              home: const SplashScreen(),
              routes: {
              }
            ),
          );
        },
      ),
    );
  }
}