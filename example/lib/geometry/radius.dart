import 'package:flutter/material.dart';
import 'package:material_toolkit/material_toolkit.dart';

class RadiusGroup extends StatelessWidget {
  const RadiusGroup({super.key});

  @override
  Widget build(BuildContext context) {
    final metrics = Theme.of(context).extension<XMetricsData>()!;
    final radii = metrics.radii;
    final borderRadii = metrics.borderRadii;
    final edgeInsets = metrics.edgeInsets;
    final gaps = metrics.gaps;

    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    return Column(
      children: [
        Text(
          'Radius',
          style: textTheme.titleSmall,
        ),
        gaps.small,
        Container(
          width: double.infinity,
          // height: double.infinity,
          // height: 416,
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
          child: Column(
            children: [
              RadiusComponent(
                description: 'None',
                radius: radii.none,
              ),
              RadiusComponent(
                description: 'Extra Small',
                radius: radii.extraSmall,
              ),
              RadiusComponent(
                description: 'Small',
                radius: radii.small,
              ),
              RadiusComponent(
                description: 'Semi Small',
                radius: radii.semiSmall,
              ),
              RadiusComponent(
                description: 'Medium',
                radius: radii.medium,
              ),
              RadiusComponent(
                description: 'Semi Large',
                radius: radii.semiLarge,
              ),
              RadiusComponent(
                description: 'Large',
                radius: radii.large,
              ),
              RadiusComponent(
                description: 'Extra Large',
                radius: radii.extraLarge,
              ),
              RadiusComponent(
                description: 'Super Large',
                radius: radii.superLarge,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class RadiusComponent extends StatelessWidget {
  final String description;
  final Radius radius;

  const RadiusComponent({
    super.key,
    required this.description,
    required this.radius,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Row(
      children: [
        Text('$description: $radius'),
      ],
    );
  }
}
