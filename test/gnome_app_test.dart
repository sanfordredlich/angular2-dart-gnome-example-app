@TestOn("browser") // only run this test in a browser, otherwise ignore it

import 'dart:html';
import 'package:test/test.dart';
import 'package:gnome_tutorial/gnome_app.dart';


main() {
//  var gnomeApp;
//
//  setUp(() {
//    gnomeApp = new GnomeApp();
//  });
//
//  // test that requires a browser
//  group('test that needs the DOM so it requires a browser', () {
//    setUp(() {
//      querySelector("#RipVanWinkle").text = "original text";
//    });
//
//    // test changes to the DOM
//    test('wake() should set isSleeiping to false', () {
//      expect(querySelector("#RipVanWinkle").text, equals("original text"));
//      gnomeApp.wake();
//      expect(querySelector("#RipVanWinkle").text, equals("Whoa, I need coffee!"));
//    });
//
//    test('sleep() should change the text of #RipVanWinkle to sleeping', () {
//      expect(querySelector("#RipVanWinkle").text, equals("original text"));
//      gnomeApp.sleep();
//      expect(querySelector("#RipVanWinkle").text, equals("So conscious..."));
//    });
//  });
}