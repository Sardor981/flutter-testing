import 'package:app_tests_lesson/counter_screen.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:flutter/material.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('Counter increments 10 times', (WidgetTester tester) async {
    await tester.pumpWidget(CounterApp());

    for (int i = 0; i < 10; i++) {
      await tester.tap(find.byKey(Key('incrementButton')));
      await tester.pumpAndSettle();
    }

    expect(find.text('Counter: 10'), findsOneWidget);
  });
}
