// Import the animations package.
import 'package:flutter/material.dart';
import 'package:material_design/material_design.dart';
import 'package:material_toolkit/material_toolkit.dart';
import 'package:material_toolkit_example/showcase_pages/auxiliar/details_page.dart';

class MaterialContainerTransformShowcase extends StatefulWidget {
  const MaterialContainerTransformShowcase({super.key});

  @override
  State<MaterialContainerTransformShowcase> createState() =>
      _MaterialContainerTransformShowcaseState();
}

class _MaterialContainerTransformShowcaseState
    extends State<MaterialContainerTransformShowcase> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: List.generate(2, (index) {
          return MaterialContainerTransform(
            duration: MaterialMotion.emphasized.duration,
            closedBuilder: (context, openContainer) {
              return Card(
                margin: EdgeInsets.all(MaterialSpacing.space8),
                child: ListTile(
                  leading: Icon(Icons.image, size: MaterialIconSize.standard),
                  title: Text('List Item ${index + 1}'),
                  subtitle: const Text('Tap to see details'),
                  onTap: openContainer,
                ),
              );
            },
            openBuilder: (context, closeContainer) {
              return DetailsPage(itemIndex: index + 1);
            },
          );
        }),
      ),
    );
  }
}

// class PlaceholderPage extends StatelessWidget {
//   const PlaceholderPage({super.key, required this.title});
//   final String title;

//   @override
//   Widget build(BuildContext context) {
//     final textTheme = Theme.of(context).textTheme;

//     return Center(
//       child: Text(title, style: textTheme.headlineLarge),
//     );
//   }
// }
