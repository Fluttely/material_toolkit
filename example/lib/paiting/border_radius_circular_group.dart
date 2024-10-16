import 'package:flutter/material.dart';
import 'package:material_toolkit/material_toolkit.dart';
import 'package:material_toolkit_example/widgets/group_item_container.dart';
import 'package:material_toolkit_example/widgets/group_item_row.dart';
import 'package:material_toolkit_example/widgets/group_item_subtitle.dart';
import 'package:material_toolkit_example/widgets/group_item_title.dart';
import 'package:material_toolkit_example/widgets/info_component.dart';

class BorderRadiusCircularGroup extends StatelessWidget {
  const BorderRadiusCircularGroup({super.key});

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
        const GroupItemSubtitle(subtitle: 'Circular'),
        gaps.small,
        GroupItemContainer(
          children: [
            GroupItemRow(
              children: [
                const BorderRadiusCircularComponent(XRadii.none),
                gaps.small,
                const BorderRadiusCircularComponent(XRadii.extraSmall),
                gaps.small,
                const BorderRadiusCircularComponent(XRadii.semiSmall),
              ],
            ),
            gaps.small,
            GroupItemRow(
              children: [
                const BorderRadiusCircularComponent(XRadii.small),
                gaps.small,
                const BorderRadiusCircularComponent(XRadii.medium),
                gaps.small,
                const BorderRadiusCircularComponent(XRadii.semiLarge),
              ],
            ),
            gaps.small,
            GroupItemRow(
              children: [
                const BorderRadiusCircularComponent(XRadii.large),
                gaps.small,
                const BorderRadiusCircularComponent(XRadii.extraLarge),
                gaps.small,
                const BorderRadiusCircularComponent(XRadii.superLarge),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

class BorderRadiusCircularComponent extends StatelessWidget {
  final XRadii radius;

  const BorderRadiusCircularComponent(
    this.radius, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final metrics = theme.extension<XMetricsData>()!;
    final borderRadius = metrics.borderRadius;

    return BorderRadiusComponent(
      type: radius,
      info: 'borderRadius.circular($radius)',
      borderRadius: borderRadius.circular(radius),
    );
  }
}

class BorderRadiusComponent extends StatelessWidget {
  final XRadii type;
  final String info;
  final BorderRadius borderRadius;

  const BorderRadiusComponent({
    super.key,
    required this.type,
    required this.info,
    required this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final textTheme = theme.textTheme;

    final metrics = theme.extension<XMetricsData>()!;
    // final border = metrics.borderRadius;

    final gaps = metrics.gap;

    return Container(
      height: 96,
      width: 96,
      decoration: BoxDecoration(
        borderRadius: borderRadius,
        border: Border.all(color: colorScheme.outline),
        // color: colorScheme.surfaceContainerHighest,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            type.toString().replaceAll("XRadii.", ""),
            style: textTheme.bodySmall?.copyWith(color: Colors.red),
          ),
          gaps.extraSmall,
          InfoComponent(info: info),
        ],
      ),
    );
  }
}
