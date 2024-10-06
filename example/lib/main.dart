import 'package:flutter/material.dart';
import 'package:material_toolkit/material_toolkit.dart';
import 'package:material_toolkit_example/geometry/elevation.dart';
import 'package:material_toolkit_example/paiting/border_radius.dart';
import 'package:material_toolkit_example/styles/metrics.dart';
import 'package:material_toolkit_example/widgets/group_card.dart';

void main() {
  runApp(const DemoApp());
}

class DemoApp extends StatelessWidget {
  const DemoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        extensions: <ThemeExtension<dynamic>>[
          metricsData,
        ],
      ),
      home: const Root(),
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

  // // Lista de páginas que a barra de navegação vai navegar
  // static const List<Widget> _pages = <Widget>[
  //   Icon(Icons.home, size: 150),
  //   Icon(Icons.business, size: 150),
  //   Icon(Icons.school, size: 150),
  // ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final metrics = Theme.of(context).extension<XMetricsData>()!;
    final breakpoints = metrics.breakpoints;

    return Scaffold(
      // backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Material Toolkit'),
        centerTitle: false,
        // backgroundColor: Colors.white,
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
            icon: Icon(Icons.motion_photos_on),
            label: 'Animation',
          ),
        ],
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth < breakpoints.mobile.maxWidth) {
            return ListView(
              scrollDirection: Axis.vertical,
              children: _body(context),
            );
          } else {
            return ListView(
              scrollDirection: Axis.horizontal,
              children: _body(context),
            );
          }
        },
      ),
    );
  }
}

List<Widget> _body(BuildContext context) {
  return [
    const GroupCard(
      title: 'Shapes',
      child: BorderRadiusGroup(),
    ),
    const GroupCard(
      title: 'Elevation',
      child: ElevationGroup(),
    ),
  ];
}
