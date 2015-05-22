@TestOn("browser") // only run this test in a browser, otherwise ignore it

import 'dart:html';
import 'dart:async';
import 'package:test/test.dart';
import 'package:gnome_tutorial/sleepy/sleepy.dart';

main() {
  // test that requires a browser
  group('browser test', () {
    var sleepy;

    setUp(() {
      sleepy = new Sleepy();
    });

    // test changes to the DOM
    test('wake() should change the text of #RipVanWinkle', ()  {
      expect(querySelector("#RipVanWinkle").text, equals("original text"));
      sleepy.wake();
      expect(querySelector("#RipVanWinkle").text, equals("Wake up, sleepyhead"));
    });

    // uses async/await to test asynchronous events
    test('snore() should return multiple z', () async {
      Stream snore = sleepy.snoring(5);
      var concat = await snore.join();
      expect(concat, equals("zzzzz"));
    });
  });
}
