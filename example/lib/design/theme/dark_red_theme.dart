import 'package:material_toolkit/material_toolkit.dart';

ThemeData get darkRedTheme => ThemeData(
      extensions: <ThemeExtension<dynamic>>[
        XMetricsData(),
      ],
      // brightness: Brightness.dark,
      colorScheme: ColorScheme.fromSeed(
        seedColor: Colors.red,
        brightness: Brightness.dark,
      ),
      iconTheme: const IconThemeData(),
    );
