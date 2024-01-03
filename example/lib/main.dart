import 'package:example/example.dart';
import 'package:material_toolkit/material_toolkit.dart';

// class XThemeData {
//   final XMetricsData metrics;
// }

ThemeData theme(BuildContext context) => ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.red)
          .copyWith(background: Colors.blue),
      iconTheme: const IconThemeData(
          // size: MaterialX.of(context).metrics.iconSizes.medium,
          ),
    );

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialX(
      theme: theme(context),
      child: const App(),
    );
  }
}

class App extends StatelessWidget {
  const App({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme(context),
      home: const HomePage(),
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
        const XCard(),
        const AppListTile(),
        XIcon.large(
          Icons.menu,
        ),
        Icon(
          Icons.menu,
          size: 24,
          color: XColor.tertiary(context),
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
    // final mX = MaterialX.of(context);

    return AppPadding.listTile(
      child: Container(
        color: XColor.error(context),
        margin: AppEdgeInsets.cardMargin(),
        padding: AppEdgeInsets.cardPadding(),
        child: AppText.ada('Hello World 1!'),
      ),
    );
  }
}

class XCard extends StatelessWidget {
  const XCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final mX = MaterialX.of(context);

    return XPadding.allExtraLarge(
      child: Container(
        color: Colors.red,
        margin: XEdgeInsets.allLarge(),
        padding: XEdgeInsets.allExtraLarge(),
        child: XPadding(
          padding: XEdgeInsets.all(mX.metrics.spacing.extraLarge),
          child: XText(
            'Hello World! 2',
            style: mX.theme.textTheme.bodyLarge,
          ),
        ),
      ),
    );
  }
}
