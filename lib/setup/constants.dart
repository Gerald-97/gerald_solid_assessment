import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/// Text style for headings
const TextStyle kHeadlineLarge = TextStyle(
  fontWeight: FontWeight.w700,
  color: Colors.black,
  fontSize: 28,
);

/// Text style for body titles
const TextStyle kBodyLarge = TextStyle(
  fontWeight: FontWeight.w600,
  color: Colors.black87,
  fontSize: 22,
);

/// Text style for other texts in app
const TextStyle kTitleLarge = TextStyle(
  fontWeight: FontWeight.w500,
  color: Colors.black45,
  fontSize: 17,
);

/// Light mode: Customizable overlay for device status bar
SystemUiOverlayStyle kOverlayLight({Color? statusColor, Color? navColor}) =>
    SystemUiOverlayStyle(
      statusBarColor: statusColor ?? Colors.white,
      statusBarBrightness: Brightness.light,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: navColor ?? Colors.white,
      systemNavigationBarIconBrightness: Brightness.dark,
      systemNavigationBarContrastEnforced: true,
    );

/// Dark mode: Customizable overlay for device status bar
SystemUiOverlayStyle kOverlayDark({Color? statusColor, Color? navColor}) =>
    SystemUiOverlayStyle(
      statusBarColor: statusColor ?? Colors.deepPurple,
      statusBarBrightness: Brightness.dark,
      statusBarIconBrightness: Brightness.light,
      systemNavigationBarColor: navColor ?? Colors.deepPurple,
      systemNavigationBarIconBrightness: Brightness.light,
      systemNavigationBarContrastEnforced: true,
    );

/// Light mode: Custom app theme setup
final ThemeData kThemeData = ThemeData.light().copyWith(
  colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
  scaffoldBackgroundColor: Colors.transparent,
  primaryColor: Colors.deepPurple,
  useMaterial3: true,
  appBarTheme: AppBarTheme(
    systemOverlayStyle: kOverlayLight(),
    titleTextStyle: kBodyLarge,
  ),
  textTheme: const TextTheme(
    headlineLarge: kHeadlineLarge,
    bodyLarge: kBodyLarge,
    titleLarge: kTitleLarge,
  ),
);

/// Dark mode: Custom app theme setup
final ThemeData kThemeDataDark = ThemeData.dark().copyWith(
  colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
  scaffoldBackgroundColor: Colors.transparent,
  primaryColor: Colors.deepPurple,
  useMaterial3: true,
  appBarTheme: AppBarTheme(
    systemOverlayStyle: kOverlayDark(),
    titleTextStyle: kBodyLarge.copyWith(color: Colors.white),
  ),
  textTheme: TextTheme(
    headlineLarge: kHeadlineLarge.copyWith(color: Colors.white),
    bodyLarge: kBodyLarge.copyWith(color: Colors.white),
    titleLarge: kTitleLarge.copyWith(color: Colors.white),
  ),
);
