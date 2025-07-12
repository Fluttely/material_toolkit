import 'package:flutter/material.dart';

class NumberField extends StatelessWidget {
  final String? label;
  final TextEditingController controller;
  final ValueChanged<String> onChanged;

  const NumberField({
    super.key,
    this.label,
    required this.controller,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 32,
      child: TextField(
        decoration: InputDecoration(labelText: label),
        keyboardType: TextInputType.number,
        controller: controller,
        onChanged: onChanged,
      ),
    );
  }
}
