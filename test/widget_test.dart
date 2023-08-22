// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gerald_solid_assessment/my_app.dart';
import 'package:gerald_solid_assessment/screens/assessment_home_screen.dart';

void main() {
  testWidgets("Center button exists on homepage", (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MaterialApp(home: AssessmentHomeScreen()));

    // Verify that button exists on homepage
    expect(find.widgetWithText(InkWell, "Hello there"), findsOneWidget);
  });

  testWidgets("Verify initial color of Scaffold", (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MaterialApp(home: AssessmentHomeScreen()));

    await tester.pumpAndSettle(Duration(milliseconds: 500));
    final Container widget = tester.widget<Container>(find.byKey(Key("0")));

    expect(widget.color, Colors.deepPurple);
  });

  testWidgets("Verify changed color of Scaffold", (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MaterialApp(home: AssessmentHomeScreen()));

    await tester.pumpAndSettle(Duration(milliseconds: 500));

    // Initial color
    final Color? initialColor =
        (tester.widget<Container>(find.byKey(Key("0")))).color;

    // Simulate button click
    await tester.tap(find.byType(InkWell));
    await tester.pump();

    // Changed color
    final Color? changedColor =
        (tester.widget<Container>(find.byKey(Key("0")))).color;

    expect(initialColor != changedColor, isTrue);
  });
}
