import 'package:material_toolkit/material_toolkit.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialX(
      metrics: XMetricsData(),
      child: MaterialApp(
        theme: ThemeData(
          iconTheme: const IconThemeData(
            size: 30.0,
          ),
        ),
        home: const HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final mX = MaterialX.of(context);

    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.red,
          padding: XEdgeInsets().card, // Use your custom class here
          child: const Text('Hello World!'),
        ),
      ),
    );
  }
}

// Extension to access the private and public members of XEdgeInsets
extension XEdgeInsetsFoundation on XEdgeInsets {
  EdgeInsets get card => allExtraLarge;
}
