import 'package:flutter/material.dart';
import 'package:material_toolkit/material_toolkit.dart';

void main() {
  runApp(const MinimalApp());
  // runApp(const AdvancedApp());
}

class MinimalApp extends StatelessWidget {
  const MinimalApp({super.key});

  @override
  Widget build(BuildContext context) {
    final tokens = XDesignTokens();
    return
        // XDesign(
        //   data: tokens,
        //   child:
        MaterialApp(
      title: 'Material Toolkit Minimal',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        extensions: [tokens],
      ),
      home: const HomePage(),
      // ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // final tokens = XDesign.of(context);
    final tokens = Theme.of(context).extension<XDesignTokens>()!;
    return Scaffold(
      appBar: AppBar(title: const Text('Design Tokens Example')),
      body: tokens.padding.all(
        XSpacings.medium,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [tokens.boxShadows.medium],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Hello Material Toolkit'),
              tokens.gaps.small,
              const Text('This container uses padding and a shadow.'),
            ],
          ),
        ),
      ),
    );
  }
}
