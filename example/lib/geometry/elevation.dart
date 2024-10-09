import 'package:flutter/material.dart';
import 'package:material_toolkit/material_toolkit.dart';
import 'package:material_toolkit_example/widgets/group_item_container.dart';

class ElevationGroup extends StatelessWidget {
  const ElevationGroup({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final textTheme = theme.textTheme;

    final metrics = theme.extension<XMetricsData>()!;
    final borderRadius = metrics.borderRadius;
    final edgeInsets = metrics.edgeInsets;
    final elevations = metrics.elevations;
    final gaps = metrics.gaps;

    return Column(
      children: [
        Text(
          'Elevation',
          style: textTheme.titleSmall,
        ),
        gaps.small,
        GroupItemContainer(
          children: [
            Text(
              'Surface Tint Color Only',
              style: textTheme.titleSmall,
            ),
            gaps.small,
            Row(
              children: [
                ElevationComponent(
                  description: 'Level 1\ndp',
                  elevation: elevations.level1,
                  isSurface: true,
                ),
                ElevationComponent(
                  description: 'Level 2\ndp',
                  elevation: elevations.level2,
                  isSurface: true,
                ),
                ElevationComponent(
                  description: 'Level 3\ndp',
                  elevation: elevations.level3,
                  isSurface: true,
                ),
                // ElevationComponent(
                //   description: 'Level 4\ndp',
                //   elevation: elevations.level4,
                //   isSurface: true,
                // ),
                ElevationComponent(
                  description: 'Level 5\ndp',
                  elevation: elevations.level5,
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
            Row(
              children: [
                ElevationComponent(
                  description: 'Level 1\ndp',
                  elevation: elevations.level1,
                  isSurface: true,
                  isShadow: true,
                ),
                ElevationComponent(
                  description: 'Level 2\ndp',
                  elevation: elevations.level2,
                  isSurface: true,
                  isShadow: true,
                ),
                ElevationComponent(
                  description: 'Level 3\ndp',
                  elevation: elevations.level3,
                  isSurface: true,
                  isShadow: true,
                ),
                // ElevationComponent(
                //   description: 'Level 4\ndp',
                //   elevation: elevations.level4,
                //   isSurface: true,
                //   isShadow: true,
                // ),
                ElevationComponent(
                  description: 'Level 5\ndp',
                  elevation: elevations.level5,
                  isSurface: true,
                  isShadow: true,
                ),
              ],
            ),
            gaps.large,
            Text(
              'Shadow Color Only',
              style: textTheme.titleSmall,
            ),
            gaps.small,
            Row(
              children: [
                ElevationComponent(
                  description: 'Level 1\ndp',
                  elevation: elevations.level1,
                  isShadow: true,
                ),
                ElevationComponent(
                  description: 'Level 2\ndp',
                  elevation: elevations.level2,
                  isShadow: true,
                ),
                ElevationComponent(
                  description: 'Level 3\ndp',
                  elevation: elevations.level3,
                  isShadow: true,
                ),
                // ElevationComponent(
                //   description: 'Level 4\ndp',
                //   elevation: elevations.level4,
                //   isShadow: true,
                // ),
                ElevationComponent(
                  description: 'Level 5\ndp',
                  elevation: elevations.level5,
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

class ElevationComponent extends StatelessWidget {
  final String description;
  final double elevation;
  final bool isSurface;
  final bool isShadow;

  const ElevationComponent({
    super.key,
    required this.description,
    required this.elevation,
    this.isSurface = false,
    this.isShadow = false,
  });

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
