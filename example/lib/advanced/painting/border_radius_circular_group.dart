import 'package:flutter/material.dart';
import 'package:material_toolkit/material_toolkit.dart';
import 'package:material_toolkit_example/advanced/notifiers/theme_notifier.dart';
import 'package:material_toolkit_example/advanced/widgets/group_item_container.dart';
import 'package:material_toolkit_example/advanced/widgets/group_item_row.dart';
import 'package:material_toolkit_example/advanced/widgets/group_item_subtitle.dart';
import 'package:material_toolkit_example/advanced/widgets/group_item_title.dart';
import 'package:material_toolkit_example/advanced/widgets/info_component.dart';
import 'package:material_toolkit_example/advanced/widgets/number_field.dart';
import 'package:provider/provider.dart';

extension XRadiiTokensExtension on XRadiiTokens {
  double getValue(XRadii type) {
    return switch (type) {
      XRadii.none => none,
      XRadii.extraSmall => extraSmall,
      XRadii.semiSmall => semiSmall,
      XRadii.small => small,
      XRadii.medium => medium,
      XRadii.semiLarge => semiLarge,
      XRadii.large => large,
      XRadii.extraLarge => extraLarge,
      XRadii.superLarge => superLarge,
    };
  }

  XRadiiTokens copyWithFromType(XRadii type, double value) {
    return switch (type) {
      XRadii.none => const XRadiiTokens(),
      XRadii.extraSmall => copyWith(extraSmall: value),
      XRadii.semiSmall => copyWith(semiSmall: value),
      XRadii.small => copyWith(small: value),
      XRadii.medium => copyWith(medium: value),
      XRadii.semiLarge => copyWith(semiLarge: value),
      XRadii.large => copyWith(large: value),
      XRadii.extraLarge => copyWith(extraLarge: value),
      XRadii.superLarge => copyWith(superLarge: value),
    };
  }
}

class BorderRadiusCircularGroup extends StatelessWidget {
  const BorderRadiusCircularGroup({super.key});

  @override
  Widget build(BuildContext context) {
    final tokens = Theme.of(context).tokens;
    final gaps = tokens.gaps;

    Widget row(List<XRadii> items) {
      return GroupItemRow(
        children: [
          for (var i = 0; i < items.length; i++) ...[
            BorderRadiusCircularComponent(items[i]),
            if (i != items.length - 1) gaps.small,
          ]
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
            row([XRadii.none, XRadii.extraSmall, XRadii.semiSmall]),
            gaps.small,
            row([XRadii.small, XRadii.medium, XRadii.semiLarge]),
            gaps.small,
            row([XRadii.large, XRadii.extraLarge, XRadii.superLarge]),
          ],
        ),
      ],
    );
  }
}

class BorderRadiusCircularComponent extends StatelessWidget {
  final XRadii radius;

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
    final gaps = theme.tokens.gaps;

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
          if (widget.type != XRadii.none)
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
