import 'package:flutter/material.dart';
import 'package:material_toolkit/material_toolkit.dart';
import 'package:material_toolkit_demo/widgets/info_component.dart';

/// A widget that displays a subtitle for a group of items.
class GroupItemSubtitle extends StatelessWidget {
  /// The subtitle to display.
  final String subtitle;

  /// Creates a [GroupItemSubtitle].
  const GroupItemSubtitle({super.key, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    final tokens = theme.tokens;
    final gaps = tokens.gap;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          subtitle,
          style: textTheme.titleSmall,
          // textAlign: TextAlign.center,
        ),
        gaps.extraSmall,
        const InfoComponent(info: 'TODO'),
      ],
    );
  }
}
