import 'package:flutter/material.dart';
import 'package:material_toolkit/material_toolkit.dart';

class GroupCard extends StatelessWidget {
  final String title;
  final Widget child;

  const GroupCard({
    super.key,
    required this.title,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final metrics = theme.extension<XMetricsData>()!;
    final padding = metrics.padding;
    final gaps = metrics.gaps;

    final textTheme = theme.textTheme;
    final colorScheme = theme.colorScheme;

    return Card(
      // color: colorScheme.surfaceContainerLow,
      elevation: 0,
      child: padding.all(
        XSpaces.large,
        child: Align(
          alignment: Alignment.center,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                title,
                style: textTheme.titleLarge,
              ),
              gaps.large,
              child,
            ],
          ),
        ),
      ),
    );
  }
}
