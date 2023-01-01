import 'package:flutter/material.dart';
import 'package:jiratracker/application_layer/pages/landing_page/landing_page.dart';
import 'package:jiratracker/theme.dart';
import 'package:jiratracker/injection.dart' as di;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.dark,
      theme: AppTheme.darkTheme,
      home: const LandingPageWrapperProvider(),
    );
  }
}
