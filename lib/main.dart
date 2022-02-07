import 'package:flutter/material.dart';
import 'views/onboarding_page.dart';
import 'views/login_page.dart';


void main() {
  runApp( MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: OnboardingPage(),
      initialRoute: 'OnboardingPage',
    );
  }
}