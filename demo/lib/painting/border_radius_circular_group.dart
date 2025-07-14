import 'package:flutter/material.dart';
import 'package:material_toolkit/material_toolkit.dart';
import 'package:material_toolkit_demo/notifiers/theme_notifier.dart';
import 'package:material_toolkit_demo/widgets/group_item_container.dart';
import 'package:material_toolkit_demo/widgets/group_item_row.dart';
import 'package:material_toolkit_demo/widgets/group_item_subtitle.dart';
import 'package:material_toolkit_demo/widgets/group_item_title.dart';
import 'package:material_toolkit_demo/widgets/info_component.dart';
import 'package:material_toolkit_demo/widgets/number_field.dart';
import 'package:provider/provider.dart';

/// An extension on [RadiusTokensData] to provide utility methods.
extension MaterialRadiusTokensExtension on RadiusTokensData {
  /// Returns the value of a given [RadiusToken].
  double getValue(RadiusToken type) {
    return switch (type) {
      RadiusToken.none => none,
      RadiusToken.extraSmall => extraSmall,
      RadiusToken.semiSmall => semiSmall,
      RadiusToken.small => small,
      RadiusToken.medium => medium,
      RadiusToken.semiLarge => semiLarge,
      RadiusToken.large => large,
      RadiusToken.extraLarge => extraLarge,
      RadiusToken.superLarge => superLarge,
    };
  }

  /// Creates a copy of this object with the given [RadiusToken] replaced
  /// with the new value.
  RadiusTokensData copyWithFromType(RadiusToken type, double value) {
    return switch (type) {
      RadiusToken.none => const RadiusTokensData(),
      RadiusToken.extraSmall => copyWith(extraSmall: value),
      RadiusToken.semiSmall => copyWith(semiSmall: value),
      RadiusToken.small => copyWith(small: value),
      RadiusToken.medium => copyWith(medium: value),
      RadiusToken.semiLarge => copyWith(semiLarge: value),
      RadiusToken.large => copyWith(large: value),
      RadiusToken.extraLarge => copyWith(extraLarge: value),
      RadiusToken.superLarge => copyWith(superLarge: value),
    };
  }
}

/// A widget that displays a group of circular border radius components.
class BorderRadiusCircularGroup extends StatelessWidget {
  /// Creates a [BorderRadiusCircularGroup].
  const BorderRadiusCircularGroup({super.key});

  @override
  Widget build(BuildContext context) {
    final tokens = Theme.of(context).tokens;
    final gaps = tokens.gap;

    Widget row(List<RadiusToken> items) {
      return GroupItemRow(
        children: [
          for (var i = 0; i < items.length; i++) ...[
            BorderRadiusCircularComponent(items[i]),
            if (i != items.length - 1) gaps.small,
          ],
        ],
      );
    }

    return Column(
      children: [
        const GroupItemTitle(title: 'Border Radius'),
        gaps.small,
        const GroupItemSubtitle(subtitle: 'Circular'),
        gaps.small,
        GroupItemContainer(
          children: [
            row([
              RadiusToken.none,
              RadiusToken.extraSmall,
              RadiusToken.semiSmall,
            ]),
            gaps.small,
            row([
              RadiusToken.small,
              RadiusToken.medium,
              RadiusToken.semiLarge,
            ]),
            gaps.small,
            row([
              RadiusToken.large,
              RadiusToken.extraLarge,
              RadiusToken.superLarge,
            ]),
          ],
        ),
      ],
    );
  }
}

/// A widget that displays a circular border radius component.
class BorderRadiusCircularComponent extends StatelessWidget {
  /// The radius token to display.
  final RadiusToken radius;

  /// Creates a [BorderRadiusCircularComponent].
  const BorderRadiusCircularComponent(this.radius, {super.key});

  @override
  Widget build(BuildContext context) {
    final borderRadius = Theme.of(context).tokens.borderRadius;
    return BorderRadiusComponent(
      type: radius,
      info: 'borderRadius.circular($radius)',
      borderRadius: borderRadius.circular(radius),
    );
  }
}

/// A widget that displays a border radius component.
class BorderRadiusComponent extends StatefulWidget {
  /// The type of the radius token.
  final RadiusToken type;

  /// The information text to display.
  final String info;

  /// The border radius to apply.
  final BorderRadius borderRadius;

  /// Creates a [BorderRadiusComponent].
  const BorderRadiusComponent({
    super.key,
    required this.type,
    required this.info,
    required this.borderRadius,
  });

  @override
  State<BorderRadiusComponent> createState() => _BorderRadiusComponentState();
}

class _BorderRadiusComponentState extends State<BorderRadiusComponent> {
  late final TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    final value = context.read<ThemeNotifier>().radii.getValue(widget.type);
    _controller = TextEditingController(text: value.toString());
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final themeNotifier = context.read<ThemeNotifier>();

    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final textTheme = theme.textTheme;
    final gaps = theme.tokens.gap;

    final label = widget.type.toString().split('.').last;
    const size = 128.0;

    return Container(
      height: size,
      width: size,
      decoration: BoxDecoration(
        borderRadius: widget.borderRadius,
        border: Border.all(color: colorScheme.outline),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                label,
                style: textTheme.bodySmall?.copyWith(color: Colors.red),
              ),
              gaps.extraSmall,
              InfoComponent(info: widget.info),
            ],
          ),
          if (widget.type != RadiusToken.none)
            NumberField(
              controller: _controller,
              onChanged: (value) {
                final newValue = double.tryParse(value);
                if (newValue != null) {
                  themeNotifier.updateRadiiTokens(
                    themeNotifier.radii.copyWithFromType(widget.type, newValue),
                  );
                }
              },
            ),
        ],
      ),
    );
  }
}
