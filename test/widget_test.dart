import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:app_tests_lesson/counter_screen.dart';
void main() {
  testWidgets('CounterApp UI ', (WidgetTester tester) async {
    await tester.pumpWidget(CounterApp());

    expect(find.text('Counter: 0'), findsOneWidget);

    await tester.tap(find.byKey(Key('incrementButton')));
    await tester.pump();
    expect(find.text('Counter: 1'), findsOneWidget);

    await tester.tap(find.byKey(Key('decrementButton')));
    await tester.pump();
    expect(find.text('Counter: 0'), findsOneWidget);
  });
}
