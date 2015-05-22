import 'package:test/test.dart';
import 'package:gnome_tutorial/math/math.dart';

main() {
  // test that doesn't require a browser
  group('vm test', () {
    test('math', () {
      expect(easy4(), equals(4));
    });
  });
}