import 'dart:math';

import 'package:flutter/material.dart';

/// class containing methods for class generators
class ColorGenerator {
  static final Random _random = Random();

  /// Maximum number of color division
  static const int colorNum = 256;

  /// Maximum luminance to switch text color
  static const double luminanceLim = 0.5;

  /// Generate random color
  static Color getRandomColor() {
    return Color.fromARGB(
      _random.nextInt(colorNum),
      _random.nextInt(colorNum),
      _random.nextInt(colorNum),
      _random.nextInt(colorNum),
    );
  }

  /// Generate text color to handle for contrasting backgrounds
  static Color getTextColor(Color color) {
    return color.computeLuminance() > luminanceLim
        ? Colors.black87
        : Colors.white;
  }
}
