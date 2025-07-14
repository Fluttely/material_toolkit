import 'package:flutter/material.dart';
import 'package:material_toolkit/material_toolkit.dart';
import 'package:material_toolkit_demo/widgets/group_item_container.dart';
import 'package:material_toolkit_demo/widgets/group_item_row.dart';
import 'package:material_toolkit_demo/widgets/group_item_title.dart';

/// A widget that displays a group of border radius components.
class BorderRadiusGroup extends StatelessWidget {
  /// Creates a [BorderRadiusGroup].
  const BorderRadiusGroup({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    // final textTheme = theme.textTheme;

    final tokens = theme.tokens;
    final borderRadius = tokens.borderRadius;
    final gaps = tokens.gap;

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
                  borderRadius: borderRadius.circular(RadiusToken.none),
                ),
                gaps.small,
                BorderRadiusComponent(
                  description: 'Extra Small',
                  borderRadius: borderRadius.circular(
                    RadiusToken.extraSmall,
                  ),
                ),
                gaps.small,
                BorderRadiusComponent(
                  description: 'Small',
                  borderRadius: borderRadius.circular(RadiusToken.small),
                ),
              ],
            ),
            gaps.small,
            GroupItemRow(
              children: [
                BorderRadiusComponent(
                  description: 'Semi Small',
                  borderRadius: borderRadius.circular(RadiusToken.semiSmall),
                ),
                gaps.small,
                BorderRadiusComponent(
                  description: 'Medium',
                  borderRadius: borderRadius.circular(RadiusToken.medium),
                ),
                gaps.small,
                BorderRadiusComponent(
                  description: 'Semi Large',
                  borderRadius: borderRadius.circular(RadiusToken.semiLarge),
                ),
              ],
            ),
            gaps.small,
            GroupItemRow(
              children: [
                BorderRadiusComponent(
                  description: 'Large',
                  borderRadius: borderRadius.circular(RadiusToken.large),
                ),
                gaps.small,
                BorderRadiusComponent(
                  description: 'Extra Large',
                  borderRadius: borderRadius.circular(
                    RadiusToken.extraLarge,
                  ),
                ),
                gaps.small,
                BorderRadiusComponent(
                  description: 'Super Large',
                  borderRadius: borderRadius.circular(
                    RadiusToken.superLarge,
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

/// A widget that displays a border radius component.
class BorderRadiusComponent extends StatelessWidget {
  /// The description of the border radius.
  final String description;

  /// The border radius to apply.
  final BorderRadius borderRadius;

  /// Creates a [BorderRadiusComponent].
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
