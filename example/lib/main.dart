import 'package:flutter/material.dart';
import 'package:material_toolkit/material_toolkit.dart';

void main() {
  runApp(const App());
}

/// The main application widget.
class App extends StatelessWidget {
  /// Creates an [App].
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    final tokens = DesignTokens(
      shadowColor: Colors.red, // TODO: this is for test porpuses
    );
    return MaterialApp(
      title: 'Material Toolkit Complete Example',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        extensions: [tokens],
      ),
      home: const Page(),
    );
  }
}

/// The main page of the example application.
class Page extends StatelessWidget {
  /// Creates a [Page].
  const Page({super.key});

  @override
  Widget build(BuildContext context) {
    final tokens = Theme.of(context).tokens;
    final gaps = tokens.gap;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Material Design Tokens Example'),
      ),
      body: SingleChildScrollView(
        child: tokens.padding.all(
          SpacingToken.medium,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Container(
              //   decoration: BoxDecoration(

              //   ),
              // ),
              // Card(

              // ),
              // Animation
              _buildSection(
                context,
                'Duration Tokens',
                Column(
                  children: [
                    _buildAnimationDemo(
                      tokens,
                      'Quick',
                      tokens.motions.quick,
                    ),
                    gaps.medium,
                    _buildAnimationDemo(
                      tokens,
                      'Regular',
                      tokens.motions.regular,
                    ),
                    gaps.medium,
                    _buildAnimationDemo(
                      tokens,
                      'Slow',
                      tokens.motions.slow,
                    ),
                  ],
                ),
              ),
              gaps.extraLarge,
              // Geometry
              // TODO: x_border_widths_tokens
              _buildSection(
                context,
                'Breakpoint Tokens',
                Container(
                  padding: tokens.edgeInsets.all(SpacingToken.medium),
                  color: Colors.grey.shade100,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Mobile Breakpoint: ${tokens.breakpoints.mobile}px'),
                      Text('Tablet Breakpoint: ${tokens.breakpoints.tablet}px'),
                      Text(
                        'Desktop Breakpoint: ${tokens.breakpoints.desktop}px',
                      ),
                      Text(
                        'infinity Breakpoint: ${tokens.breakpoints.infinity}px',
                      ),
                    ],
                  ),
                ),
              ),
              gaps.extraLarge,
              _buildSection(
                context,
                'Elevation Tokens',
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buildElevatedCard(
                      tokens,
                      'Small',
                      tokens.elevation.small,
                    ),
                    _buildElevatedCard(
                      tokens,
                      'Medium',
                      tokens.elevation.medium,
                    ),
                    _buildElevatedCard(
                      tokens,
                      'Large',
                      tokens.elevation.large,
                    ),
                    _buildElevatedCard(
                      tokens,
                      'Extra Large',
                      tokens.elevation.extraLarge,
                    ),
                    _buildElevatedCard(
                      tokens,
                      'Maximum',
                      tokens.elevation.maximum,
                    ),
                  ],
                ),
              ),
              gaps.extraLarge,
              _buildSection(
                context,
                'Form Factor Tokens',
                Container(
                  padding: tokens.edgeInsets.all(SpacingToken.medium),
                  color: Colors.grey.shade100,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Text('Form Factor: ${tokens.formFactor.name}'),
                      Text('Form Factor: ${MaterialFormFactor.small.name}'),
                      Text('Form Factor: ${MaterialFormFactor.medium.name}'),
                      Text('Form Factor: ${MaterialFormFactor.large.name}'),
                    ],
                  ),
                ),
              ),
              gaps.extraLarge,
              _buildSection(
                context,
                'Icon Size Tokens',
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buildIconDemo(
                      tokens,
                      'small',
                      tokens.iconSizes.small,
                    ),
                    _buildIconDemo(
                      tokens,
                      'medium',
                      tokens.iconSizes.medium,
                    ),
                    _buildIconDemo(
                      tokens,
                      'standard',
                      tokens.iconSizes.standard,
                    ),
                    _buildIconDemo(
                      tokens,
                      'extraLarge',
                      tokens.iconSizes.extraLarge,
                    ),
                    _buildIconDemo(
                      tokens,
                      'hero',
                      tokens.iconSizes.hero,
                    ),
                    _buildIconDemo(
                      tokens,
                      'jumbo',
                      tokens.iconSizes.jumbo,
                    ),
                    _buildIconDemo(
                      tokens,
                      'giant',
                      tokens.iconSizes.giant,
                    ),
                  ],
                ),
              ),
              gaps.extraLarge,
              // TODO: x_layout_grid_tokens
              _buildSection(
                context,
                'Radii Tokens + Border Radius Resolver',
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buildRadiusCard(tokens, 'Small', RadiusToken.small),
                    _buildRadiusCard(tokens, 'Medium', RadiusToken.medium),
                    _buildRadiusCard(tokens, 'Large', RadiusToken.large),
                  ],
                ),
              ),
              gaps.extraLarge,
              // _buildSection(
              //   context,
              //   'Spacing Tokens + Gaps Resolver',
              //   Column(
              //     children: [
              //       _buildSpacingDemo(tokens, 'Small', Spacing.small),
              //       gaps.medium,
              //       _buildSpacingDemo(tokens, 'Medium', Spacing.medium),
              //       gaps.medium,
              //       _buildSpacingDemo(tokens, 'Large', Spacing.large),
              //     ],
              //   ),
              // ),
              // gaps.extraLarge,

              /// Painting
              _buildSection(
                context,
                'Box Shadow Tokens',
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buildShadowCard(
                      tokens,
                      'Small',
                      tokens.elevation.toBoxShadow(ElevationToken.small),
                    ),
                    _buildShadowCard(
                      tokens,
                      'Medium',
                      tokens.elevation.toBoxShadow(ElevationToken.medium),
                    ),
                    _buildShadowCard(
                      tokens,
                      'Large',
                      tokens.elevation.toBoxShadow(ElevationToken.large),
                    ),
                  ],
                ),
              ),
              gaps.extraLarge,
              _buildSection(
                context,
                'Gaps Resolver + Spacing Tokens',
                Column(
                  children: [
                    _buildSpacingDemo(tokens, 'Small', SpacingToken.small),
                    gaps.medium,
                    _buildSpacingDemo(
                      tokens,
                      'Medium',
                      SpacingToken.medium,
                    ),
                    gaps.medium,
                    _buildSpacingDemo(tokens, 'Large', SpacingToken.large),
                  ],
                ),
              ),
              gaps.extraLarge,
              // TODO: x_google_fonts_tokens, rename to x_google_fonts_resolver?
              _buildSection(
                context,
                'Opacity Tokens',
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buildOpacityDemo(
                      tokens,
                      'Hover',
                      tokens.opacities.hover,
                    ),
                    _buildOpacityDemo(
                      tokens,
                      'Focus',
                      tokens.opacities.focus,
                    ),
                    _buildOpacityDemo(
                      tokens,
                      'Pressed',
                      tokens.opacities.pressed,
                    ),
                  ],
                ),
              ),
              gaps.extraLarge,
              _buildSection(
                context,
                'Text Shadow Tokens',
                Column(
                  children: [
                    Text(
                      'Small Shadow',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        shadows: [tokens.textShadows.small],
                      ),
                    ),
                    gaps.medium,
                    Text(
                      'Medium Shadow',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        shadows: [tokens.textShadows.medium],
                      ),
                    ),
                    gaps.medium,
                    Text(
                      'Large Shadow',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        shadows: [tokens.textShadows.large],
                      ),
                    ),
                  ],
                ),
              ),
              gaps.extraLarge,
              // TODO: x_z_indexes_tokens
              // TODO:

              /// Resolvers
              // ...
              _buildSection(
                context,
                'Input Borders Resolver',
                Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'Outline Border',
                        border: tokens.inputBorder.outline(),
                      ),
                    ),
                    gaps.medium,
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'Underline Border',
                        border: tokens.inputBorder.underline(),
                      ),
                    ),
                  ],
                ),
              ),
              gaps.extraLarge,
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSection(BuildContext context, String title, Widget child) {
    final tokens = Theme.of(context).tokens;
    final gaps = tokens.gap;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.headlineSmall?.copyWith(
            fontWeight: FontWeight.bold,
            color: Colors.deepPurple,
          ),
        ),
        gaps.medium,
        child,
      ],
    );
  }

  Widget _buildSpacingDemo(
    DesignTokens tokens,
    String label,
    SpacingToken spacing,
  ) {
    final spacings = tokens.spacings;
    return Row(
      children: [
        Text('$label: '),
        Container(
          width: spacing.toDouble(spacings),
          height: 20,
          color: Colors.blue,
        ),
        const SizedBox(width: 8),
        Text('${spacing.toDouble(spacings).toInt()}px'),
      ],
    );
  }

  Widget _buildShadowCard(
    DesignTokens tokens,
    String label,
    List<BoxShadow> boxShadow,
  ) {
    return Container(
      width: 80,
      height: 80,
      decoration: BoxDecoration(color: Colors.white, boxShadow: boxShadow),
      child: Center(
        child: Text(label, style: const TextStyle(fontWeight: FontWeight.bold)),
      ),
    );
  }

  Widget _buildRadiusCard(
    DesignTokens tokens,
    String label,
    RadiusToken radius,
  ) {
    return Container(
      width: 80,
      height: 80,
      decoration: BoxDecoration(
        color: Colors.deepPurple.shade100,
        borderRadius: tokens.borderRadius.circular(radius),
        border: Border.all(color: Colors.deepPurple),
      ),
      child: Center(
        child: Text(label, style: const TextStyle(fontWeight: FontWeight.bold)),
      ),
    );
  }

  Widget _buildAnimationDemo(
    DesignTokens tokens,
    String label,
    Duration duration,
  ) {
    return AnimatedContainerDemo(
      label: label,
      duration: duration,
      tokens: tokens,
    );
  }

  Widget _buildIconDemo(DesignTokens tokens, String label, double size) {
    return Column(
      children: [
        Icon(Icons.star, size: size, color: Colors.orange),
        const SizedBox(height: 4),
        Text('$label\n${size.toInt()}px', textAlign: TextAlign.center),
      ],
    );
  }

  Widget _buildElevatedCard(
    DesignTokens tokens,
    String label,
    double elevation,
  ) {
    return Card(
      elevation: elevation,
      child: Container(
        width: 80,
        height: 80,
        padding: tokens.edgeInsets.all(SpacingToken.small),
        child: Center(
          child: Text(
            label,
            style: const TextStyle(fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }

  Widget _buildOpacityDemo(DesignTokens tokens, String label, double opacity) {
    return Column(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            color: Colors.red.withOpacity(opacity),
          ),
        ),
        const SizedBox(height: 4),
        Text(
          '$label\n${(opacity * 100).toInt()}%',
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}

/// A widget that demonstrates an animated container.
class AnimatedContainerDemo extends StatefulWidget {
  /// Creates an [AnimatedContainerDemo].
  const AnimatedContainerDemo({
    required this.label,
    required this.duration,
    required this.tokens,
    super.key,
  });

  /// The label for the demo.
  final String label;

  /// The duration of the animation.
  final Duration duration;

  /// The design tokens.
  final DesignTokens tokens;

  @override
  State<AnimatedContainerDemo> createState() => _AnimatedContainerDemoState();
}

class _AnimatedContainerDemoState extends State<AnimatedContainerDemo> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => setState(() => _isExpanded = !_isExpanded),
      child: AnimatedContainer(
        duration: widget.duration,
        width: _isExpanded ? 200 : 100,
        height: 50,
        decoration: BoxDecoration(
          color: _isExpanded ? Colors.green : Colors.blue,
        ),
        child: Center(
          child: Text(
            '${widget.label}\n${widget.duration.inMilliseconds}ms',
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
