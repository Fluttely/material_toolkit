import 'package:flutter/material.dart';
import 'package:material_toolkit/material_toolkit.dart';

/// A widget that displays a title for a group of items.
class GroupItemTitle extends StatelessWidget {
  /// The title to display.
  final String title;

  /// Creates a [GroupItemTitle].
  const GroupItemTitle({
    super.key,
    required this.title,
  });

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
          title,
          style: textTheme.titleMedium,
        ),
        gaps.extraSmall,
        const Icon(Icons.info_outline, size: 16),
      ],
    );
  }
}
