import 'package:flutter/material.dart';
import 'package:material_toolkit/material_toolkit.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    final tokens = DesignTokens();
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

class Page extends StatelessWidget {
  const Page({super.key});

  @override
  Widget build(BuildContext context) {
    final tokens = Theme.of(context).tokens;
    final gaps = tokens.gap;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Material Design Tokens Example'),
        elevation: ElevationTokens.level3,
      ),
      body: SingleChildScrollView(
        child: tokens.padding.all(
          MaterialSpacings.medium,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Animation
              _buildSection(
                context,
                'Duration Tokens',
                Column(
                  children: [
                    _buildAnimationDemo(
                      tokens,
                      'Quick',
                      tokens.durations.quick,
                    ),
                    gaps.medium,
                    _buildAnimationDemo(
                      tokens,
                      'Regular',
                      tokens.durations.regular,
                    ),
                    gaps.medium,
                    _buildAnimationDemo(
                      tokens,
                      'Slow',
                      tokens.durations.slow,
                    ),
                  ],
                ),
              ),
              gaps.extraLarge,
              // Geometry
              // TODO(Kevin): x_border_widths_tokens
              _buildSection(
                context,
                'Breakpoint Tokens',
                Container(
                  padding: tokens.edgeInsets.all(MaterialSpacings.medium),
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
                      tokens.elevations.small,
                    ),
                    _buildElevatedCard(
                      tokens,
                      'Medium',
                      tokens.elevations.medium,
                    ),
                    _buildElevatedCard(
                      tokens,
                      'Large',
                      tokens.elevations.large,
                    ),
                    _buildElevatedCard(
                      tokens,
                      'Extra Large',
                      tokens.elevations.extraLarge,
                    ),
                    _buildElevatedCard(
                      tokens,
                      'Maximum',
                      tokens.elevations.maximum,
                    ),
                    _buildElevatedCard(
                      tokens,
                      'Level 1',
                      ElevationTokens.level1,
                    ),
                    _buildElevatedCard(
                      tokens,
                      'Level 2',
                      ElevationTokens.level2,
                    ),
                    _buildElevatedCard(
                      tokens,
                      'Level 3',
                      ElevationTokens.level3,
                    ),
                    _buildElevatedCard(
                      tokens,
                      'Level 4',
                      ElevationTokens.level4,
                    ),
                    _buildElevatedCard(
                      tokens,
                      'Level 5',
                      ElevationTokens.level5,
                    ),
                  ],
                ),
              ),
              gaps.extraLarge,
              _buildSection(
                context,
                'Form Factor Tokens',
                Container(
                  padding: tokens.edgeInsets.all(MaterialSpacings.medium),
                  color: Colors.grey.shade100,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Text('Form Factor: ${tokens.formFactor.name}'),
                      Text('Form Factor: ${FormFactor.small.name}'),
                      Text('Form Factor: ${FormFactor.medium.name}'),
                      Text('Form Factor: ${FormFactor.large.name}'),
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
              // TODO(Kevin): x_layout_grid_tokens
              _buildSection(
                context,
                'Radii Tokens + Border Radius Resolver',
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buildRadiusCard(tokens, 'Small', MaterialRadius.small),
                    _buildRadiusCard(tokens, 'Medium', MaterialRadius.medium),
                    _buildRadiusCard(tokens, 'Large', MaterialRadius.large),
                  ],
                ),
              ),
              gaps.extraLarge,
              // _buildSection(
              //   context,
              //   'Spacing Tokens + Gaps Resolver',
              //   Column(
              //     children: [
              //       _buildSpacingDemo(tokens, 'Small', MaterialSpacings.small),
              //       gaps.medium,
              //       _buildSpacingDemo(tokens, 'Medium', MaterialSpacings.medium),
              //       gaps.medium,
              //       _buildSpacingDemo(tokens, 'Large', MaterialSpacings.large),
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
                    _buildShadowCard(tokens, 'Small', tokens.boxShadows.small),
                    _buildShadowCard(
                      tokens,
                      'Medium',
                      tokens.boxShadows.medium,
                    ),
                    _buildShadowCard(tokens, 'Large', tokens.boxShadows.large),
                  ],
                ),
              ),
              gaps.extraLarge,
              _buildSection(
                context,
                'Gaps Resolver + Spacing Tokens',
                Column(
                  children: [
                    _buildSpacingDemo(tokens, 'Small', MaterialSpacings.small),
                    gaps.medium,
                    _buildSpacingDemo(
                      tokens,
                      'Medium',
                      MaterialSpacings.medium,
                    ),
                    gaps.medium,
                    _buildSpacingDemo(tokens, 'Large', MaterialSpacings.large),
                  ],
                ),
              ),
              gaps.extraLarge,
              // TODO(Kevin): x_google_fonts_tokens, rename to x_google_fonts_resolver?
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
              // TODO(Kevin): x_z_indexes_tokens
              // TODO(Kevin):

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
    MaterialSpacings spacing,
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
    BoxShadow shadow,
  ) {
    return Container(
      width: 80,
      height: 80,
      decoration: BoxDecoration(color: Colors.white, boxShadow: [shadow]),
      child: Center(
        child: Text(label, style: const TextStyle(fontWeight: FontWeight.bold)),
      ),
    );
  }

  Widget _buildRadiusCard(
    DesignTokens tokens,
    String label,
    MaterialRadius radius,
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
        padding: tokens.edgeInsets.all(MaterialSpacings.small),
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

class AnimatedContainerDemo extends StatefulWidget {
  const AnimatedContainerDemo({
    required this.label,
    required this.duration,
    required this.tokens,
    super.key,
  });

  final String label;
  final Duration duration;
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
