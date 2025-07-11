import 'package:flutter/material.dart';
import 'package:material_toolkit/material_toolkit.dart';
import 'package:material_toolkit_example/advanced/geometry/elevation.dart';
import 'package:material_toolkit_example/advanced/notifiers/root_notifier.dart';
import 'package:material_toolkit_example/advanced/notifiers/theme_notifier.dart';
import 'package:material_toolkit_example/advanced/painting/border_radius_circular_group.dart';
import 'package:material_toolkit_example/advanced/widgets/group_card.dart';
import 'package:material_toolkit_example/advanced/widgets/tokens_editor.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const AdvancedApp());
}

class AdvancedApp extends StatelessWidget {
  const AdvancedApp({super.key});

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
              // extensions: [themeNotifier.tokens],
              extensions: [XDesignTokens()],
            ),
            home: const RootPage(),
          );
        },
      ),
    );
  }
}

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final textTheme = theme.textTheme;

    final tokens = theme.extension<XDesignTokens>()!;
    final gaps = tokens.gaps;
    // final inputBorders = tokens.inputBorders;
    // final breakpoints = tokens.breakpoints;

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
              onPressed: themeNotifier.resetXDesignTokens,
              child: Text(
                'Reset XDesignTokens to default',
                style: textTheme.bodyMedium?.copyWith(color: colorScheme.error),
              ),
            ),
            gaps.large,
            const TokensEditor(),
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
                          const BorderRadiusCircularGroup(),
                          gaps.large,
                          // XBorderShapes
                        ],
                      ),
                      // gaps.extraSmall,
                      const GroupCard(
                        title: 'Shadows',
                        children: [
                          ElevationGroup(),
                        ],
                      ),
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
