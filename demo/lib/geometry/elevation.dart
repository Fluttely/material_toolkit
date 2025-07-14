import 'package:flutter/material.dart';
import 'package:material_toolkit/material_toolkit.dart';
import 'package:material_toolkit_demo/widgets/group_item_container.dart';

/// A widget that displays a group of elevation components.
class ElevationGroup extends StatelessWidget {
  /// Creates an [ElevationGroup].
  const ElevationGroup({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    // final colorScheme = theme.colorScheme;
    final textTheme = theme.textTheme;

    final tokens = theme.tokens;
    // final borderRadius = tokens.borderRadius;
    // final edgeInsets = tokens.edgeInsets;
    final elevations = tokens.elevations;
    final gaps = tokens.gap;

    return Column(
      children: [
        Text('Elevation', style: textTheme.titleSmall),
        gaps.small,
        GroupItemContainer(
          children: [
            Text('Surface Tint Color Only', style: textTheme.titleSmall),
            gaps.small,
            Row(
              children: [
                ElevationComponent(
                  description: 'None\ndp',
                  elevation: elevations.none,
                  isSurface: true,
                ),
                ElevationComponent(
                  description: 'Small\ndp',
                  elevation: elevations.small,
                  isSurface: true,
                ),
                ElevationComponent(
                  description: 'Medium\ndp',
                  elevation: elevations.medium,
                  isSurface: true,
                ),
                ElevationComponent(
                  description: 'Large\ndp',
                  elevation: elevations.large,
                  isSurface: true,
                ),
                ElevationComponent(
                  description: 'ExtraLarge\ndp',
                  elevation: elevations.extraLarge,
                  isSurface: true,
                ),
                ElevationComponent(
                  description: 'Maximum\ndp',
                  elevation: elevations.maximum,
                  isSurface: true,
                ),
                const ElevationComponent(
                  description: 'Level 0\ndp',
                  elevation: MaterialElevation.level0,
                  isSurface: true,
                ),
                const ElevationComponent(
                  description: 'Level 1\ndp',
                  elevation: MaterialElevation.level1,
                  isSurface: true,
                ),
                const ElevationComponent(
                  description: 'Level 2\ndp',
                  elevation: MaterialElevation.level2,
                  isSurface: true,
                ),
                const ElevationComponent(
                  description: 'Level 3\ndp',
                  elevation: MaterialElevation.level3,
                  isSurface: true,
                ),
                const ElevationComponent(
                  description: 'Level 4\ndp',
                  elevation: MaterialElevation.level4,
                  isSurface: true,
                ),
                const ElevationComponent(
                  description: 'Level 5\ndp',
                  elevation: MaterialElevation.level5,
                  isSurface: true,
                ),
              ],
            ),
            gaps.large,
            Text(
              'Surface Tint Color and Shadow Color',
              style: textTheme.titleSmall,
            ),
            gaps.small,
            const Row(
              children: [
                ElevationComponent(
                  description: 'Level 1\ndp',
                  elevation: MaterialElevation.level1,
                  isSurface: true,
                  isShadow: true,
                ),
                ElevationComponent(
                  description: 'Level 2\ndp',
                  elevation: MaterialElevation.level2,
                  isSurface: true,
                  isShadow: true,
                ),
                ElevationComponent(
                  description: 'Level 3\ndp',
                  elevation: MaterialElevation.level3,
                  isSurface: true,
                  isShadow: true,
                ),
                // ElevationComponent(
                //   description: 'Level 4\ndp',
                //   elevation: ElevationTokens.level4,
                //   isSurface: true,
                //   isShadow: true,
                // ),
                ElevationComponent(
                  description: 'Level 5\ndp',
                  elevation: MaterialElevation.level5,
                  isSurface: true,
                  isShadow: true,
                ),
              ],
            ),
            gaps.large,
            Text('Shadow Color Only', style: textTheme.titleSmall),
            gaps.small,
            const Row(
              children: [
                ElevationComponent(
                  description: 'Level 1\ndp',
                  elevation: MaterialElevation.level1,
                  isShadow: true,
                ),
                ElevationComponent(
                  description: 'Level 2\ndp',
                  elevation: MaterialElevation.level2,
                  isShadow: true,
                ),
                ElevationComponent(
                  description: 'Level 3\ndp',
                  elevation: MaterialElevation.level3,
                  isShadow: true,
                ),
                // ElevationComponent(
                //   description: 'Level 4\ndp',
                //   elevation: ElevationTokens.level4,
                //   isShadow: true,
                // ),
                ElevationComponent(
                  description: 'Level 5\ndp',
                  elevation: MaterialElevation.level5,
                  isShadow: true,
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

/// A widget that displays an elevation component.
class ElevationComponent extends StatelessWidget {
  /// Creates an [ElevationComponent].
  const ElevationComponent({
    required this.description,
    required this.elevation,
    super.key,
    this.isSurface = false,
    this.isShadow = false,
  });

  /// The description of the elevation.
  final String description;

  /// The elevation value.
  final double elevation;

  /// Whether to apply a surface tint color.
  final bool isSurface;

  /// Whether to apply a shadow color.
  final bool isShadow;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Card(
      elevation: elevation,
      surfaceTintColor: isSurface ? colorScheme.primary : Colors.transparent,
      shadowColor: isShadow ? null : Colors.transparent,
      child: Center(child: Text(description)),
    );
  }
}
