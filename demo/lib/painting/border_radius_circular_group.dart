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

extension MaterialRadiusTokensExtension on RadiusTokens {
  double getValue(MaterialRadius type) {
    return switch (type) {
      MaterialRadius.none => none,
      MaterialRadius.extraSmall => extraSmall,
      MaterialRadius.semiSmall => semiSmall,
      MaterialRadius.small => small,
      MaterialRadius.medium => medium,
      MaterialRadius.semiLarge => semiLarge,
      MaterialRadius.large => large,
      MaterialRadius.extraLarge => extraLarge,
      MaterialRadius.superLarge => superLarge,
    };
  }

  RadiusTokens copyWithFromType(MaterialRadius type, double value) {
    return switch (type) {
      MaterialRadius.none => const RadiusTokens(),
      MaterialRadius.extraSmall => copyWith(extraSmall: value),
      MaterialRadius.semiSmall => copyWith(semiSmall: value),
      MaterialRadius.small => copyWith(small: value),
      MaterialRadius.medium => copyWith(medium: value),
      MaterialRadius.semiLarge => copyWith(semiLarge: value),
      MaterialRadius.large => copyWith(large: value),
      MaterialRadius.extraLarge => copyWith(extraLarge: value),
      MaterialRadius.superLarge => copyWith(superLarge: value),
    };
  }
}

class BorderRadiusCircularGroup extends StatelessWidget {
  const BorderRadiusCircularGroup({super.key});

  @override
  Widget build(BuildContext context) {
    final tokens = Theme.of(context).tokens;
    final gaps = tokens.gap;

    Widget row(List<MaterialRadius> items) {
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
              MaterialRadius.none,
              MaterialRadius.extraSmall,
              MaterialRadius.semiSmall,
            ]),
            gaps.small,
            row([
              MaterialRadius.small,
              MaterialRadius.medium,
              MaterialRadius.semiLarge,
            ]),
            gaps.small,
            row([
              MaterialRadius.large,
              MaterialRadius.extraLarge,
              MaterialRadius.superLarge,
            ]),
          ],
        ),
      ],
    );
  }
}

class BorderRadiusCircularComponent extends StatelessWidget {
  final MaterialRadius radius;

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

class BorderRadiusComponent extends StatefulWidget {
  final MaterialRadius type;
  final String info;
  final BorderRadius borderRadius;

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
          if (widget.type != MaterialRadius.none)
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
