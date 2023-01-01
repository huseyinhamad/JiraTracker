import 'package:get_it/get_it.dart';
import 'package:jiratracker/application_layer/pages/landing_page/cubit/landing_cubit.dart';

final locator = GetIt.instance;

Future<void> init() async {
  // Application Layer
  locator.registerFactory(() => LandingCubit());
  return Future.value();
}
