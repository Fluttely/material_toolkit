import 'package:flutter/material.dart';
import 'package:material_toolkit/material_toolkit.dart';

/// A card that displays a group of widgets with a title.
class GroupCard extends StatelessWidget {
  /// Creates a [GroupCard].
  const GroupCard({
    required this.title,
    required this.children,
    super.key,
  });

  /// The title of the card.
  final String title;

  /// The widgets to display in the card.
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final colorScheme = theme.colorScheme;

    final tokens = theme.tokens;
    final padding = tokens.padding;
    final gaps = tokens.gap;

    return Card(
      color: colorScheme.surfaceContainerLow,
      elevation: 0,
      child: padding.all(
        SpacingToken.large,
        child: Align(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                title,
                style: textTheme.titleLarge,
              ),
              gaps.large,
              SingleChildScrollView(
                child: Column(
                  // scrollDirection: Axis.vertical,
                  // shrinkWrap: true,
                  // mainAxisSize: MainAxisSize.min,
                  children: children,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
