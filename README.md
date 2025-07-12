# Material Toolkit

A comprehensive design system and token library for Flutter applications, providing consistent spacing, typography, colors, and UI components following Material Design principles.

## Features

- 🎨 **Comprehensive Design Tokens** - Spacing, colors, typography, shadows, and more
- 🔧 **Easy Integration** - Simple setup with Theme extensions
- 📱 **Responsive Design** - Built-in breakpoints and form factors
- 🎯 **Type Safe** - Strongly typed tokens with IDE support
- 🌙 **Theme Support** - Works seamlessly with Flutter's theming system
- ⚡ **Performance Optimized** - Efficient token resolution and caching

## Installation

Add `material_toolkit` to your `pubspec.yaml`:

```yaml
dependencies:
  material_toolkit: ^1.0.0
```

## Quick Start

```dart
import 'package:flutter/material.dart';
import 'package:material_toolkit/material_toolkit.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        extensions: [XDesignTokens()],
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final tokens = context.tokens;

    return Scaffold(
      body: tokens.padding.all(
        XSpacings.medium,
        child: Container(
          decoration: BoxDecoration(
            boxShadow: [tokens.boxShadows.medium],
            borderRadius: tokens.borderRadius.large,
          ),
          child: Column(
            children: [
              Text('Hello Material Toolkit!'),
              tokens.gaps.medium,
              ElevatedButton(
                onPressed: () {},
                child: Text('Get Started'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
```

## Design Tokens

### Spacing

Control spacing throughout your app with consistent values:

```dart
// Direct values
XSpacings.small    // 8.0
XSpacings.medium   // 16.0
XSpacings.large    // 24.0
XSpacings.extraLarge // 32.0

// Padding helpers
tokens.padding.all(XSpacings.medium)
tokens.padding.symmetric(horizontal: XSpacings.large)
tokens.padding.only(top: XSpacings.small)

// Gap widgets
tokens.gaps.small     // SizedBox with 8.0 height
tokens.gaps.medium    // SizedBox with 16.0 height
tokens.gaps.large     // SizedBox with 24.0 height
```

### Shadows & Elevation

Create depth with consistent shadow tokens:

```dart
// Box shadows
Container(
  decoration: BoxDecoration(
    boxShadow: [
      tokens.boxShadows.small,   // Subtle shadow
      tokens.boxShadows.medium,  // Standard shadow
      tokens.boxShadows.large,   // Prominent shadow
    ],
  ),
)

// Material elevations
Card(elevation: tokens.elevations.level1)
Card(elevation: tokens.elevations.level2)
Card(elevation: tokens.elevations.level3)

// Text shadows
Text(
  'Shadowed Text',
  style: TextStyle(
    shadows: [tokens.textShadows.medium],
  ),
)
```

### Border Radius

Consistent corner radius throughout your app:

```dart
// Border radius
Container(
  decoration: BoxDecoration(
    borderRadius: tokens.borderRadius.small,   // 4.0
    borderRadius: tokens.borderRadius.medium,  // 8.0
    borderRadius: tokens.borderRadius.large,   // 12.0
  ),
)

// Shape borders
Container(
  decoration: ShapeDecoration(
    shape: tokens.shape.rounded(XRadii.medium),
    shape: tokens.shape.continuous(XRadii.large),
    shape: tokens.shape.beveled(XRadii.small),
  ),
)
```

### Input Styling

Consistent form field styling:

```dart
TextField(
  decoration: InputDecoration(
    border: tokens.inputBorder.outline(),
    focusedBorder: tokens.inputBorder.outline(color: Colors.blue),
  ),
)

TextField(
  decoration: InputDecoration(
    border: tokens.inputBorder.underline(),
    focusedBorder: tokens.inputBorder.underline(color: Colors.blue),
  ),
)
```

### Typography & Icons

Consistent sizing for text and icons:

```dart
// Icon sizes
Icon(Icons.star, size: tokens.iconSizes.small)   // 16.0
Icon(Icons.star, size: tokens.iconSizes.medium)  // 24.0
Icon(Icons.star, size: tokens.iconSizes.large)   // 32.0

// Google Fonts integration
Text(
  'Styled Text',
  style: tokens.googleFonts.roboto(
    fontSize: 16,
    fontWeight: FontWeight.w500,
  ),
)
```

### Animations

Consistent animation durations:

```dart
AnimatedContainer(
  duration: tokens.durations.fast,    // 150ms
  duration: tokens.durations.medium,  // 300ms
  duration: tokens.durations.slow,    // 500ms
  // ... other properties
)
```

