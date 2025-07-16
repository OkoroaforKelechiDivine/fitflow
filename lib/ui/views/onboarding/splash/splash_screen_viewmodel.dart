
import 'package:fitflow/core/network/service_locator.dart';
import 'package:fitflow/ui/views/onboarding/intro/get_started.dart';
import 'package:stacked/stacked.dart';

class SplashScreenViewModel extends BaseViewModel {
  Future<void> initializeSplashScreen() async {
    await Future.delayed(const Duration(seconds: 15));
    navigationService.pushAndRemoveUntil(GetStartedScreen());
  }
}