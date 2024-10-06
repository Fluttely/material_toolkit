import 'package:flutter/material.dart';
import 'package:material_toolkit/material_toolkit.dart';
import 'package:material_toolkit_example/geometry/elevation.dart';
import 'package:material_toolkit_example/geometry/radius.dart';
import 'package:material_toolkit_example/paiting/border_radius.dart';
import 'package:material_toolkit_example/theme_notifier.dart';
import 'package:material_toolkit_example/widgets/group_card.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ThemeNotifier(),
      child: Consumer<ThemeNotifier>(
        builder: (_, themeNotifier, __) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: themeNotifier.primaryColor),
              extensions: [
                XMetricsData(
                  radii: themeNotifier.radiiData,
                )
              ],
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
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final themeNotifier = Provider.of<ThemeNotifier>(context);
    final metrics = theme.extension<XMetricsData>()!;
    final colorScheme = theme.colorScheme;
    final textTheme = theme.textTheme;
    final gaps = metrics.gaps;
    final breakpoints = metrics.breakpoints;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Material Toolkit'),
        centerTitle: false,
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: _selectedIndex,
        onDestinationSelected: _onItemTapped,
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
      body: Column(
        children: [
          TextField(
            decoration: InputDecoration(
              labelText: 'Enter Primary Color (Hex, e.g. FF0000 for Red)',
              fillColor: colorScheme.primary,
              filled: true,
              labelStyle: textTheme.bodyLarge?.copyWith(
                color: Colors.white,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(0),
              ),
            ),
            style: const TextStyle(
              color: Colors.white,
            ),
            cursorColor: Colors.white,
            onChanged: (value) {
              themeNotifier.updatePrimaryColor(value);
            },
          ),
          gaps.large,
          Container(
            height: 50,
            width: double.infinity,
            color: colorScheme.primary,
            child: Center(
              child: Text(
                'Primary Color Preview',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Colors.white,
                    ),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              themeNotifier.updateRadiiData(
                const XRadiiData(
                  extraSmall: Radius.circular(4),
                  small: Radius.circular(8),
                  semiSmall: Radius.circular(12),
                  medium: Radius.circular(16),
                  semiLarge: Radius.circular(20),
                  large: Radius.circular(24),
                  extraLarge: Radius.circular(32),
                  superLarge: Radius.circular(48),
                ),
              );
            },
            child: const Text('Radii standard(reset)'),
          ),
          ElevatedButton(
            onPressed: () {
              themeNotifier.updateRadiiData(
                const XRadiiData(
                  extraSmall: Radius.circular(13),
                  small: Radius.circular(13),
                  semiSmall: Radius.circular(19),
                  medium: Radius.circular(25),
                  semiLarge: Radius.circular(30),
                  large: Radius.circular(60),
                  extraLarge: Radius.circular(60),
                  superLarge: Radius.circular(60),
                ),
              );
            },
            child: const Text('Radii standard(asda)'),
          ),
          ElevatedButton(
            onPressed: () {
              themeNotifier.updateRadiiData(
                const XRadiiData(
                  extraSmall: Radius.circular(48),
                  small: Radius.circular(48),
                  semiSmall: Radius.circular(48),
                  medium: Radius.circular(48),
                  semiLarge: Radius.circular(48),
                  large: Radius.circular(48),
                  extraLarge: Radius.circular(48),
                  superLarge: Radius.circular(48),
                ),
              );
            },
            child: const Text('Radii 48'),
          ),
          Expanded(
            child: LayoutBuilder(
              builder: (context, constraints) {
                return ListView(
                  scrollDirection: constraints.maxWidth < breakpoints.mobile.maxWidth ? Axis.vertical : Axis.horizontal,
                  children: const [
                    GroupCard(
                      title: 'Shapes',
                      child: Column(
                        children: [
                          RadiusGroup(),
                          BorderRadiusGroup(),
                        ],
                      ),
                    ),
                    GroupCard(
                      title: 'Shadows',
                      child: ElevationGroup(),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
