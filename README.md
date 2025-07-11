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

### Material presets

Use `DesignTokensData.material()` to obtain Material defaults. Override any
value with a map or JSON string:

```dart
final tokens = XDesignTokensData.material(overrides: {
  "spaces": {"medium": 20.0},
});
```

JSON can be loaded with `XDesignTokensData.fromJson` for the same effect.

