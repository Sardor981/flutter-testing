import 'package:app_tests_lesson/counter.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test(
    "counter increment",
    () {
      final counter = Counter();
      counter.increment();
      expect(counter.value, 1);
    },
  );
   test(
    "counter decrement",
    () {
      final counter = Counter();
      counter.decrement();
      expect(counter.value, 0);
    },
  );
}
