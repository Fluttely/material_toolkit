import 'package:flutter/material.dart';
import 'package:material_toolkit/material_toolkit.dart';

class GroupItemContainer extends StatelessWidget {
  const GroupItemContainer({
    super.key,
    required this.children,
  });

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    final metrics = theme.extension<XMetricsData>()!;
    final borderRadius = metrics.borderRadius;
    final edgeInsets = metrics.edgeInsets;

    return Container(
      // width: double.infinity,
      // constraints: const BoxConstraints(maxWidth: 480),

      // width: 300,
      padding: edgeInsets.symmetric(
        vertical: XSpaces.medium,
        horizontal: XSpaces.extraLarge,
      ),
      decoration: BoxDecoration(
        color: colorScheme.surface,
        borderRadius: borderRadius.circular(XRadii.semiSmall),
        border: Border.all(color: colorScheme.outlineVariant),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: children,
      ),
    );
  }
}
