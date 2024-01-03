import 'package:material_toolkit/material_toolkit.dart';

final ThemeData themeData = ThemeData(
  colorScheme: ColorScheme(
    // primaryColor: Cor principal usada no app, para widgets como AppBar.
    primary: const Color(0xFF1E88E5), // Exemplo: Google Blue 600

    // primaryColorDark: Variação mais escura da cor primária.
    // primaryVariant: const Color(0xFF005CB2), // Exemplo: Google Blue 800

    // accentColor: Cor de destaque para elementos interativos como botões.
    secondary: const Color(0xFF00C853), // Exemplo: Google Green

    // Não tinha equivalente direto: Variação da cor secundária/accent.
    // secondaryVariant: const Color(0xFF009624), // Exemplo: Google Green 800

    // cardColor: Cor de fundo para cards.
    surface: Colors.white,

    // scaffoldBackgroundColor: Cor de fundo do Scaffold.
    background: const Color(0xFFE0E0E0), // Exemplo: Google Grey 300

    // errorColor: Cor para indicar erros.
    error: const Color(0xFFD32F2F), // Exemplo: Google Red

    // Não tinha equivalente direto: Cor para texto/icones sobre primary.
    onPrimary: Colors.white,

    // Não tinha equivalente direto: Cor para texto/icones sobre secondary.
    onSecondary: Colors.white,

    // Geralmente relacionado a texto sobre fundos claros/escuros.
    onSurface: Colors.black,

    // Não tinha equivalente direto: Cor para texto/icones sobre background.
    onBackground: Colors.black,

    // Não tinha equivalente direto: Cor para texto/icones sobre erros.
    onError: Colors.white,

    // brightness: Configuração geral de tema claro/escuro.
    brightness: Brightness.light,

    // Não tinha equivalente direto: Cor para containers sobre primary.
    onPrimaryContainer: const Color(0xFFBBDEFB), // Exemplo: Google Blue 100

    // Não tinha equivalente direto: Cor para containers primários.
    primaryContainer: const Color(0xFF1565C0), // Exemplo: Google Blue 700

    // Não tinha equivalente direto: Cor para containers de erro.
    errorContainer: const Color(0xFFF44336), // Exemplo: Google Red 500

    // Não tinha equivalente direto: Cor inversa de primary.
    inversePrimary: const Color(0xFFCDDC39), // Exemplo: Google Lime

    // Não tinha equivalente direto: Cor inversa de surface.
    inverseSurface: const Color(0xFF424242), // Exemplo: Google Grey 800

    // Não tinha equivalente direto: Cor para texto/icones sobre containers de erro.
    onErrorContainer: Colors.black,

    // Não tinha equivalente direto: Cor para texto/icones sobre secondary containers.
    onSecondaryContainer: const Color(0xFFA5D6A7), // Exemplo: Google Green 200

    // Não tinha equivalente direto: Variação de cor para superfícies.
    onSurfaceVariant: Colors.grey.shade500,

    // Não tinha equivalente direto.
    tertiary: const Color(0xFFFFC107), // Exemplo: Google Amber
    onInverseSurface: Colors.white,
    onTertiary: Colors.black,
    onTertiaryContainer: const Color(0xFFFFECB3), // Exemplo: Google Amber 100
    outline: const Color(0xFFBDBDBD), // Exemplo: Google Grey 400
    outlineVariant: const Color(0xFF757575), // Exemplo: Google Grey 600
    scrim: const Color(0xFF757575), // Exemplo: Google Grey 600
    secondaryContainer: const Color(0xFF66BB6A), // Exemplo: Google Green 400
    shadow: const Color(0xFFBDBDBD), // Exemplo: Google Grey 400
    surfaceTint: const Color(0xFF1E88E5), // Exemplo: Google Blue 600
    surfaceVariant: const Color(0xFFEEEEEE), // Exemplo: Google Grey 200
    tertiaryContainer: const Color(0xFFFFD54F), // Exemplo: Google Amber 300

    // Outras propriedades podem ser adicionadas conforme a necessidade do design do app.
  ),
  // ... outros ajustes de tema podem ser adicionados aqui
);
