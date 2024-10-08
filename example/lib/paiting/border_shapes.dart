import 'package:flutter/material.dart';
import 'package:material_toolkit/material_toolkit.dart';
import 'package:material_toolkit_example/widgets/group_item_container.dart';
import 'package:material_toolkit_example/widgets/group_item_row.dart';
import 'package:material_toolkit_example/widgets/group_item_title.dart';

class BorderRadiusGroup extends StatelessWidget {
  const BorderRadiusGroup({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    final metrics = theme.extension<XMetricsData>()!;
    final borderRadii = metrics.borderRadii;
    final gaps = metrics.gaps;

    return Column(
      children: [
        const GroupItemTitle(title: 'Border Radius'),
        gaps.small,
        GroupItemContainer(
          children: [
            GroupItemRow(
              children: [
                BorderRadiusComponent(
                  description: 'None',
                  borderRadius: borderRadii.none,
                ),
                gaps.small,
                BorderRadiusComponent(
                  description: 'Extra Small',
                  borderRadius: borderRadii.extraSmall,
                ),
                gaps.small,
                BorderRadiusComponent(
                  description: 'Small',
                  borderRadius: borderRadii.small,
                ),
              ],
            ),
            gaps.small,
            GroupItemRow(
              children: [
                BorderRadiusComponent(
                  description: 'Semi Small',
                  borderRadius: borderRadii.semiSmall,
                ),
                gaps.small,
                BorderRadiusComponent(
                  description: 'Medium',
                  borderRadius: borderRadii.medium,
                ),
                gaps.small,
                BorderRadiusComponent(
                  description: 'Semi Large',
                  borderRadius: borderRadii.semiLarge,
                ),
              ],
            ),
            gaps.small,
            GroupItemRow(
              children: [
                BorderRadiusComponent(
                  description: 'Large',
                  borderRadius: borderRadii.large,
                ),
                gaps.small,
                BorderRadiusComponent(
                  description: 'Extra Large',
                  borderRadius: borderRadii.extraLarge,
                ),
                gaps.small,
                BorderRadiusComponent(
                  description: 'Super Large',
                  borderRadius: borderRadii.superLarge,
                ),
              ],
            ),
          ],
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
      height: 96,
      width: 96,
      decoration: BoxDecoration(
        borderRadius: borderRadius,
        border: Border.all(color: colorScheme.outline),
        // color: colorScheme.surfaceContainerHighest,
      ),
      child: Center(child: Text(description)),
    );
  }
}