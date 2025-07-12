import 'package:flutter/material.dart';
import 'package:material_toolkit/material_toolkit.dart';

class GroupCard extends StatelessWidget {
  final String title;
  final List<Widget> children;

  const GroupCard({
    super.key,
    required this.title,
    required this.children,
  });

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
        MaterialSpacings.semiLarge,
        child: Align(
          alignment: Alignment.center,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
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
