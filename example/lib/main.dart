import 'package:example/design/theme/dark_red_theme.dart';
import 'package:example/design/theme/light_green_theme.dart';
import 'package:example/example.dart';
import 'package:material_toolkit/material_toolkit.dart';

void main() {
  runApp(const App());
}

final themeChange = ValueNotifier<ThemeData>(ThemeData(
  extensions: const <ThemeExtension<dynamic>>[
    XMetricsData(),
  ],
));

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return
        // MaterialX(
        //   child:
        ValueListenableBuilder(
      valueListenable: themeChange,
      builder: (_, value, __) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: value,
          home: const HomePage(),
        );
      },
      // ),
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
          ThemeExample(),
          XTextExample(),
          XIconExample(),
          XColorExample(),
        ],
      ),
    );
  }
}

class ThemeExample extends StatelessWidget {
  const ThemeExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () {
            themeChange.value = darkRedTheme;
          },
          child: const Text('Dark Red Theme'),
        ),
        ElevatedButton(
          onPressed: () {
            themeChange.value = lightGreenTheme;
          },
          child: const Text('Light Green Theme'),
        ),
        ElevatedButton(
          onPressed: () {
            themeChange.value = googleTheme;
          },
          child: Text(
            'Google Theme',
            style: TextStyle(
              fontSize: Theme.of(context).textTheme.bodyLarge!.fontSize,
            ),
          ),
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
          child: const XText.displayLarge('displayLarge'),
        ),
        // ElevatedButton(onPressed:(){},
        //   'Custom',
        //   xStyle: XTextTheme.displayMedium,child:const XText(),
        // ),
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
        ElevatedButton(onPressed: () {}, child: const XIcon.x16(Icons.add)),
        ElevatedButton(onPressed: () {}, child: const XIcon.x24(Icons.add)),
        ElevatedButton(onPressed: () {}, child: const XIcon.x32(Icons.add)),
        ElevatedButton(onPressed: () {}, child: const XIcon.x64(Icons.add)),
        ElevatedButton(onPressed: () {}, child: const XIcon.x128(Icons.add)),
        ElevatedButton(onPressed: () {}, child: const XIcon.x256(Icons.add)),
      ],
    );
  }
}

class XColorExample extends StatelessWidget {
  const XColorExample({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: XColor.scrim(context),
            foregroundColor: XColor.primary(context),
          ),
          child: const XText(
            'background Color',
          ),
        ),
      ],
    );
  }
}
