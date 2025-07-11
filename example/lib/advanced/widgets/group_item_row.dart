import 'package:flutter/widgets.dart';

class GroupItemRow extends StatelessWidget {
  final List<Widget> children;

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
