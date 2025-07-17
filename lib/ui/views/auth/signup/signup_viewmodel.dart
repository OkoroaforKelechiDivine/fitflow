import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class SignUpViewModel extends BaseViewModel {

  final TextEditingController emailController = TextEditingController();
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();

  bool _isButtonEnabled = false;
  bool get isButtonEnabled => _isButtonEnabled;
  bool isValidEmail(String email) => _isValidEmail(email);


  String? emailError;
  String? usernameError;
  String? passwordError;
  String? confirmPasswordError;

  SignUpViewModel() {
    emailController.addListener(_onTextChanged);
    usernameController.addListener(_onTextChanged);
    passwordController.addListener(_onTextChanged);
    confirmPasswordController.addListener(_onTextChanged);
  }

  void _onTextChanged() {
    final email = emailController.text.trim();
    final username = usernameController.text.trim();
    final password = passwordController.text;
    final confirmPassword = confirmPasswordController.text;

    _isButtonEnabled = email.isNotEmpty && username.isNotEmpty && password.isNotEmpty && confirmPassword.isNotEmpty && password == confirmPassword;
    notifyListeners();
  }

  void validateFormAndProceed() {
    emailError = null;
    usernameError = null;
    passwordError = null;
    confirmPasswordError = null;

    final email = emailController.text.trim();
    final username = usernameController.text.trim();
    final password = passwordController.text;
    final confirmPassword = confirmPasswordController.text;

    bool hasError = false;

    if (!_isValidEmail(email)) {
      emailError = "Enter a valid email";
      hasError = true;
    }

    if (username.length < 3) {
      usernameError = "Username must be at least 3 characters";
      hasError = true;
    }

    if (password.length < 6) {
      passwordError = "Password must be at least 6 characters";
      hasError = true;
    }

    if (password != confirmPassword) {
      confirmPasswordError = "Passwords do not match";
      hasError = true;
    }
    notifyListeners();

    if (hasError) return;
  }

  bool _isValidEmail(String email) {
    final emailRegex = RegExp(r"^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$");
    return emailRegex.hasMatch(email);
  }

  @override
  void dispose() {
    emailController.dispose();
    usernameController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }
}
