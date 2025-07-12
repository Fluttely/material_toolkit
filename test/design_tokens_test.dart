/// Tests related to [XDesign] and [XDesignTokens].
///
/// This file verifies that the design tokens provided to [XDesign]
/// are accessible through the widget tree and the [Theme] extension.
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:material_toolkit/material_toolkit.dart';

void main() {
  // Ensures that the inherited widget exposes the same token instance
  // both through the [XDesign.of] helper and as a [Theme] extension.
  testWidgets('DesignTokens.of returns provided data', (tester) async {
    final tokens = XDesignTokens();
    await tester.pumpWidget(
      XDesign(
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
    expect(XDesign.of(context), equals(tokens));
    expect(Theme.of(context).extension<XDesignTokens>(), equals(tokens));
  });
}
