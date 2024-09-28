import 'package:example/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(
      const ProviderScope(
        child: App(initialValue: 3),
      ),
    );

    expect(find.textContaining('3'), findsOneWidget);

    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    expect(find.textContaining('3'), findsNothing);
    expect(find.textContaining('4'), findsOneWidget);

    await tester.tap(find.byIcon(Icons.refresh));
    await tester.pump();

    expect(find.textContaining('4'), findsNothing);
    expect(find.textContaining('0'), findsOneWidget);
  });
}
