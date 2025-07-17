import 'package:flutter/material.dart';
import 'package:material_toolkit/material_toolkit.dart';

class ThemeProvider with ChangeNotifier {
  // Existing theme properties
  ThemeMode _themeMode = ThemeMode.light;
  Color _seedColor = const Color(0xFF6750A4);

  // Add page transition property
  PageTransitionsBuilder _selectedTransition =
      MaterialPageTransitionsBuilder.sharedAxisX;

  // Getters for all properties
  ThemeMode get themeMode => _themeMode;
  Color get seedColor => _seedColor;
  PageTransitionsBuilder get selectedTransition => _selectedTransition;

  ThemeData get lightTheme => ThemeData(
    colorScheme: ColorScheme.fromSeed(
      seedColor: _seedColor,
      brightness: Brightness.light,
    ),
    useMaterial3: true,
    pageTransitionsTheme: PageTransitionsTheme(
      builders: {
        TargetPlatform.android: _selectedTransition,
        TargetPlatform.iOS: _selectedTransition,
      },
    ),
  );

  ThemeData get darkTheme => ThemeData(
    colorScheme: ColorScheme.fromSeed(
      seedColor: _seedColor,
      brightness: Brightness.dark,
    ),
    useMaterial3: true,
    pageTransitionsTheme: PageTransitionsTheme(
      builders: {
        TargetPlatform.android: _selectedTransition,
        TargetPlatform.iOS: _selectedTransition,
      },
    ),
  );

  void changeThemeMode(ThemeMode newMode) {
    if (newMode == _themeMode) return;
    _themeMode = newMode;
    notifyListeners();
  }

  void changeSeedColor(Color newColor) {
    if (newColor == _seedColor) return;
    _seedColor = newColor;
    notifyListeners();
  }

  // Method to change the transition
  void changeTransition(PageTransitionsBuilder newTransition) {
    if (newTransition == _selectedTransition) return;
    _selectedTransition = newTransition;
    notifyListeners();
  }
}
