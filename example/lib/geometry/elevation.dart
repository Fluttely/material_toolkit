import 'package:flutter/material.dart';
import 'package:material_toolkit/material_toolkit.dart';

class ElevationGroup extends StatelessWidget {
  const ElevationGroup({super.key});

  @override
  Widget build(BuildContext context) {
    final metrics = Theme.of(context).extension<XMetricsData>()!;
    final borderRadii = metrics.borderRadii;
    final borderShapes = metrics.borderShapes;
    final boxShadows = metrics.boxShadows;
    final durations = metrics.durations;
    final edgeInsets = metrics.edgeInsets;
    final elevations = metrics.elevations;
    final formFactor = metrics.formFactor;
    final gaps = metrics.gaps;
    final iconSizes = metrics.iconSizes;
    final padding = metrics.padding;
    final radii = metrics.radii;
    final spaces = metrics.spaces;

    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Column(
      children: [
        Text(
          'Surface Tint Color Only',
          style: textTheme.titleSmall,
        ),
        gaps.small,
        Container(
          width: double.infinity,
          // height: double.infinity,
          height: 106,
          padding: edgeInsets.symmetric(
            vertical: XSpaces.medium,
            horizontal: XSpaces.extraLarge,
          ),
          decoration: BoxDecoration(
            color: colorScheme.surface,
            borderRadius: borderRadii.semiSmall,
            border: Border.all(color: colorScheme.outlineVariant),
            // boxShadow: [
            //   boxShadows.large,
            // ],
          ),
          child: GridView(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 5,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
            children: [
              ElevationComponent(
                description: 'level 1',
                elevation: elevations.level1,
                isSurface: true,
              ),
              ElevationComponent(
                description: 'level 2',
                elevation: elevations.level2,
                isSurface: true,
              ),
              ElevationComponent(
                description: 'level 3',
                elevation: elevations.level3,
                isSurface: true,
              ),
              ElevationComponent(
                description: 'level 4',
                elevation: elevations.level4,
                isSurface: true,
              ),
              ElevationComponent(
                description: 'level 5',
                elevation: elevations.level5,
                isSurface: true,
              ),
            ],
          ),
        ),
        gaps.large,
        Text(
          'Surface Tint Color and Shadow Color',
          style: textTheme.titleSmall,
        ),
        gaps.small,
        Container(
          width: double.infinity,
          // height: double.infinity,
          height: 106,
          padding: edgeInsets.symmetric(
            vertical: XSpaces.medium,
            horizontal: XSpaces.extraLarge,
          ),
          decoration: BoxDecoration(
            color: colorScheme.surface,
            borderRadius: borderRadii.semiSmall,
            border: Border.all(color: colorScheme.outlineVariant),
            // boxShadow: [
            //   boxShadows.large,
            // ],
          ),
          child: GridView(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 5,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
            children: [
              ElevationComponent(
                description: 'level 1',
                elevation: elevations.level1,
                isSurface: true,
                isShadow: true,
              ),
              ElevationComponent(
                description: 'level 2',
                elevation: elevations.level2,
                isSurface: true,
                isShadow: true,
              ),
              ElevationComponent(
                description: 'level 3',
                elevation: elevations.level3,
                isSurface: true,
                isShadow: true,
              ),
              ElevationComponent(
                description: 'level 4',
                elevation: elevations.level4,
                isSurface: true,
                isShadow: true,
              ),
              ElevationComponent(
                description: 'level 5',
                elevation: elevations.level5,
                isSurface: true,
                isShadow: true,
              ),
            ],
          ),
        ),
        gaps.large,
        Text(
          'Shadow Color Only',
          style: textTheme.titleSmall,
        ),
        gaps.small,
        Container(
          width: double.infinity,
          // height: double.infinity,
          height: 106,
          padding: edgeInsets.symmetric(
            vertical: XSpaces.medium,
            horizontal: XSpaces.extraLarge,
          ),
          decoration: BoxDecoration(
            color: colorScheme.surface,
            borderRadius: borderRadii.semiSmall,
            border: Border.all(color: colorScheme.outlineVariant),
            // boxShadow: [
            //   boxShadows.large,
            // ],
          ),
          child: GridView(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 5,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
            children: [
              ElevationComponent(
                description: 'level 1',
                elevation: elevations.level1,
                isShadow: true,
              ),
              ElevationComponent(
                description: 'level 2',
                elevation: elevations.level2,
                isShadow: true,
              ),
              ElevationComponent(
                description: 'level 3',
                elevation: elevations.level3,
                isShadow: true,
              ),
              ElevationComponent(
                description: 'level 4',
                elevation: elevations.level4,
                isShadow: true,
              ),
              ElevationComponent(
                description: 'level 5',
                elevation: elevations.level5,
                isShadow: true,
              ),
            ],
          ),
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
