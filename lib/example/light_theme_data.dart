import 'package:material_toolkit/material_toolkit.dart';

final lightGoogleThemeData = ThemeData(
  extensions: <ThemeExtension<dynamic>>[
    XMetricsData(),
    XAssetsData(),
  ],
  colorScheme: ColorScheme.fromSeed(
    seedColor: const Color(0xFF1E88E5),

    // primaryColor: Main color used in the app, for widgets like AppBar.
    primary: const Color(0xFF1E88E5), // Example: Google Blue 600

    // accentColor: Highlight color for interactive elements like buttons.
    secondary: const Color(0xFF00C853), // Example: Google Green

    // cardColor: Background color for cards.
    surface: Colors.white,

    // scaffoldBackgroundColor: Scaffold background color.
    background: const Color(0xFFE0E0E0), // Example: Google Grey 300

    // errorColor: Color to indicate errors.
    error: const Color(0xFFD32F2F), // Example: Google Red

    // No direct equivalent: Color for text/icons on primary.
    onPrimary: Colors.white,

    // No direct equivalent: Color for text/icons on secondary.
    onSecondary: Colors.white,

    // Usually related to text on light/dark backgrounds.
    onSurface: Colors.black,

    // No direct equivalent: Color for text/icons on background.
    onBackground: Colors.black,

    // No direct equivalent: Color for text/icons on errors.
    onError: Colors.white,

    // brightness: Overall light/dark theme setting.
    brightness: Brightness.light,

    // No direct equivalent: Color for containers on primary.
    onPrimaryContainer: const Color(0xFFBBDEFB), // Example: Google Blue 100

    // No direct equivalent: Color for primary containers.
    primaryContainer: const Color(0xFF1565C0), // Example: Google Blue 700

    // No direct equivalent: Color for error containers.
    errorContainer: const Color(0xFFF44336), // Example: Google Red 500

    // No direct equivalent: Inverse color of primary.
    inversePrimary: const Color(0xFFCDDC39), // Example: Google Lime

    // No direct equivalent: Inverse color of surface.
    inverseSurface: const Color(0xFF424242), // Example: Google Grey 800

    // No direct equivalent: Color for text/icons on error containers.
    onErrorContainer: Colors.black,

    // No direct equivalent: Color for text/icons on secondary containers.
    onSecondaryContainer: const Color(0xFFA5D6A7), // Example: Google Green 200

    // No direct equivalent: Color variation for surfaces.
    onSurfaceVariant: Colors.grey.shade500,

    // No direct equivalent.
    tertiary: const Color(0xFFFFC107), // Example: Google Amber
    onInverseSurface: Colors.white,
    onTertiary: Colors.black,
    onTertiaryContainer: const Color(0xFFFFECB3), // Example: Google Amber 100
    outline: const Color(0xFFBDBDBD), // Example: Google Grey 400
    outlineVariant: const Color(0xFF757575), // Example: Google Grey 600
    scrim: const Color(0xFF757575), // Example: Google Grey 600
    secondaryContainer: const Color(0xFF66BB6A), // Example: Google Green 400
    shadow: const Color(0xFFBDBDBD), // Example: Google Grey 400
    surfaceTint: const Color(0xFF1E88E5), // Example: Google Blue 600
    surfaceVariant: const Color(0xFFEEEEEE), // Example: Google Grey 200
    tertiaryContainer: const Color(0xFFFFD54F), // Example: Google Amber 300
  ),
);
