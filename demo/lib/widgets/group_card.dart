import 'package:flutter/material.dart';
import 'package:material_toolkit/material_toolkit.dart';

class GroupCard extends StatelessWidget {
  const GroupCard({
    required this.title,
    required this.children,
    super.key,
  });
  final String title;
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
        MaterialSpacing.large,
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
