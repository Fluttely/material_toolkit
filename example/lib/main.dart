import 'package:example/example.dart';
import 'package:material_toolkit/material_toolkit.dart';

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
    return MaterialX(
      theme: theme,
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
      body: ListView(children: const [
        XMaterialCard(),
      ]),
    );
  }
}

class XMaterialCard extends StatelessWidget {
  const XMaterialCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // final mX = MaterialX.of(context);

    return XPaddingFoundation.card(
      child: Container(
        color: Colors.red,
        padding: XEdgeInsetsFoundation.card(),
        child: const Text('Hello World!'),
      ),
    );
  }
}
