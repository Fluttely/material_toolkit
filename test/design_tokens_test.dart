import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:material_toolkit/material_toolkit.dart';

void main() {
  testWidgets('DesignTokens.of returns provided data', (tester) async {
    final data = DesignTokensData();
    await tester.pumpWidget(
      DesignTokens(
        data: data,
        child: MaterialApp(
          theme: ThemeData(
            extensions: [data],
          ),
          home: const SizedBox(),
        ),
      ),
    );

    final context = tester.element(find.byType(SizedBox));
    expect(DesignTokens.of(context), equals(data));
    expect(Theme.of(context).extension<DesignTokensData>(), equals(data));
  });
}
