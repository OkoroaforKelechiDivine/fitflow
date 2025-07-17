import 'package:fitflow/core/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomInputField extends StatefulWidget {
  final String hintText;
  final TextEditingController? controller;
  final bool obscureText;
  final bool isPasswordField;
  final TextInputType keyboardType;
  final Color? borderColor;
  final Color? backgroundColor;
  final String obscuringCharacter;

  const CustomInputField({
    super.key,
    required this.hintText,
    this.controller,
    this.obscureText = false,
    this.isPasswordField = false,
    this.keyboardType = TextInputType.text,
    this.borderColor,
    this.backgroundColor,
    this.obscuringCharacter = '•',
  });

  @override
  State<CustomInputField> createState() => _CustomInputFieldState();
}

class _CustomInputFieldState extends State<CustomInputField> {
  late bool _isHidden;

  @override
  void initState() {
    super.initState();
    _isHidden = widget.obscureText;
  }

  void _toggleVisibility() {
    setState(() => _isHidden = !_isHidden);
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      obscureText: widget.isPasswordField ? _isHidden : false,
      obscuringCharacter: widget.obscuringCharacter,
      keyboardType: widget.keyboardType,
      style: TextStyle(
        fontSize: 12.sp,
        color: AppColors.grey,
      ),
      decoration: InputDecoration(
        hintText: widget.hintText,
        hintStyle: TextStyle(
          color: AppColors.grey,
          fontSize: 12.sp,
        ),
        filled: true,
        fillColor: widget.backgroundColor ?? AppColors.grey,
        contentPadding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: BorderSide(
            color: widget.borderColor ?? AppColors.grey,
            width: 1,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: BorderSide(
            color: widget.borderColor ?? AppColors.deepBlack,
            width: 1,
            style: BorderStyle.solid
          ),
        ),
        suffixIcon: widget.isPasswordField
            ? IconButton(
                onPressed: _toggleVisibility,
                icon: Icon(
                  _isHidden ? Icons.visibility_off : Icons.visibility,
                  color: AppColors.grey,
                  size: 18.sp,
                ),
              )
            : null,
      ),
    );
  }
}