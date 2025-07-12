import 'package:flutter/material.dart';
import 'package:material_toolkit/material_toolkit.dart';
import 'package:material_toolkit_demo/widgets/group_item_container.dart';
import 'package:material_toolkit_demo/widgets/group_item_row.dart';
import 'package:material_toolkit_demo/widgets/group_item_subtitle.dart';
import 'package:material_toolkit_demo/widgets/group_item_title.dart';
import 'package:material_toolkit_demo/widgets/info_component.dart';

class BorderRadiusAllGroup extends StatelessWidget {
  const BorderRadiusAllGroup({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final tokens = theme.tokens;
    final borderRadius = tokens.borderRadius;
    // final border = tokens.borderRadius;

    final gaps = tokens.gap;

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
                const BorderRadiusCircularComponent(
                  radius: MaterialRadius.none,
                ),
                gaps.small,
                BorderRadiusComponent(
                  type: MaterialRadius.extraSmall,
                  info:
                      'borderRadius.all(DesignRadius.circular(MaterialRadius.extraSmall))',
                  borderRadius: borderRadius.all(
                    const DesignRadius.circular(MaterialRadius.extraSmall),
                  ),
                ),
                gaps.small,
                BorderRadiusComponent(
                  type: MaterialRadius.small,
                  info: 'borderRadius.circular(MaterialRadius.small)',
                  borderRadius: borderRadius.circular(MaterialRadius.small),
                ),
              ],
            ),
            gaps.small,
            GroupItemRow(
              children: [
                BorderRadiusComponent(
                  type: MaterialRadius.semiSmall,
                  info:
                      'borderRadius.vertical(top: DesignRadius.circular(MaterialRadius.semiSmall), bottom: DesignRadius.circular(MaterialRadius.semiSmall))',
                  borderRadius: borderRadius.vertical(
                    top: const DesignRadius.circular(MaterialRadius.semiSmall),
                    bottom: const DesignRadius.circular(
                      MaterialRadius.semiSmall,
                    ),
                  ),
                ),
                gaps.small,
                BorderRadiusComponent(
                  type: MaterialRadius.medium,
                  info:
                      'borderRadius.horizontal(left: DesignRadius.circular(MaterialRadius.medium), right: DesignRadius.circular(MaterialRadius.medium))',
                  borderRadius: borderRadius.horizontal(
                    left: const DesignRadius.circular(MaterialRadius.medium),
                    right: const DesignRadius.circular(MaterialRadius.medium),
                  ),
                ),
                gaps.small,
                BorderRadiusComponent(
                  type: MaterialRadius.semiLarge,
                  info:
                      'onlborderRadiusy(topLeft: DesignRadius.circular(MaterialRadius.semiLarge),topRight: DesignRadius.circular(MaterialRadius.semiLarge),bottomLeft: DesignRadius.circular(MaterialRadius.semiLarge),bottomRight: DesignRadius.circular(MaterialRadius.semiLarge))',
                  borderRadius: borderRadius.only(
                    topLeft: const DesignRadius.circular(
                      MaterialRadius.semiLarge,
                    ),
                    topRight: const DesignRadius.circular(
                      MaterialRadius.semiLarge,
                    ),
                    bottomLeft: const DesignRadius.circular(
                      MaterialRadius.semiLarge,
                    ),
                    bottomRight: const DesignRadius.circular(
                      MaterialRadius.semiLarge,
                    ),
                  ),
                ),
              ],
            ),
            gaps.small,
            GroupItemRow(
              children: [
                BorderRadiusComponent(
                  type: MaterialRadius.large,
                  info: 'borderRadius.circular(MaterialRadius.large)',
                  borderRadius: borderRadius.circular(MaterialRadius.large),
                ),
                gaps.small,
                BorderRadiusComponent(
                  type: MaterialRadius.extraLarge,
                  info: 'borderRadius.circular(MaterialRadius.extraLarge)',
                  borderRadius: borderRadius.circular(
                    MaterialRadius.extraLarge,
                  ),
                ),
                gaps.small,
                BorderRadiusComponent(
                  type: MaterialRadius.superLarge,
                  info: 'borderRadius.circular(MaterialRadius.superLarge)',
                  borderRadius: borderRadius.circular(
                    MaterialRadius.superLarge,
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

class BorderRadiusCircularComponent extends StatelessWidget {
  const BorderRadiusCircularComponent({required this.radius, super.key});

  final MaterialRadius radius;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final tokens = theme.tokens;
    final borderRadius = tokens.borderRadius;

    return BorderRadiusComponent(
      type: radius,
      info: 'borderRadius.circular($radius)',
      borderRadius: borderRadius.circular(radius),
    );
  }
}

class BorderRadiusComponent extends StatelessWidget {
  const BorderRadiusComponent({
    required this.type,
    required this.info,
    required this.borderRadius,
    super.key,
  });
  final MaterialRadius type;
  final String info;
  final BorderRadius borderRadius;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final textTheme = theme.textTheme;

    final tokens = theme.tokens;
    // final border = tokens.borderRadius;

    final gaps = tokens.gap;

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
            type.toString().replaceAll('MaterialRadius.', ''),
            style: textTheme.bodySmall?.copyWith(color: Colors.red),
          ),
          gaps.extraSmall,
          InfoComponent(info: info),
        ],
      ),
    );
  }
}
