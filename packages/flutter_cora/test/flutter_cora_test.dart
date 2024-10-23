import 'package:flutter/material.dart';
import 'package:flutter_cora/flutter_cora.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('create cora view and state', (tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: _TestView(text: 'cora view'),
      ),
    );
    expect(find.text('cora view'), findsOneWidget);
  });
}

class _TestView extends CoraView<_TestState> {
  const _TestView({required this.text});

  final String text;

  @override
  _TestState createState() => _TestState();

  @override
  Widget build(BuildContext context, _TestState state) {
    return Scaffold(
      body: Text(text),
    );
  }
}

class _TestState extends CoraState<_TestView> {}
