import 'package:flutter/material.dart';
import 'package:material_toolkit/material_toolkit.dart';
import 'package:material_toolkit_example/showcase_pages/auxiliar/details_page.dart'; // Assuming this is your custom toolkit

class RouteAwareContainerTransformShowcase extends StatelessWidget {
  const RouteAwareContainerTransformShowcase({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        RouteAwareContainerTransform(
          page: const DetailsPage(),
          closedBuilder: (context, openContainer) {
            return FloatingActionButton.extended(
              onPressed: openContainer,
              label: const Text(
                "Open with RouteAwareContainerTransform (Widget)",
              ),
              icon: const Icon(Icons.open_in_new),
            );
          },
        ),
      ],
    );
  }
}
