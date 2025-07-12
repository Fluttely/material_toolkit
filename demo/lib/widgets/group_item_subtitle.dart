import 'package:flutter/material.dart';
import 'package:material_toolkit/material_toolkit.dart';
import 'package:material_toolkit_demo/widgets/info_component.dart';

class GroupItemSubtitle extends StatelessWidget {
  final String subtitle;

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
