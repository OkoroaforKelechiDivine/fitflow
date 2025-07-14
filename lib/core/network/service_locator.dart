import 'package:fitflow/core/services/navigation_service.dart';
import 'package:get_it/get_it.dart';

final locator = GetIt.instance;

Future<void> setupLocator() async {
  locator.registerLazySingleton<NavigationService>(() => NavigationService());
  // locator.registerLazySingleton<SnackbarService>(() => SnackbarService());
}

NavigationService navigationService = locator.get<NavigationService>();