### Responsive Design

Built-in breakpoints and form factors:

```dart
// Check current form factor
if (tokens.formFactor == XFormFactor.compact) {
  // Mobile layout
} else if (tokens.formFactor == XFormFactor.medium) {
  // Tablet layout
} else {
  // Desktop layout
}

// Breakpoint values
tokens.breakpoints.small   // 600
tokens.breakpoints.medium  // 960
tokens.breakpoints.large   // 1280
```

### Opacity & Visual Effects

Consistent opacity values:

```dart
Container(
  color: Colors.blue.withOpacity(tokens.opacities.low),     // 0.1
  color: Colors.blue.withOpacity(tokens.opacities.medium),  // 0.5
  color: Colors.blue.withOpacity(tokens.opacities.high),    // 0.8
)
```

## Customization

### Override Default Tokens

```dart
final customTokens = XDesignTokens.material(
  overrides: {
    'spacings': {
      'small': 12.0,
      'medium': 20.0,
      'large': 28.0,
    },
    'radii': {
      'small': 6.0,
      'medium': 12.0,
      'large': 18.0,
    },
  },
);

MaterialApp(
  theme: ThemeData(
    extensions: [customTokens],
  ),
  // ...
)
```

### Create Custom Token Sets

```dart
final customTokens = XDesignTokens(
  spacings: XSpacingsTokens(
    small: 10.0,
    medium: 18.0,
    large: 26.0,
  ),
  radii: XRadiiTokens(
    small: 6.0,
    medium: 10.0,
    large: 16.0,
  ),
);
```

### JSON Configuration

Load tokens from JSON for dynamic theming:

```dart
final tokensJson = '''
{
  "spacings": {
    "small": 12.0,
    "medium": 20.0,
    "large": 28.0
  },
  "radii": {
    "small": 6.0,
    "medium": 12.0,
    "large": 18.0
  }
}
''';

final tokens = XDesignTokens.fromJson(tokensJson);
```

## Advanced Usage

### Using InheritedWidget

For more control over token distribution:

```dart
XDesign(
  tokens: customTokens,
  child: MaterialApp(
    home: MyHomePage(),
  ),
)

// Access tokens anywhere in the widget tree
final tokens = XDesign.of(context);
```

### Layout Grid System

Built-in grid system for consistent layouts:

```dart
// Grid margins and gutters
tokens.layoutGrid.margin      // 16.0
tokens.layoutGrid.gutter      // 16.0
tokens.layoutGrid.columnCount // 12
```

### Z-Index Management

Consistent layering system:

```dart
// Layer ordering
tokens.zIndexes.background  // -1
tokens.zIndexes.content     // 0
tokens.zIndexes.overlay     // 100
tokens.zIndexes.modal       // 200
tokens.zIndexes.tooltip     // 300
```

## Token Categories

| Category       | Purpose                   | Examples                                               |
| -------------- | ------------------------- | ------------------------------------------------------ |
| **Spacing**    | Margins, padding, gaps    | `XSpacings.small`, `tokens.gaps.medium`                |
| **Radius**     | Border radius, shapes     | `tokens.borderRadius.large`, `tokens.shape.rounded()`  |
| **Shadows**    | Box shadows, text shadows | `tokens.boxShadows.medium`, `tokens.textShadows.large` |
| **Elevation**  | Material elevation        | `tokens.elevations.level1`                             |
| **Animation**  | Transition durations      | `tokens.durations.fast`                                |
| **Typography** | Font sizes, weights       | `tokens.googleFonts.roboto()`                          |
| **Icons**      | Icon sizing               | `tokens.iconSizes.medium`                              |
| **Layout**     | Grid system, breakpoints  | `tokens.breakpoints.large`                             |
| **Opacity**    | Transparency levels       | `tokens.opacities.medium`                              |
| **Borders**    | Input styling             | `tokens.inputBorder.outline()`                         |

## Best Practices

1. **Consistency**: Always use tokens instead of hardcoded values
2. **Semantic Naming**: Use meaningful names (e.g., `XSpacings.medium` instead of `16.0`)
3. **Responsive Design**: Leverage breakpoints and form factors
4. **Theme Integration**: Extend themes rather than replacing them
5. **Performance**: Tokens are cached and optimized for performance

## Contributing

Contributions are welcome! Please read our [contributing guide](CONTRIBUTING.md) for details on our code of conduct and the process for submitting pull requests.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Changelog

See [CHANGELOG.md](CHANGELOG.md) for a detailed list of changes and versions.
