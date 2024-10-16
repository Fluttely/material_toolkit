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

    final metrics = theme.extension<XMetricsData>()!;
    final borderRadius = metrics.borderRadius;
    // final border = metrics.borderRadius;

    final gaps = metrics.gap;

    return Column(
      children: [
        const GroupItemTitle(title: 'Border Radius'),
        gaps.small,
        GroupItemContainer(
          children: [
            GroupItemRow(
              children: [
                BorderRadiusComponent(
                  description: 'borderRadius.none',
                  borderRadius: borderRadius.none,
                ),
                gaps.small,
                BorderRadiusComponent(
                  description: 'borderRadius.all(const XRadius.circular(XRadii.extraSmall))',
                  borderRadius: borderRadius.all(const XRadius.circular(XRadii.extraSmall)),
                ),
                gaps.small,
                BorderRadiusComponent(
                  description: 'borderRadius.circular(XRadii.small),',
                  borderRadius: borderRadius.circular(XRadii.small),
                ),
              ],
            ),
            gaps.small,
            GroupItemRow(
              children: [
                BorderRadiusComponent(
                  description:
                      'borderRadius.vertical(top: const XRadius.circular(XRadii.semiSmall), bottom: const XRadius.circular(XRadii.semiSmall))',
                  borderRadius: borderRadius.vertical(
                      top: const XRadius.circular(XRadii.semiSmall), bottom: const XRadius.circular(XRadii.semiSmall)),
                ),
                gaps.small,
                BorderRadiusComponent(
                  description:
                      'borderRadius.horizontal(left: const XRadius.circular(XRadii.medium), right: const XRadius.circular(XRadii.medium))',
                  borderRadius: borderRadius.horizontal(
                      left: const XRadius.circular(XRadii.medium), right: const XRadius.circular(XRadii.medium)),
                ),
                gaps.small,
                BorderRadiusComponent(
                  description:
                      'borderRadius.only(topLeft: const XRadius.circular(XRadii.semiLarge),topRight: const XRadius.circular(XRadii.semiLarge),bottomLeft: const XRadius.circular(XRadii.semiLarge),bottomRight: const XRadius.circular(XRadii.semiLarge))',
                  borderRadius: borderRadius.only(
                      topLeft: const XRadius.circular(XRadii.semiLarge),
                      topRight: const XRadius.circular(XRadii.semiLarge),
                      bottomLeft: const XRadius.circular(XRadii.semiLarge),
                      bottomRight: const XRadius.circular(XRadii.semiLarge)),
                ),
              ],
            ),
            gaps.small,
            GroupItemRow(
              children: [
                BorderRadiusComponent(
                  description: 'borderRadius.circular(XRadii.large)',
                  borderRadius: borderRadius.circular(XRadii.large),
                ),
                gaps.small,
                BorderRadiusComponent(
                  description: 'borderRadius.circular(XRadii.extraLarge)',
                  borderRadius: borderRadius.circular(XRadii.extraLarge),
                ),
                gaps.small,
                BorderRadiusComponent(
                  description: 'borderRadius.circular(XRadii.superLarge)',
                  borderRadius: borderRadius.circular(XRadii.superLarge),
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
