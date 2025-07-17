import 'package:flutter/material.dart';
import 'package:material_design/material_design.dart';
import 'package:material_toolkit/material_toolkit.dart'; // Assuming this is your custom toolkit
import 'package:material_toolkit_example/showcase_pages/auxiliar/details_page.dart'; // Assuming this is your custom toolkit
import 'package:material_toolkit_example/theme_provider.dart';
import 'package:provider/provider.dart';

class MaterialPageTransitionsBuilderShowcase extends StatelessWidget {
  const MaterialPageTransitionsBuilderShowcase({super.key});

  @override
  Widget build(BuildContext context) {
    // Watch for the selected transition to rebuild the dropdown
    final themeProvider = context.watch<ThemeProvider>();

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('Select Page Transition Style:'),
        DropdownButton<PageTransitionsBuilder>(
          // Get the value from the provider
          value: themeProvider.selectedTransition,
          items: [
            DropdownMenuItem(
              value: MaterialPageTransitionsBuilder.sharedAxisX,
              child: Text('Shared Axis X'),
            ),
            DropdownMenuItem(
              value: MaterialPageTransitionsBuilder.sharedAxisY,
              child: Text('Shared Axis Y'),
            ),
            DropdownMenuItem(
              value: MaterialPageTransitionsBuilder.sharedAxisZ,
              child: Text('Shared Axis Z'),
            ),
            DropdownMenuItem(
              value: MaterialPageTransitionsBuilder.fadeThrough,
              child: Text('Fade Through'),
            ),
            DropdownMenuItem(
              value: MaterialPageTransitionsBuilder.platformDefault,
              child: Text('Platform Default'),
            ),
          ],
          onChanged: (value) {
            if (value != null) {
              // Call the provider's method to change the state
              // Use context.read inside a callback
              context.read<ThemeProvider>().changeTransition(value);
            }
          },
        ),
        const SizedBox(height: MaterialSpacing.space20),
        FilledButton(
          child: const Text('Push Details Page'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const DetailsPage(),
              ),
            );
          },
        ),
      ],
    );
  }
}
