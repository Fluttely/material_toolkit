// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class InfoComponent extends StatelessWidget {
  final String info;

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
