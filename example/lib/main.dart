import 'package:flutter/material.dart';
import 'package:material_toolkit_example/home_page.dart';
import 'package:material_toolkit_example/theme/metrics.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        extensions: <ThemeExtension<dynamic>>[
          // metricsData,
        ],
      ),
      home: const MyHomePage(),
    );
  }
}
