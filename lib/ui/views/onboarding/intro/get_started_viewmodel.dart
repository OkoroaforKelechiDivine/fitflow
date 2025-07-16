import 'package:stacked/stacked.dart';
import 'package:fitflow/core/network/service_locator.dart';

class GetStartedViewModel extends BaseViewModel {
  Future<void> navigateToCreateAccount() async {
    navigationService.pushNamed('/create-account');
  }
}