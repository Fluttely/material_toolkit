import 'package:flutter/material.dart';
import 'package:material_toolkit/material_toolkit.dart';
import 'package:material_toolkit_example/showcase_pages/auxiliar/details_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  static MyAppState of(BuildContext context) =>
      context.findAncestorStateOfType<MyAppState>()!;

  @override
  State<MyApp> createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  PageTransitionsBuilder _selectedTransition =
      MaterialPageTransitionsBuilder.sharedAxisX;

  void changeTransition(PageTransitionsBuilder newTransition) {
    setState(() {
      _selectedTransition = newTransition;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Page Transitions Demo',
      theme: ThemeData(
        pageTransitionsTheme: PageTransitionsTheme(
          builders: {
            TargetPlatform.android: _selectedTransition,
            TargetPlatform.iOS: _selectedTransition,
          },
        ),
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        return Scaffold(
          appBar: AppBar(title: const Text('Home Page')),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Select Page Transition Style:'),
                DropdownButton<PageTransitionsBuilder>(
                  value: MyApp.of(context)._selectedTransition,
                  // **FIXED:** Removed `const` from the list and items.
                  items: [
                    DropdownMenuItem(
                      value: MaterialPageTransitionsBuilder.sharedAxisX,
                      child: Text('Shared Axis X'),
                    ),
                    DropdownMenuItem(
                      value: MaterialPageTransitionsBuilder.sharedAxisY,
                      child: Text('Shared Axis Y'),
                    ),
                    DropdownMenuItem(
                      value: MaterialPageTransitionsBuilder.sharedAxisZ,
                      child: Text('Shared Axis Z'),
                    ),
                    DropdownMenuItem(
                      value: MaterialPageTransitionsBuilder.fadeThrough,
                      child: Text('Fade Through'),
                    ),
                    DropdownMenuItem(
                      value: MaterialPageTransitionsBuilder.platformDefault,
                      child: Text('Platform Default'),
                    ),
                  ],
                  onChanged: (value) {
                    if (value != null) {
                      MyApp.of(context).changeTransition(
                        value,
                      ); // pq nessa linha quando eu chamo ele nao muda visualmente o meu "MyApp.of(context)._selectedTransition"
                    }
                  },
                ),
                const SizedBox(height: 20),
                FilledButton(
                  child: const Text('Push Details Page'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const DetailsPage(),
                      ),
                    );
                  },
                ),
                const SizedBox(height: 40),
                const Divider(),
                const SizedBox(height: 40),
                // Using a custom wrapper for ContainerTransform
                RouteAwareContainerTransform(
                  page: const DetailsPage(),
                  closedBuilder: (context, openContainer) {
                    return FloatingActionButton.extended(
                      onPressed: openContainer,
                      label: const Text("Open with Container Transform"),
                      icon: const Icon(Icons.open_in_new),
                    );
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
