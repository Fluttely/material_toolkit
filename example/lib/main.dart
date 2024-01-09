import 'package:example/design/theme/dark_red_theme.dart';
import 'package:example/design/theme/light_green_theme.dart';
import 'package:example/example.dart';
import 'package:material_toolkit/material_toolkit.dart';

void main() {
  runApp(const App());
}

final themeChange = ValueNotifier<ThemeData>(ThemeData());

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialX(
      child: ValueListenableBuilder(
        valueListenable: themeChange,
        builder: (_, value, __) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: value,
            home: const HomePage(
                // key: XMetricsData2.globalKey,
                ),
          );
        },
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
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
            child: XText(
              'Google Theme',
              style: TextStyle(
                fontSize: Theme.of(context).textTheme.bodyLarge!.fontSize,
              ),
            ),
          ),
          const AppCard(),
          const TextExample(),
          const AppListTile(),
          Card(
            elevation: XElevation.level5(context),
            child: const Column(
              children: [
                XIcon.x16(
                  Icons.menu,
                ),
                Icon(
                  Icons.menu,
                  size: 24,
                  // color: XColor.tertiary(context),
                ),
                AppIcon.bottomNavigation(Icons.menu),
              ],
            ),
          ),
          const ListTile(
            leading: XIcon.x64(
              Icons.menu,
              // color: XColor.error(context),
            ),
            // leading:
            // Icon(
            //             Icons.menu,
            //             size: 24,
            //             color: XColor.tertiary(context),
            //           ),
            // leading: AppIcon.bottomNavigation(Icons.menu),
          ),
        ],
      ),
    );
  }
}

class TextExample extends StatelessWidget {
  const TextExample({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return XCard(
      elevation: XElevation.level5(context),
      child: const Column(
        children: [
          XText.labelSmall('labelSmall'),
          XText.labelMedium('labelMedium'),
          XText.labelLarge('labelLarge'),
          XText.bodySmall('bodySmall'),
          XText.bodyMedium('bodyMedium'),
          XText.bodyLarge('bodyLarge'),
          XText.titleSmall('titleSmall'),
          XText.titleMedium('titleMedium'),
          XText.titleLarge('titleLarge'),
          XText.headlineSmall('headlineSmall'),
          XText.headlineMedium('headlineMedium'),
          XText.headlineLarge('headlineLarge'),
          XText.displaySmall('displaySmall'),
          XText.displayMedium('displayMedium'),
          XText.displayLarge('displayLarge'),
          XText(
            'Custom',
            xStyle: XTextTheme.displayMedium,
          ),
        ],
      ),
    );
  }
}

class AppListTile extends StatelessWidget {
  const AppListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return const ListTile(
      leading: XIcon.x64(
        Icons.menu,
        // color: XColor.error(context),
      ),
      // leading:
      // Icon(
      //             Icons.menu,
      //             size: 24,
      //             color: XColor.tertiary(context),
      //           ),
      // leading: AppIcon.bottomNavigation(Icons.menu),
    );
  }
}

class AppCard extends StatelessWidget {
  const AppCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: XEdgeInsets.allExtraLarge(context),
        child: Container(
          color: XColor.inversePrimary(context),
          margin: AppEdgeInsets.cardMargin(context),
          padding: AppEdgeInsets.cardMargin(context),
          child: const XText('AppCard'),
        ),
      ),
    );
  }
}
