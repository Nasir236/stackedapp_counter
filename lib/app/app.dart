import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:stackedapp_counter/services/counter_services.dart';
import 'package:stackedapp_counter/views/counter_views.dart';
import 'package:stackedapp_counter/views/home_views.dart';

@StackedApp(
  routes: [
    MaterialRoute(page: CounterViews, initial: true),
    MaterialRoute(page: HomeViews),
  ],
  dependencies: [
    Singleton(classType: NavigationService),
    LazySingleton(classType: CounterServices),
  ],
)
class MyApp {}
