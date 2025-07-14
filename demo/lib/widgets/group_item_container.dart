import 'package:flutter/material.dart';
import 'package:material_toolkit/material_toolkit.dart';

/// A container for a group of items.
class GroupItemContainer extends StatelessWidget {
  /// Creates a [GroupItemContainer].
  const GroupItemContainer({
    required this.children,
    super.key,
  });

  /// The widgets to display in the container.
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    final tokens = theme.tokens;
    final borderRadius = tokens.borderRadius;
    final edgeInsets = tokens.edgeInsets;

    return Container(
      // width: double.infinity,
      // constraints: const BoxConstraints(maxWidth: 480),

      // width: 300,
      padding: edgeInsets.symmetric(
        vertical: SpacingToken.medium,
        horizontal: SpacingToken.small,
      ),
      decoration: BoxDecoration(
        color: colorScheme.surface,
        borderRadius: borderRadius.circular(RadiusToken.semiSmall),
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
