import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_unit_test/counter.dart';

void main() {
  // Pretest
  // setUp(() => null);
  // setUpAll(() => null);

  // setup is called before every test
  // setupAll is called before all the test

  // setUp -> test1 -> setup -> test2 -> setup -> test3
  // setUpAll -> test1 -> test2 -> test3
  late Counter counter;

  setUp(() {
    counter = Counter();
  });

  // testing
  group(
    "Counter Class -",
    () {
      // given when then   ....this is the convention to follow when writing the description in test
      test(
        "given counter class when instantiated then the value of count should be 0",
        () {
          // Arrange

          // Act
          final val = counter.counter;
          // Assert
          expect(val, 0);
        },
      );

      test(
        'given counter class when it is incremented then the value of counter should be 1',
        () {
          counter.increaseCount();

          final val = counter.counter;

          expect(val, 1);
        },
      );

      test(
        'given counter class when it is decreased then the value of counter should be -1',
        () {
          counter.decreaseCount();

          final val = counter.counter;

          expect(val, -1);
        },
      );

      // Post Test
      // tearDown(() => null);
      // tearDownAll(() => null);

      // tearDown is called after every test
      // tearDown is called only once after all the test

      // test1 -> tearDown -> test2 -> tearDown -> test3 -> tearDown
      // test1 -> test2 -> test3 -> tearDownAll
    },
  );
}
