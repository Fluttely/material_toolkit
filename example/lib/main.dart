import 'package:example/example.dart';
import 'package:material_toolkit/material_toolkit.dart';

// class XThemeData {
//   final XMetricsData metrics;
// }

final theme = ThemeData(
  iconTheme: const IconThemeData(
    size: 30.0,
  ),
);

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: const [
        AppCard(),
        XCard(),
        AppListTile(),
      ]),
    );
  }
}

class AppListTile extends StatelessWidget {
  const AppListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: AppIcon.homeLogo(
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
        color: Colors.red,
        margin: AppEdgeInsets.cardMargin(),
        padding: AppEdgeInsets.cardPadding(),
        child: AppText.ada('Hello World!'),
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
          padding: XEdgeInsets.all(mX.metrics.sizes.spacing.extraLarge),
          child: XText(
            'Hello World!',
            style: mX.theme.textTheme.bodyLarge,
          ),
        ),
      ),
    );
  }
}
