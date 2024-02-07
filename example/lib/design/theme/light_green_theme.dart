import 'package:material_toolkit/material_toolkit.dart';

ThemeData get lightGreenTheme => ThemeData(
      extensions: <ThemeExtension<dynamic>>[
        XMetricsData(),
      ],
      // brightness: Brightness.light,
      colorScheme: ColorScheme.fromSeed(
        seedColor: Colors.green,
        brightness: Brightness.light,
      ),
      iconTheme: const IconThemeData(),
    );
