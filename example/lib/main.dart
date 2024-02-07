import 'package:example/design/theme/dark_red_theme.dart';
import 'package:example/design/theme/light_green_theme.dart';
import 'package:example/example.dart';
import 'package:material_toolkit/material_toolkit.dart';

void main() {
  runApp(const App());
}

final themeChange = ValueNotifier<ThemeData>(ThemeData(
  extensions: <ThemeExtension<dynamic>>[
    XMetricsData(),
  ],
));

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: themeChange,
      builder: (_, value, __) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: value,
          home: const HomePage(),
        );
      },
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: const [
          XThemeExample(),
          XTextExample(),
          XIconExample(),
          XColorSchemeExample(),
        ],
      ),
    );
  }
}

class XThemeExample extends StatelessWidget {
  const XThemeExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () {
            themeChange.value = darkRedTheme;
          },
          child: const XText.bodyLarge('Dark Red Theme'),
        ),
        ElevatedButton(
          onPressed: () {
            themeChange.value = lightGreenTheme;
          },
          child: const XText.bodyLarge('Light Green Theme'),
        ),
        ElevatedButton(
          onPressed: () {
            themeChange.value = googleTheme;
          },
          child: const XText.bodyLarge('Google Theme'),
        ),
      ],
    );
  }
}

class XTextExample extends StatelessWidget {
  const XTextExample({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () {},
          child: const XText.labelSmall('labelSmall'),
        ),
        ElevatedButton(
          onPressed: () {},
          child: const XText.labelMedium('labelMedium'),
        ),
        ElevatedButton(
          onPressed: () {},
          child: const XText.labelLarge('labelLarge'),
        ),
        ElevatedButton(
          onPressed: () {},
          child: const XText.bodySmall('bodySmall'),
        ),
        ElevatedButton(
          onPressed: () {},
          child: const XText.bodyMedium('bodyMedium'),
        ),
        ElevatedButton(
          onPressed: () {},
          child: const XText.bodyLarge('bodyLarge'),
        ),
        ElevatedButton(
          onPressed: () {},
          child: const XText.titleSmall('titleSmall'),
        ),
        ElevatedButton(
          onPressed: () {},
          child: const XText.titleMedium('titleMedium'),
        ),
        ElevatedButton(
          onPressed: () {},
          child: const XText.titleLarge('titleLarge'),
        ),
        ElevatedButton(
          onPressed: () {},
          child: const XText.headlineSmall('headlineSmall'),
        ),
        ElevatedButton(
          onPressed: () {},
          child: const XText.headlineMedium('headlineMedium'),
        ),
        ElevatedButton(
          onPressed: () {},
          child: const XText.headlineLarge('headlineLarge'),
        ),
        ElevatedButton(
          onPressed: () {},
          child: const XText.displaySmall('displaySmall'),
        ),
        ElevatedButton(
          onPressed: () {},
          child: const XText.displayMedium('displayMedium'),
        ),
        ElevatedButton(
          onPressed: () {},
          child: const XText(
            'displayLarge',
            xStyle: XTextTheme.displayLarge,
          ),
        ),
        ElevatedButton(
          onPressed: () {},
          child: XText.custom(
            'Custom',
            style: TextStyle(
              color: XColorScheme.error(context),
              fontSize: Theme.of(context).textTheme.bodyMedium?.fontSize,
            ),
          ),
        ),
      ],
    );
  }
}

class XIconExample extends StatelessWidget {
  const XIconExample({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(),
        ElevatedButton(onPressed: () {}, child: const XIcon.small(Icons.add)),
        ElevatedButton(onPressed: () {}, child: const XIcon.medium(Icons.add)),
        ElevatedButton(onPressed: () {}, child: const XIcon.large(Icons.add)),
        ElevatedButton(
            onPressed: () {}, child: const XIcon.extraLarge(Icons.add)),
        ElevatedButton(
            onPressed: () {}, child: const XIcon.superLarge(Icons.add)),
        Container(
          decoration: BoxDecoration(
            boxShadow: [
              Theme.of(context).extension<XMetricsData>()!.xBoxShadows.large,
            ],
          ),
          child: XIcon(
            Icons.add,
            xSize: XIconSizes.medium,
            color: Theme.of(context).colorScheme.error,
            shadows: const [],
          ),
        ),
      ],
    );
  }
}

class XColorSchemeExample extends StatelessWidget {
  const XColorSchemeExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: XColorScheme.scrim(context),
            foregroundColor: XColorScheme.primary(context),
            elevation:
                Theme.of(context).extension<XMetricsData>()?.xElevations.level5,
          ),
          child: const XText(
            'background Color',
          ),
        ),
      ],
    );
  }
}
