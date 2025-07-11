import 'package:flutter/material.dart';
import 'package:material_toolkit/material_toolkit.dart';
import 'package:provider/provider.dart';

import '../notifiers/theme_notifier.dart';

/// Widget to edit [XDesignTokens] values without losing the focus of the
/// text fields while typing.
class TokensEditor extends StatefulWidget {
  const TokensEditor({super.key});

  @override
  State<TokensEditor> createState() => _TokensEditorState();
}

class _TokensEditorState extends State<TokensEditor> {
  late final TextEditingController spacingsSmallController;
  late final TextEditingController radiiExtraSmallController;
  late final TextEditingController iconSmallController;
  late final TextEditingController elevationOneController;
  late final TextEditingController durationSlowController;
  late final TextEditingController breakpointMobileMaxController;
  late final TextEditingController boxShadowBlurController;
  late final TextEditingController textShadowBlurController;

  @override
  void initState() {
    super.initState();
    final notifier = context.read<ThemeNotifier>();
    spacingsSmallController = TextEditingController(text: notifier.spacings.small.toString());
    radiiExtraSmallController = TextEditingController(text: notifier.radiiTokens.extraSmall.toString());
    iconSmallController = TextEditingController(text: notifier.iconSizes.small.toString());
    elevationOneController = TextEditingController(text: notifier.elevations.level1.toString());
    durationSlowController = TextEditingController(
      text: notifier.durations.slow.inMilliseconds.toString(),
    );
    breakpointMobileMaxController = TextEditingController(
      text: notifier.breakpoints.mobile.maxWidth.toString(),
    );
    boxShadowBlurController = TextEditingController(
      text: notifier.boxShadows.small.blurRadius.toString(),
    );
    textShadowBlurController = TextEditingController(
      text: notifier.textShadows.small.blurRadius.toString(),
    );
  }

  @override
  void dispose() {
    spacingsSmallController.dispose();
    radiiExtraSmallController.dispose();
    iconSmallController.dispose();
    elevationOneController.dispose();
    durationSlowController.dispose();
    breakpointMobileMaxController.dispose();
    boxShadowBlurController.dispose();
    textShadowBlurController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final tokens = theme.extension<XDesignTokens>()!;
    final gaps = tokens.gaps;
    final themeNotifier = Provider.of<ThemeNotifier>(context, listen: false);

    return Card(
      child: Padding(
        padding: tokens.edgeInsets.all(XSpacings.medium),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text('Tokens Editor', style: theme.textTheme.titleLarge),
            gaps.small,
            _NumberField(
              label: 'Spacings small',
              controller: spacingsSmallController,
              onChanged: (value) {
                final v = double.tryParse(value);
                if (v != null) {
                  themeNotifier.updateSpacingsData(
                    XSpacingsTokens(
                      superSmall: themeNotifier.spacings.superSmall,
                      extraSmall: themeNotifier.spacings.extraSmall,
                      small: v,
                      semiSmall: themeNotifier.spacings.semiSmall,
                      medium: themeNotifier.spacings.medium,
                      semiLarge: themeNotifier.spacings.semiLarge,
                      large: themeNotifier.spacings.large,
                      extraLarge: themeNotifier.spacings.extraLarge,
                      superLarge: themeNotifier.spacings.superLarge,
                    ),
                  );
                }
              },
            ),
            gaps.small,
            _NumberField(
              label: 'Radii extraSmall',
              controller: radiiExtraSmallController,
              onChanged: (value) {
                final v = double.tryParse(value);
                if (v != null) {
                  themeNotifier.updateRadiiTokens(
                    themeNotifier.radiiTokens.copyWith(extraSmall: v),
                  );
                }
              },
            ),
            gaps.small,
            _NumberField(
              label: 'IconSize small',
              controller: iconSmallController,
              onChanged: (value) {
                final v = double.tryParse(value);
                if (v != null) {
                  themeNotifier.updateIconSizesData(
                    XIconSizesTokens(
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
              controller: elevationOneController,
              onChanged: (value) {
                final v = double.tryParse(value);
                if (v != null) {
                  themeNotifier.updateElevationsData(
                    XElevationsTokens(
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
              controller: durationSlowController,
              onChanged: (value) {
                final v = int.tryParse(value);
                if (v != null) {
                  themeNotifier.updateDurationsData(
                    XDurationsTokens(
                      areAnimationEnabled: themeNotifier.durations.areAnimationEnabled,
                      slow: Duration(milliseconds: v),
                      regular: themeNotifier.durations.regular,
                      quick: themeNotifier.durations.quick,
                    ),
                  );
                }
              },
            ),
            gaps.small,
            _NumberField(
              label: 'Breakpoint mobile max',
              controller: breakpointMobileMaxController,
              onChanged: (value) {
                final v = double.tryParse(value);
                if (v != null) {
                  themeNotifier.updateBreakpointsData(
                    XBreakpointsTokens(
                      mobile: XBreakpoint(
                        minWidth: themeNotifier.breakpoints.mobile.minWidth,
                        maxWidth: v,
                      ),
                      tablet: themeNotifier.breakpoints.tablet,
                      desktop: themeNotifier.breakpoints.desktop,
                      infinity: themeNotifier.breakpoints.infinity,
                    ),
                  );
                }
              },
            ),
            gaps.small,
            _NumberField(
              label: 'BoxShadow small blur',
              controller: boxShadowBlurController,
              onChanged: (value) {
                final v = double.tryParse(value);
                if (v != null) {
                  final small = themeNotifier.boxShadows.small;
                  themeNotifier.updateBoxShadowsData(
                    XBoxShadowsTokens(
                      small: small.copyWith(blurRadius: v),
                      medium: themeNotifier.boxShadows.medium,
                      large: themeNotifier.boxShadows.large,
                    ),
                  );
                }
              },
            ),
            gaps.small,
            _NumberField(
              label: 'TextShadow small blur',
              controller: textShadowBlurController,
              onChanged: (value) {
                final v = double.tryParse(value);
                if (v != null) {
                  final small = themeNotifier.textShadows.small;
                  themeNotifier.updateTextShadowsData(
                    XTextShadowsTokens(
                      small: small, // .copyWith(blurRadius: v), // TODO(Kevin): create copyWith feature
                      medium: themeNotifier.textShadows.medium,
                      large: themeNotifier.textShadows.large,
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
  final TextEditingController controller;
  final ValueChanged<String> onChanged;

  const _NumberField({
    required this.label,
    required this.controller,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(labelText: label),
      keyboardType: TextInputType.number,
      controller: controller,
      onChanged: onChanged,
    );
  }
}
