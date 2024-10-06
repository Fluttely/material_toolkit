import 'package:flutter/material.dart';
import 'package:material_toolkit/material_toolkit.dart';

class BorderRadiusGroup extends StatelessWidget {
  const BorderRadiusGroup({super.key});

  @override
  Widget build(BuildContext context) {
    final metrics = Theme.of(context).extension<XMetricsData>()!;
    final borderRadii = metrics.borderRadii;
    final edgeInsets = metrics.edgeInsets;
    final gaps = metrics.gaps;

    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    return Column(
      children: [
        Text(
          'Border Radius',
          style: textTheme.titleSmall,
        ),
        gaps.small,
        Container(
          width: double.infinity,
          // height: double.infinity,
          height: 416,
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
              crossAxisCount: 3,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
            children: [
              BorderRadiusComponent(
                description: 'none',
                borderRadius: borderRadii.none,
              ),
              BorderRadiusComponent(
                description: 'extraSmall',
                borderRadius: borderRadii.extraSmall,
              ),
              BorderRadiusComponent(
                description: 'small',
                borderRadius: borderRadii.small,
              ),
              BorderRadiusComponent(
                description: 'semiSmall',
                borderRadius: borderRadii.semiSmall,
              ),
              BorderRadiusComponent(
                description: 'medium',
                borderRadius: borderRadii.medium,
              ),
              BorderRadiusComponent(
                description: 'semiLarge',
                borderRadius: borderRadii.semiLarge,
              ),
              BorderRadiusComponent(
                description: 'large',
                borderRadius: borderRadii.large,
              ),
              BorderRadiusComponent(
                description: 'extraLarge',
                borderRadius: borderRadii.extraLarge,
              ),
              BorderRadiusComponent(
                description: 'superLarge',
                borderRadius: borderRadii.superLarge,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class BorderRadiusComponent extends StatelessWidget {
  final String description;
  final BorderRadius borderRadius;

  const BorderRadiusComponent({
    super.key,
    required this.description,
    required this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Container(
      decoration: BoxDecoration(
        borderRadius: borderRadius,
        border: Border.all(color: colorScheme.outline),
        // color: colorScheme.surfaceContainerHighest,
      ),
      child: Center(child: Text(description)),
    );
  }
}
