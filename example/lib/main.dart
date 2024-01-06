import 'package:example/example.dart';
import 'package:material_toolkit/material_toolkit.dart';

ThemeData get theme => ThemeData(
      colorScheme: ColorScheme.fromSeed(
        seedColor: Colors.orange,
        brightness: Brightness.light,
      ).copyWith(),
      iconTheme: const IconThemeData(),
    );

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialX(
      child: MaterialApp(
        theme: theme,
        home: const HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        const AppCard(),
        XCard(
          elevation: 10,
          child: XPadding(
            padding: AppEdgeInsets.cardMargin(),
            child: const Text('ASDIUHSADUHAS'),
          ),
        ),
        const AppListTile(),
        const Card(
          // shape: ,

          child: Text('asda'),
        ),
        XIcon.x16(
          Icons.menu,
        ),
        Icon(
          Icons.menu,
          size: 24,
          color: XColor.tertiary(),
        ),
        AppIcon.bottomNavigation(Icons.menu),
      ]),
    );
  }
}

class AppListTile extends StatelessWidget {
  const AppListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: AppIcon.bottomNavigation(
        Icons.menu,
      ),
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
      child: Container(
        color: XColor.error(),
        margin: AppEdgeInsets.cardMargin(),
        padding: AppEdgeInsets.cardMargin(),
      ),
    );
  }
}
