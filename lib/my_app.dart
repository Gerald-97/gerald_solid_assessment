import 'package:flutter/material.dart';
import 'package:gerald_solid_assessment/screens/assessment_home_screen.dart';
import 'package:gerald_solid_assessment/setup/constants.dart';

/// Root widget for assessment app
class MyApp extends StatelessWidget {
  /// Constructor instance for the root app.
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "SOLID assessment app",
      debugShowCheckedModeBanner: false,
      theme: kThemeData,
      darkTheme: kThemeDataDark,
      home: const AssessmentHomeScreen(),
    );
  }
}
