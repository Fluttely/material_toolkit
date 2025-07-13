import 'package:flutter/material.dart';
import 'package:material_toolkit/material_toolkit.dart';
import 'package:material_toolkit_demo/notifiers/theme_notifier.dart';
import 'package:material_toolkit_demo/widgets/number_field.dart';
import 'package:provider/provider.dart';

/// Widget to edit [DesignTokens] values without losing the focus of the
/// text fields while typing.
class TokensEditor extends StatefulWidget {
  const TokensEditor({super.key});

  @override
  State<TokensEditor> createState() => _TokensEditorState();
}

class _TokensEditorState extends State<TokensEditor> {
  late final TextEditingController spacingsSmallController;
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
    spacingsSmallController = TextEditingController(
      text: notifier.spacings.small.toString(),
    );
    iconSmallController = TextEditingController(
      text: notifier.iconSizes.small.toString(),
    );
    elevationOneController = TextEditingController(
      text: notifier.elevations.small.toString(),
    );
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
    final tokens = theme.tokens;
    final gaps = tokens.gap;
    final themeNotifier = Provider.of<ThemeNotifier>(context, listen: false);

    return Card(
      child: Padding(
        padding: tokens.edgeInsets.all(MaterialSpacing.medium),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text('Tokens Editor', style: theme.textTheme.titleLarge),
            gaps.small,
            NumberField(
              label: 'Spacings small',
              controller: spacingsSmallController,
              onChanged: (value) {
                final v = double.tryParse(value);
                if (v != null) {
                  themeNotifier.updateSpacingsTokens(
                    SpacingTokens(
                      extraSmall: themeNotifier.spacings.extraSmall,
                      small: v,
                      medium: themeNotifier.spacings.medium,
                      large: themeNotifier.spacings.large,
                      extraLarge: themeNotifier.spacings.extraLarge,
                    ),
                  );
                }
              },
            ),
            gaps.small,
            NumberField(
              label: 'IconSize small',
              controller: iconSmallController,
              onChanged: (value) {
                final v = double.tryParse(value);
                if (v != null) {
                  themeNotifier.updateIconSizesTokens(
                    themeNotifier.iconSizes.copyWith(small: v),
                  );
                }
              },
            ),
            gaps.small,
            NumberField(
              label: 'Elevation small',
              controller: elevationOneController,
              onChanged: (value) {
                final v = double.tryParse(value);
                if (v != null) {
                  themeNotifier.updateElevationsTokens(
                    themeNotifier.elevations.copyWith(small: v),
                  );
                }
              },
            ),
            gaps.small,
            NumberField(
              label: 'Duration slow (ms)',
              controller: durationSlowController,
              onChanged: (value) {
                final v = int.tryParse(value);
                if (v != null) {
                  themeNotifier.updateDurationsTokens(
                    DurationTokens(
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
            NumberField(
              label: 'Breakpoint mobile max',
              controller: breakpointMobileMaxController,
              onChanged: (value) {
                final v = double.tryParse(value);
                if (v != null) {
                  themeNotifier.updateBreakpointsTokens(
                    BreakpointTokens(
                      mobile: DesignBreakpoint(
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
            NumberField(
              label: 'BoxShadow small blur',
              controller: boxShadowBlurController,
              onChanged: (value) {
                final v = double.tryParse(value);
                if (v != null) {
                  final small = themeNotifier.boxShadows.small;
                  themeNotifier.updateBoxShadowsTokens(
                    BoxShadowTokens(
                      small: small.copyWith(blurRadius: v),
                      medium: themeNotifier.boxShadows.medium,
                      large: themeNotifier.boxShadows.large,
                    ),
                  );
                }
              },
            ),
            gaps.small,
            NumberField(
              label: 'TextShadow small blur',
              controller: textShadowBlurController,
              onChanged: (value) {
                final v = double.tryParse(value);
                if (v != null) {
                  final small = themeNotifier.textShadows.small;
                  themeNotifier.updateTextShadowsTokens(
                    TextShadowTokens(
                      small:
                          small, // .copyWith(blurRadius: v), // TODO(Kevin): create copyWith feature
                      medium: themeNotifier.textShadows.medium,
                      large: themeNotifier.textShadows.large,
                    ),
                  );
                }
              },
            ),
            gaps.small,
            DropdownButton<FormFactor>(
              value: themeNotifier.formFactor,
              onChanged: (value) {
                if (value != null) {
                  themeNotifier.updateFormFactor(value);
                }
              },
              items: FormFactor.values
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
