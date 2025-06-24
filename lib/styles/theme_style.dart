import 'package:flutter/material.dart';

//Color Scheme
final ColorScheme pastelColorScheme = ColorScheme(
  brightness: Brightness.light,

  primary: Color(0xFF9F85FF),      // Soft lavender (Buttons, Icons)
  onPrimary: Colors.white,         // Contrast for text on primary

  secondary: Color(0xFFF5B6E4),    // Light pink (Accent, Tags)
  onSecondary: Colors.white, // Text color on background

  surface: Color(0xFFF2EDF8),      // Card surfaces, message bubbles
  onSurface: Color(0xFF303030),

  tertiary: Color(0xFF6C63FF),     // Deep purple (Chat header/icons)
  onTertiary: Colors.white,

  error: Color(0xFFFF6F61),
  onError: Colors.white,
);



//Gradient on Background
BoxDecoration gradientBackground = const BoxDecoration(
  gradient: LinearGradient(
  colors: [Color(0xFFF5B6E4), Color(0xFF9F85FF)],
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
)

);
