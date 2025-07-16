
import 'package:fitflow/core/network/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class SplashScreenViewModel extends BaseViewModel {
  Future<void> initializeSplashScreen() async {
    await Future.delayed(const Duration(seconds: 30));
    navigationService.pushReplacement(const Text(""));
  }
}