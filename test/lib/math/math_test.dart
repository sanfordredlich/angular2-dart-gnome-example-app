import 'package:test/test.dart';
import 'package:angular2_gnome_example_app/math/math.dart';

main() {
  // test that doesn't require a browser
  group('vm test', () {
    test('math', () {
      expect(Math.doubleIt(2), equals(4));
    });
  });
}