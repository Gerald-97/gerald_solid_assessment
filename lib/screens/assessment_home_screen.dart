import 'package:flutter/material.dart';
import 'package:gerald_solid_assessment/methods/color_generator.dart';

/// Root screen for app UI
class AssessmentHomeScreen extends StatefulWidget {
  /// Constructor instance for home screen
  const AssessmentHomeScreen({super.key});

  @override
  State<AssessmentHomeScreen> createState() => _AssessmentHomeScreenState();
}

class _AssessmentHomeScreenState extends State<AssessmentHomeScreen> {
  Color backgroundColor = Colors.deepPurple;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        toolbarHeight: 0,
        elevation: 0,
        systemOverlayStyle:
            Theme.of(context).appBarTheme.systemOverlayStyle?.copyWith(
                  systemNavigationBarColor: backgroundColor,
                  statusBarColor: backgroundColor,
                ),
      ),
      body: SafeArea(
        child: Container(
          key: Key("0"),
          color: backgroundColor,
          child: Center(
            child: InkWell(
              onTap: () {
                setState(() {
                  backgroundColor = ColorGenerator.getRandomColor();
                });
              },
              child: Text(
                "Hello there",
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      color: ColorGenerator.getTextColor(backgroundColor),
                    ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
