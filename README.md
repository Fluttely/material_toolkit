# Material Toolkit

`material_toolkit` is a tool that helps you build custom design systems based on Flutter's `MaterialApp`. It offers greater flexibility and scalability to define and implement the visual identity of your app, allowing you to efficiently and consistently tailor the design.

## Features

- Build custom design systems on top of `MaterialApp`.
- Easily integrates with various Flutter projects.
- Flexible enough to adapt themes and layouts to your project's needs.
- Supports both light and dark themes.
- Scalable for different app types, from prototypes to final products.

## Getting started

### Installation

Add `material_toolkit` to your `pubspec.yaml` file:

```yaml
dependencies:
  material_toolkit: ^0.0.4
```

### Minimal example

```dart
final tokens = XDesignTokensData();

return XDesignTokens(
  data: tokens,
  child: MaterialApp(
    theme: ThemeData(
      extensions: [tokens],
    ),
    home: const DemoPage(),
  ),
);
```

```dart
class DemoPage extends StatelessWidget {
  const DemoPage({super.key});

  @override
  Widget build(BuildContext context) {
    final tokens = XDesignTokens.of(context);
    return Scaffold(
      body: tokens.padding.all(
        XSpaces.medium,
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
```

### Advanced demo

More advanced demo code lives under `example/lib/advanced`. Run it with:

```bash
flutter run -t lib/advanced/advanced_app.dart
```
