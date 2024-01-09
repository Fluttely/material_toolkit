import 'package:flutter/material.dart';

ThemeData get darkRedTheme => ThemeData(
      // brightness: Brightness.dark,
      colorScheme: ColorScheme.fromSeed(
        seedColor: Colors.red,
        brightness: Brightness.dark,
      ).copyWith(),
      iconTheme: const IconThemeData(),
    );
