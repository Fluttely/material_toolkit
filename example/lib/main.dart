import 'package:material_toolkit/material_toolkit.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialX(
      metrics: XMetricsData.fallback(),
      child: MaterialApp(
        theme: ThemeData(
          // Define the default IconTheme
          iconTheme: const IconThemeData(
            size: 30.0, // Set your default icon size here
          ),
          // You can also define IconTheme specifically for dark mode
          // darkTheme: ThemeData(
          //   iconTheme: IconThemeData(
          //     size: 30.0,
          //   ),
          // ),
        ),
        home: const HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final mX = MaterialX.of(context);
    final theme = Theme.of(context);
    final asd = theme.iconTheme.size;
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(mX.metrics.spacings.extraLarge),
          child: const Text('Hello World!'),
        ),
      ),
    );
  }
}
