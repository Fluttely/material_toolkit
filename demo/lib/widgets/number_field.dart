import 'package:flutter/material.dart';

/// A text field for entering numbers.
class NumberField extends StatelessWidget {
  /// The label to display above the text field.
  final String? label;

  /// The controller for the text field.
  final TextEditingController controller;

  /// Called when the value of the text field changes.
  final ValueChanged<String> onChanged;

  /// Creates a [NumberField].
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
