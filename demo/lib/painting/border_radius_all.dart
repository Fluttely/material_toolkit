import 'package:flutter/material.dart';
import 'package:material_toolkit/material_toolkit.dart';
import 'package:material_toolkit_demo/widgets/group_item_container.dart';
import 'package:material_toolkit_demo/widgets/group_item_row.dart';
import 'package:material_toolkit_demo/widgets/group_item_subtitle.dart';
import 'package:material_toolkit_demo/widgets/group_item_title.dart';
import 'package:material_toolkit_demo/widgets/info_component.dart';

/// A widget that displays a group of border radius components.
class BorderRadiusAllGroup extends StatelessWidget {
  /// Creates a [BorderRadiusAllGroup].
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
                  radius: RadiusToken.none,
                ),
                gaps.small,
                BorderRadiusComponent(
                  type: RadiusToken.extraSmall,
                  info: '''
borderRadius.all(
  DesignRadius.circular(MaterialRadius.extraSmall),
)''',
                  borderRadius: borderRadius.all(
                    const DesignRadius.circular(RadiusToken.extraSmall),
                  ),
                ),
                gaps.small,
                BorderRadiusComponent(
                  type: RadiusToken.small,
                  info: 'borderRadius.circular(MaterialRadius.small)',
                  borderRadius: borderRadius.circular(RadiusToken.small),
                ),
              ],
            ),
            gaps.small,
            GroupItemRow(
              children: [
                BorderRadiusComponent(
                  type: RadiusToken.semiSmall,
                  info: '''
borderRadius.vertical(
  top: DesignRadius.circular(MaterialRadius.semiSmall),
  bottom: DesignRadius.circular(MaterialRadius.semiSmall),
)''',
                  borderRadius: borderRadius.vertical(
                    top: const DesignRadius.circular(RadiusToken.semiSmall),
                    bottom: const DesignRadius.circular(
                      RadiusToken.semiSmall,
                    ),
                  ),
                ),
                gaps.small,
                BorderRadiusComponent(
                  type: RadiusToken.medium,
                  info: '''
borderRadius.horizontal(
  left: DesignRadius.circular(MaterialRadius.medium),
  right: DesignRadius.circular(MaterialRadius.medium),
)''',
                  borderRadius: borderRadius.horizontal(
                    left: const DesignRadius.circular(RadiusToken.medium),
                    right: const DesignRadius.circular(RadiusToken.medium),
                  ),
                ),
                gaps.small,
                BorderRadiusComponent(
                  type: RadiusToken.semiLarge,
                  info: '''
borderRadius.only(
  topLeft: DesignRadius.circular(MaterialRadius.semiLarge),
  topRight: DesignRadius.circular(MaterialRadius.semiLarge),
  bottomLeft: DesignRadius.circular(MaterialRadius.semiLarge),
  bottomRight: DesignRadius.circular(MaterialRadius.semiLarge),
)''',
                  borderRadius: borderRadius.only(
                    topLeft: const DesignRadius.circular(
                      RadiusToken.semiLarge,
                    ),
                    topRight: const DesignRadius.circular(
                      RadiusToken.semiLarge,
                    ),
                    bottomLeft: const DesignRadius.circular(
                      RadiusToken.semiLarge,
                    ),
                    bottomRight: const DesignRadius.circular(
                      RadiusToken.semiLarge,
                    ),
                  ),
                ),
              ],
            ),
            gaps.small,
            GroupItemRow(
              children: [
                BorderRadiusComponent(
                  type: RadiusToken.large,
                  info: 'borderRadius.circular(MaterialRadius.large)',
                  borderRadius: borderRadius.circular(RadiusToken.large),
                ),
                gaps.small,
                BorderRadiusComponent(
                  type: RadiusToken.extraLarge,
                  info: 'borderRadius.circular(MaterialRadius.extraLarge)',
                  borderRadius: borderRadius.circular(
                    RadiusToken.extraLarge,
                  ),
                ),
                gaps.small,
                BorderRadiusComponent(
                  type: RadiusToken.superLarge,
                  info: 'borderRadius.circular(MaterialRadius.superLarge)',
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

/// A widget that displays a circular border radius component.
class BorderRadiusCircularComponent extends StatelessWidget {
  /// Creates a [BorderRadiusCircularComponent].
  const BorderRadiusCircularComponent({required this.radius, super.key});

  /// The radius token to use.
  final RadiusToken radius;

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

/// A widget that displays a border radius component.
class BorderRadiusComponent extends StatelessWidget {
  /// Creates a [BorderRadiusComponent].
  const BorderRadiusComponent({
    required this.type,
    required this.info,
    required this.borderRadius,
    super.key,
  });

  /// The type of the radius token.
  final RadiusToken type;

  /// The information text to display.
  final String info;

  /// The border radius to apply.
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
