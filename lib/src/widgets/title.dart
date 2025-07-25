import 'package:flutter/material.dart';
import 'package:material_design/material_design.dart';

class MaterialTitle extends StatelessWidget {
  const MaterialTitle({
    required this.title,
    this.style = M3TypeScaleToken.titleLarge,
    super.key,
  });

  final String title;
  final M3TypeScaleToken style;

  @override
  Widget build(BuildContext context) {
    return Text(title, style: style.value);
  }
}
