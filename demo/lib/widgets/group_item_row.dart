import 'package:flutter/widgets.dart';

/// A widget that displays a row of widgets for a group item.
class GroupItemRow extends StatelessWidget {
  /// The widgets to display in the row.
  final List<Widget> children;

  /// Creates a [GroupItemRow].
  const GroupItemRow({
    super.key,
    required this.children,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: children,
    );
  }
}
