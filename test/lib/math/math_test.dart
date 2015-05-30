import 'package:test/test.dart';
import 'package:gnome_tutorial/math/math.dart';

main() {
  // test that doesn't require a browser
  group('vm test', () {
    test('math', () {
      expect(Math.doubleIt(2), equals(4));
    });
  });
}