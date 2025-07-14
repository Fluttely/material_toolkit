import 'package:flutter/material.dart';
import 'package:material_toolkit/material_toolkit.dart';

/// An extension on [BuildContext] to easily access the [DesignTokens].
extension DesignTokensContextExtension on BuildContext {
  /// Returns the [DesignTokens] from the nearest [Theme].
  DesignTokens get tokens {
    final tokens = Theme.of(this).extension<DesignTokens>();
    assert(tokens != null, 'DesignTokens not found in Theme extensions');
    return tokens!;
  }
}

/// An extension on [ThemeData] to easily access the [DesignTokens].
extension DesignTokensThemeExtension on ThemeData {
  /// Returns the [DesignTokens] from the theme extensions.
  DesignTokens get tokens {
    final tokens = extension<DesignTokens>();
    assert(tokens != null, 'DesignTokens not found in Theme extensions');
    return tokens!;
  }
}
