/// Tests related to [DesignProvider] and [DesignTokens].
///
/// This file verifies that the design tokens provided to [DesignProvider]
/// are accessible through the widget tree and the [Theme] extension.
library;

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:material_toolkit/material_toolkit.dart';

void main() {
  testWidgets('DesignTokens.of returns provided data', (tester) async {
    final tokens = DesignTokens();
    await tester.pumpWidget(
      DesignProvider(
        tokens: tokens,
        child: MaterialApp(
          theme: ThemeData(
            extensions: [tokens],
          ),
          home: const SizedBox(),
        ),
      ),
    );

    final context = tester.element(find.byType(SizedBox));
    expect(DesignProvider.of(context), equals(tokens));
    expect(Theme.of(context).extension<DesignTokens>(), equals(tokens));
  });
}
