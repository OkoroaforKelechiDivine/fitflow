import 'package:fitflow/core/constants/app_colors.dart';
import 'package:fitflow/ui/views/auth/signup/signup_viewmodel.dart';
import 'package:fitflow/ui/widgets/custom_button.dart';
import 'package:fitflow/ui/widgets/custom_inputfield.dart';
import 'package:fitflow/ui/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked/stacked.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SignUpViewModel>.reactive(
      viewModelBuilder: () => SignUpViewModel(),
      builder: (context, viewModel, child) => Scaffold(
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
            child: ListView(
              children: [
                CustomText(
                  text: 'Create an Account',
                  isCenterAligned: false,
                  fontSize: 22.sp,
                  fontWeight: FontWeight.w700,
                ),
                SizedBox(height: 30.h),
                CustomText(
                  text: "Username",
                  fontFamily: "Google.Causten",
                  isCenterAligned: false,
                  color: AppColors.deepBlack,
                ),
                SizedBox(height: 8.h),
                CustomInputField(
                  hintText: "Pick a name",
                  borderColor: AppColors.grey,
                  backgroundColor: AppColors.white,
                  keyboardType: TextInputType.name,
                  controller: viewModel.usernameController,
                ),
                SizedBox(height: 16.h),
                CustomText(
                  text: "Email",
                  fontFamily: "Google.Causten",
                  isCenterAligned: false,
                  color: AppColors.deepBlack,
                ),
                SizedBox(height: 8.h),
                CustomInputField(
                  hintText: "Your email address here",
                  borderColor: AppColors.grey,
                  backgroundColor: AppColors.white,
                  keyboardType: TextInputType.emailAddress,
                  controller: viewModel.emailController,
                ),
                SizedBox(height: 16.h),
                CustomText(
                  text: "Password",
                  fontFamily: "Google.Causten",
                  isCenterAligned: false,
                  color: AppColors.deepBlack,
                ),
                SizedBox(height: 8.h),
                CustomInputField(
                  hintText: "Enter your password",
                  borderColor: AppColors.grey,
                  backgroundColor: AppColors.white,
                  obscureText: true,
                  keyboardType: TextInputType.visiblePassword,
                  controller: viewModel.passwordController,
                ),
                SizedBox(height: 16.h),
                CustomText(
                  text: "Confirm Password",
                  fontFamily: "Google.Causten",
                  isCenterAligned: false,
                  color: AppColors.deepBlack,
                ),
                SizedBox(height: 8.h),
                CustomInputField(
                  hintText: "Recheck password",
                  borderColor: AppColors.grey,
                  backgroundColor: AppColors.white,
                  obscureText: true,
                  keyboardType: TextInputType.visiblePassword,
                  controller: viewModel.confirmPasswordController,
                ),
                SizedBox(height: 20.h),
                CustomGestureButton(
                  text: "Creat Account",
                  onPressed: viewModel.isButtonEnabled ? viewModel.validateFormAndProceed : null,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
