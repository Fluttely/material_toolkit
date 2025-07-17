import 'package:flutter/material.dart';
import 'package:material_design/material_design.dart';
import 'package:material_toolkit/material_toolkit.dart';

class MaterialAnimatedVisibilityShowcase extends StatefulWidget {
  const MaterialAnimatedVisibilityShowcase({super.key});

  @override
  State<MaterialAnimatedVisibilityShowcase> createState() =>
      _MaterialAnimatedVisibilityShowcaseState();
}

class _MaterialAnimatedVisibilityShowcaseState
    extends State<MaterialAnimatedVisibilityShowcase> {
  bool _isCardVisible = true;

  void _toggleVisibility() {
    setState(() {
      _isCardVisible = !_isCardVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Here's our widget in action!
            MaterialAnimatedVisibility(
              isVisible: _isCardVisible,
              incomingToken: MaterialMotion.standardIncoming,
              outgoingToken: MaterialMotion.standardOutgoing,
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(MaterialSpacing.space32),
                  child: Text(
                    'This card fades in and out.',
                    style: Theme.of(context).textTheme.headlineSmall,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            const SizedBox(height: MaterialSpacing.space32),
            FilledButton.tonal(
              onPressed: _toggleVisibility,
              child: Text(_isCardVisible ? 'Hide' : 'Show'),
            ),
          ],
        ),
      ),
    );
  }
}
