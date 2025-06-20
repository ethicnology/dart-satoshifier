import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:satoshifier/dummy_widget.dart';

void main() {
  group('DummyWidget', () {
    testWidgets('renders with initial counter value of 0', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        const MaterialApp(home: Scaffold(body: DummyWidget())),
      );

      expect(find.text('Counter: 0'), findsOneWidget);
      expect(find.text('Increment'), findsOneWidget);
    });

    testWidgets('increments counter when button is pressed', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        const MaterialApp(home: Scaffold(body: DummyWidget())),
      );

      expect(find.text('Counter: 0'), findsOneWidget);

      await tester.tap(find.text('Increment'));
      await tester.pump();

      expect(find.text('Counter: 1'), findsOneWidget);
      expect(find.text('Counter: 0'), findsNothing);
    });
  });
}
