import 'package:example/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets(
    'Counter increments and reset smoke test',
    (WidgetTester tester) async {
      await tester.pumpWidget(const MyApp(initialValue: 3));

      expect(find.text('3'), findsOneWidget);

      await tester.tap(find.byIcon(Icons.add));
      await tester.pump();

      expect(find.text('3'), findsNothing);
      expect(find.text('4'), findsOneWidget);

      await tester.tap(find.byIcon(Icons.refresh));
      await tester.pump();

      expect(find.text('4'), findsNothing);
      expect(find.text('0'), findsOneWidget);
    },
  );
}
