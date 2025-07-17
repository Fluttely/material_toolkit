import 'package:flutter/material.dart';
import 'package:material_design/material_design.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key, this.itemIndex});
  final int? itemIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Details for Item $itemIndex')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(Icons.image, size: 150),
              const SizedBox(height: MaterialSpacing.space24),
              Text(
                'Detailed content for Item $itemIndex',
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
