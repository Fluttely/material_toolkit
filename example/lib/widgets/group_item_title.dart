import 'package:flutter/material.dart';
import 'package:material_toolkit/material_toolkit.dart';

class GroupItemTitle extends StatelessWidget {
  final String title;

  const GroupItemTitle({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    final metrics = theme.extension<XMetricsData>()!;
    final gaps = metrics.gap;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          title,
          style: textTheme.titleMedium,
        ),
        gaps.extraSmall,
        const Icon(Icons.info_outline, size: 16),
      ],
    );
  }
}
