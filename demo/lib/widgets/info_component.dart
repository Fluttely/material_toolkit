import 'package:flutter/material.dart';

/// A widget that displays an info icon with a tooltip.
class InfoComponent extends StatelessWidget {
  /// The information to display in the tooltip.
  final String info;

  /// Creates an [InfoComponent].
  const InfoComponent({
    super.key,
    required this.info,
  });

  @override
  Widget build(BuildContext context) {
    return
        // const Icon(Icons.info_outline, size: 16);

        Tooltip(
      message: info,
      child: const Icon(Icons.info_outline, size: 16),
      // IconButton(
      //   icon: const Icon(Icons.info_outline),
      //   onPressed: () {
      //     print('Border Radius Copiado!');
      //   },
      // ),
    );
  }
}
