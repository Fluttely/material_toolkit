import 'package:example/example.dart';
import 'package:material_toolkit/material_toolkit.dart';

ThemeData get theme1 => ThemeData(
      // brightness: Brightness.dark,
      colorScheme: ColorScheme.fromSeed(
        seedColor: Colors.red,
        brightness: Brightness.dark,
      ).copyWith(),
      iconTheme: const IconThemeData(),
    );

ThemeData get theme2 => ThemeData(
      // brightness: Brightness.light,
      colorScheme: ColorScheme.fromSeed(
        seedColor: Colors.green,
        brightness: Brightness.light,
      ).copyWith(),
      iconTheme: const IconThemeData(),
    );

void main() {
  runApp(const App());
}

final themeChange = ValueNotifier<ThemeData>(ThemeData());

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return XMetricsData2(
      child: ValueListenableBuilder(
        valueListenable: themeChange,
        builder: (_, value, __) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: value,
            home: HomePage(
              key: XMetricsData2.globalKey,
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
              themeChange.value = theme1;
            },
            child: const Text('Change Theme 1'),
          ),
          ElevatedButton(
            onPressed: () {
              themeChange.value = theme2;
            },
            child: const Text('Change Theme 2'),
          ),
          const AppCard(),
          const Haha(),
          const AppListTile(),
          XCard(
            elevation: XElevation.level5(),
            child: Column(
              children: [
                XIcon.x16(
                  Icons.menu,
                ),
                const Icon(
                  Icons.menu,
                  size: 24,
                  // color: XColor.tertiary(context),
                ),
                const AppIcon.bottomNavigation(Icons.menu),
              ],
            ),
          ),
          ListTile(
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

class Haha extends StatelessWidget {
  const Haha({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Card(
      elevation: 10,
      //  XElevation.mediumSize().value,
      child: Column(
        children: [
          XText(
            'Custom',
            xTextTheme: XTextTheme.displayMedium,
          ),
          // XText.displaySmall('displaySmall'),
          // XText.displayMedium('displayMedium'),
          // XText.displayLarge('displayLarge'),
          // XText.headlineSmall('headlineSmall'),
          // XText.headlineMedium('headlineMedium'),
          XText.headlineLarge('headlineLarge'),
          XText.titleSmall('titleSmall'),
          XText.titleMedium('titleMedium'),
          XText.titleLarge('titleLarge'),
          XText.bodySmall('bodySmall'),
          XText.bodyMedium('bodyMedium'),
          XText.bodyLarge('bodyLarge'),
          XText.labelSmall('labelSmall'),
          XText.labelMedium('labelMedium'),
          XText.labelLarge('labelLarge'),
        ],
      ),
    );
  }
}

class AppListTile extends StatelessWidget {
  const AppListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
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
    return XPadding.allExtraLarge(
      // padding: XEdgeInsets.allExtraLarge(),
      child: Container(
        color: XColor.inversePrimary(context),
        margin: AppEdgeInsets.cardMargin(),
        padding: AppEdgeInsets.cardMargin(),
        child: const XText.bodyLarge('AppCard'),
      ),
    );
  }
}
