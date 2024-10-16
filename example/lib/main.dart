import 'package:flutter/material.dart';
import 'package:material_toolkit/material_toolkit.dart';
import 'package:material_toolkit_example/notifiers/root_notifier.dart';
import 'package:material_toolkit_example/notifiers/theme_notifier.dart';
import 'package:material_toolkit_example/paiting/border_radius.dart';
import 'package:material_toolkit_example/widgets/group_card.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const DemoApp());
}

class DemoApp extends StatelessWidget {
  const DemoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<ThemeNotifier>(create: (_) => ThemeNotifier()),
        ChangeNotifierProvider<RootNotifier>(create: (_) => RootNotifier()),
      ],
      child: Consumer<ThemeNotifier>(
        builder: (_, themeNotifier, __) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: themeNotifier.primaryColor),
              extensions: [themeNotifier.metrics],
            ),
            home: const Root(),
          );
        },
      ),
    );
  }
}

class Root extends StatefulWidget {
  const Root({super.key});

  @override
  State<Root> createState() => _RootState();
}

class _RootState extends State<Root> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final textTheme = theme.textTheme;

    final metrics = theme.extension<XMetricsData>()!;
    final gaps = metrics.gap;
    // final inputBorders = metrics.inputBorders;
    // final breakpoints = metrics.breakpoints;

    final themeNotifier = Provider.of<ThemeNotifier>(context);
    final rootNotifier = Provider.of<RootNotifier>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Material Toolkit'),
        centerTitle: false,
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: rootNotifier.selectedIndex,
        onDestinationSelected: rootNotifier.onItemTapped,
        destinations: const <NavigationDestination>[
          NavigationDestination(
            icon: Icon(Icons.brush),
            label: 'Paiting',
          ),
          NavigationDestination(
            icon: Icon(Icons.category),
            label: 'Geometry',
          ),
          NavigationDestination(
            icon: Icon(Icons.text_fields),
            label: 'Text',
          ),
          NavigationDestination(
            icon: Icon(Icons.motion_photos_on),
            label: 'Animation',
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: themeNotifier.primaryColorTextFieldController,
              decoration: InputDecoration(
                labelText: 'Enter Primary Color (Hex, e.g. FF0000 for Red)',
                labelStyle: textTheme.bodyLarge?.copyWith(color: Colors.white),
                fillColor: colorScheme.primary,
                filled: true,
                isDense: true,
                // border: inputBorders.none,
              ),
              style: const TextStyle(color: Colors.white),
              cursorColor: Colors.white,
              onChanged: themeNotifier.updatePrimaryColor,
            ),
            gaps.large,
            ElevatedButton(
              onPressed: themeNotifier.resetMetricsData,
              child: Text(
                'Reset MetricsData to default',
                style: textTheme.bodyMedium?.copyWith(color: colorScheme.error),
              ),
            ),
            LayoutBuilder(
              builder: (context, constraints) {
                return ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 480),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    // child: ListView(
                    // shrinkWrap: true,
                    // scrollDirection:
                    //     constraints.maxWidth < breakpoints.mobile.maxWidth ? Axis.vertical : Axis.horizontal,
                    children: [
                      GroupCard(
                        title: 'Shapes',
                        children: [
                          // const RadiusGroup(),
                          // gaps.large,
                          const BorderRadiusGroup(),
                          gaps.large,
                          // XBorderShapes
                        ],
                      ),
                      // gaps.extraSmall,
                      // const GroupCard(
                      //   title: 'Shadows',
                      //   children: [
                      //     ElevationGroup(),
                      //   ],
                      // ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
