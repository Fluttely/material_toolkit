import 'package:flutter/material.dart';

ThemeData get lightGreenTheme => ThemeData(
      // brightness: Brightness.light,
      colorScheme: ColorScheme.fromSeed(
        seedColor: Colors.green,
        brightness: Brightness.light,
      ).copyWith(),
      iconTheme: const IconThemeData(),
    );
