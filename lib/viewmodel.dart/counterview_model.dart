import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:stackedapp_counter/app/app.locator.dart';
import 'package:stackedapp_counter/app/app.router.dart';
import 'package:stackedapp_counter/services/counter_services.dart';

class CounterViewModel extends BaseViewModel {
  final navigationService = locator<NavigationService>();
  final counterServices = locator<CounterServices>();

  addValue() {
    counterServices.addCounterValue();
    rebuildUi();
  }

  navigateToHome() {
    navigationService.navigateToHomeViews();
  }
}
