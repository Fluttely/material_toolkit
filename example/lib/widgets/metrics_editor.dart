import 'package:flutter/material.dart';
import 'package:material_toolkit/material_toolkit.dart';
import 'package:provider/provider.dart';

import '../notifiers/theme_notifier.dart';

/// Widget that exposes simple setters for [XMetricsData] fields.
class MetricsEditor extends StatelessWidget {
  const MetricsEditor({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    final metrics = theme.extension<XMetricsData>()!;
    final gaps = metrics.gaps;

    final themeNotifier = Provider.of<ThemeNotifier>(context);

    return Card(
      child: Padding(
        padding: metrics.padding.all(XSpaces.medium),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text('Metrics Editor', style: textTheme.titleLarge),
            gaps.small,
            _NumberField(
              label: 'Spaces small',
              initial: themeNotifier.spaces.small.toString(),
              onChanged: (value) {
                final v = double.tryParse(value);
                if (v != null) {
                  themeNotifier.updateSpacesData(
                    XSpacesData(
                      superSmall: themeNotifier.spaces.superSmall,
                      extraSmall: themeNotifier.spaces.extraSmall,
                      small: v,
                      semiSmall: themeNotifier.spaces.semiSmall,
                      medium: themeNotifier.spaces.medium,
                      semiLarge: themeNotifier.spaces.semiLarge,
                      large: themeNotifier.spaces.large,
                      extraLarge: themeNotifier.spaces.extraLarge,
                      superLarge: themeNotifier.spaces.superLarge,
                    ),
                  );
                }
              },
            ),
            gaps.small,
            _NumberField(
              label: 'Radii extraSmall',
              initial: themeNotifier.radiiData.extraSmall.toString(),
              onChanged: (value) {
                final v = double.tryParse(value);
                if (v != null) {
                  themeNotifier.updateRadiiData(
                    themeNotifier.radiiData.copyWith(extraSmall: v),
                  );
                }
              },
            ),
            gaps.small,
            _NumberField(
              label: 'IconSize small',
              initial: themeNotifier.iconSizes.small.toString(),
              onChanged: (value) {
                final v = double.tryParse(value);
                if (v != null) {
                  themeNotifier.updateIconSizesData(
                    XIconSizesData(
                      extraSmall: themeNotifier.iconSizes.extraSmall,
                      small: v,
                      semiSmall: themeNotifier.iconSizes.semiSmall,
                      medium: themeNotifier.iconSizes.medium,
                      semiLarge: themeNotifier.iconSizes.semiLarge,
                      large: themeNotifier.iconSizes.large,
                      extraLarge: themeNotifier.iconSizes.extraLarge,
                      superLarge: themeNotifier.iconSizes.superLarge,
                    ),
                  );
                }
              },
            ),
            gaps.small,
            _NumberField(
              label: 'Elevation level1',
              initial: themeNotifier.elevations.level1.toString(),
              onChanged: (value) {
                final v = double.tryParse(value);
                if (v != null) {
                  themeNotifier.updateElevationsData(
                    XElevationsData(
                      level1: v,
                      level2: themeNotifier.elevations.level2,
                      level3: themeNotifier.elevations.level3,
                      level4: themeNotifier.elevations.level4,
                      level5: themeNotifier.elevations.level5,
                    ),
                  );
                }
              },
            ),
            gaps.small,
            _NumberField(
              label: 'Duration slow (ms)',
              initial: themeNotifier.durations.slow.inMilliseconds.toString(),
              onChanged: (value) {
                final v = int.tryParse(value);
                if (v != null) {
                  themeNotifier.updateDurationsData(
                    XDurationsData(
                      areAnimationEnabled:
                          themeNotifier.durations.areAnimationEnabled,
                      slow: Duration(milliseconds: v),
                      regular: themeNotifier.durations.regular,
                      quick: themeNotifier.durations.quick,
                    ),
                  );
                }
              },
            ),
            gaps.small,
            DropdownButton<XFormFactor>(
              value: themeNotifier.formFactor,
              onChanged: (value) {
                if (value != null) {
                  themeNotifier.updateFormFactor(value);
                }
              },
              items: XFormFactor.values
                  .map(
                    (e) => DropdownMenuItem(
                      value: e,
                      child: Text(e.toString().split('.').last),
                    ),
                  )
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}

class _NumberField extends StatelessWidget {
  final String label;
  final String initial;
  final ValueChanged<String> onChanged;

  const _NumberField({
    required this.label,
    required this.initial,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    final controller = TextEditingController(text: initial);
    return TextField(
      decoration: InputDecoration(labelText: label),
      keyboardType: TextInputType.number,
      onChanged: onChanged,
      controller: controller,
    );
  }
}

