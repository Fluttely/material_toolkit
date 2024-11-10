import 'package:flutter/material.dart';
import 'package:material_toolkit/material_toolkit.dart';
import 'package:material_toolkit_example/widgets/group_item_container.dart';
import 'package:material_toolkit_example/widgets/group_item_row.dart';
import 'package:material_toolkit_example/widgets/group_item_subtitle.dart';
import 'package:material_toolkit_example/widgets/group_item_title.dart';
import 'package:material_toolkit_example/widgets/info_component.dart';

class BorderRadiusAllGroup extends StatelessWidget {
  const BorderRadiusAllGroup({super.key});

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
                const BorderRadiusCircularComponent(radius: XRadii.none),
                gaps.small,
                BorderRadiusComponent(
                  type: XRadii.extraSmall,
                  info: 'borderRadius.all(XRadius.circular(XRadii.extraSmall))',
                  borderRadius: borderRadius
                      .all(const XRadius.circular(XRadii.extraSmall)),
                ),
                gaps.small,
                BorderRadiusComponent(
                  type: XRadii.small,
                  info: 'borderRadius.circular(XRadii.small)',
                  borderRadius: borderRadius.circular(XRadii.small),
                ),
              ],
            ),
            gaps.small,
            GroupItemRow(
              children: [
                BorderRadiusComponent(
                  type: XRadii.semiSmall,
                  info:
                      'borderRadius.vertical(top: XRadius.circular(XRadii.semiSmall), bottom: XRadius.circular(XRadii.semiSmall))',
                  borderRadius: borderRadius.vertical(
                      top: const XRadius.circular(XRadii.semiSmall),
                      bottom: const XRadius.circular(XRadii.semiSmall)),
                ),
                gaps.small,
                BorderRadiusComponent(
                  type: XRadii.medium,
                  info:
                      'borderRadius.horizontal(left: XRadius.circular(XRadii.medium), right: XRadius.circular(XRadii.medium))',
                  borderRadius: borderRadius.horizontal(
                      left: const XRadius.circular(XRadii.medium),
                      right: const XRadius.circular(XRadii.medium)),
                ),
                gaps.small,
                BorderRadiusComponent(
                  type: XRadii.semiLarge,
                  info:
                      'onlborderRadiusy(topLeft: XRadius.circular(XRadii.semiLarge),topRight: XRadius.circular(XRadii.semiLarge),bottomLeft: XRadius.circular(XRadii.semiLarge),bottomRight: XRadius.circular(XRadii.semiLarge))',
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
                  type: XRadii.large,
                  info: 'borderRadius.circular(XRadii.large)',
                  borderRadius: borderRadius.circular(XRadii.large),
                ),
                gaps.small,
                BorderRadiusComponent(
                  type: XRadii.extraLarge,
                  info: 'borderRadius.circular(XRadii.extraLarge)',
                  borderRadius: borderRadius.circular(XRadii.extraLarge),
                ),
                gaps.small,
                BorderRadiusComponent(
                  type: XRadii.superLarge,
                  info: 'borderRadius.circular(XRadii.superLarge)',
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

class BorderRadiusCircularComponent extends StatelessWidget {
  const BorderRadiusCircularComponent({
    super.key,
    required this.radius,
  });

  final XRadii radius;

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
