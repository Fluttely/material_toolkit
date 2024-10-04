import 'package:flutter/material.dart';
import 'package:material_toolkit_example/home_page.dart';

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
        extensions: const <ThemeExtension<dynamic>>[
          // metricsData,
        ],
      ),
      home: const MyHomePage(),
    );
  }
}
