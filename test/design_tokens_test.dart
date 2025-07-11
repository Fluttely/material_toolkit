import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:material_toolkit/material_toolkit.dart';

void main() {
  testWidgets('DesignTokens.of returns provided data', (tester) async {
    final tokens = XDesignTokens();
    await tester.pumpWidget(
      XDesign(
        data: tokens,
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
