import 'package:flutter/material.dart';
import 'package:material_design/material_design.dart';
import 'package:material_toolkit/material_toolkit.dart';

class MaterialSharedAxisSwitcherShowcase extends StatefulWidget {
  const MaterialSharedAxisSwitcherShowcase({super.key});

  @override
  State<MaterialSharedAxisSwitcherShowcase> createState() =>
      _MaterialSharedAxisSwitcherShowcaseState();
}

class _MaterialSharedAxisSwitcherShowcaseState
    extends State<MaterialSharedAxisSwitcherShowcase> {
  bool _showSuccessScreen = false;

  void _submitForm() {
    setState(() {
      _showSuccessScreen = true;
    });
  }

  void _goBack() {
    setState(() {
      _showSuccessScreen = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(MaterialSpacing.space24),
      // HERE'S THE MAGIC!
      // Our transition widget wraps the logic that decides which
      // screen (widget) to show.
      child: MaterialSharedAxisSwitcher(
        token: MaterialMotion.emphasized,
        // The `child` that is dynamically swapped.
        // The `ValueKey` is essential for the `AnimatedSwitcher` to work.
        child: _showSuccessScreen
            ? SuccessView(
                key: const ValueKey('SuccessView'),
                onGoBack: _goBack,
              )
            : FormView(
                key: const ValueKey('FormView'),
                onSubmit: _submitForm,
              ),
      ),
    );
  }
}

class FormView extends StatelessWidget {
  const FormView({super.key, required this.onSubmit});
  final VoidCallback onSubmit;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Click on submit',
          style: textTheme.headlineMedium,
        ),
        const SizedBox(height: MaterialSpacing.space24),
        const TextField(
          decoration: InputDecoration(
            labelText: 'Name',
            border: OutlineInputBorder(),
          ),
        ),
        const SizedBox(height: MaterialSpacing.space16),
        const TextField(
          decoration: InputDecoration(
            labelText: 'Email',
            border: OutlineInputBorder(),
          ),
        ),
        const SizedBox(height: MaterialSpacing.space32),
        FilledButton(onPressed: onSubmit, child: const Text('Submit')),
      ],
    );
  }
}

class SuccessView extends StatelessWidget {
  const SuccessView({super.key, required this.onGoBack});
  final VoidCallback onGoBack;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.check_circle_outline,
            color: colorScheme.primary,
            size: 80,
          ),
          const SizedBox(height: MaterialSpacing.space24),
          Text(
            'Submitted Successfully!',
            style: textTheme.headlineMedium,
          ),
          const SizedBox(height: MaterialSpacing.space32),
          TextButton(onPressed: onGoBack, child: const Text('Go Back')),
        ],
      ),
    );
  }
}
