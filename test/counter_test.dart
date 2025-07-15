import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_unit_test/counter.dart';

void main() {
  // given when then   ....this is the convention to follow when writing the description in test
  test(
    "given counter class when instantiated then the value of count should be 0",
    () {
      // Arrange
      final counter = Counter();
      // Act
      final val = counter.counter;
      // Assert
      expect(val, 0);
    },
  );

  test(
      'given counter class when it is incremented then the value of counter should be 1',
      () {
    final counter = Counter();

    counter.increaseCount();

    final val = counter.counter;

    expect(val, 1);
  });
}
